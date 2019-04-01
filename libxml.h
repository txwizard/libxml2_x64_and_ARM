/*
 * libxml.h: internal header only used during the compilation of libxml
 *
 * See COPYRIGHT for the status of this software.
 *
 * Author: breese@users.sourceforge.net

	Revision History, added by dagray@p6c.com

	2019/03/26 DAG Hide deprecated header winsock.h. See note just inside the guard block.
 */

#ifndef __XML_LIBXML_H__
#define __XML_LIBXML_H__

//	----------------------------------------------------------------------------
//	There are two set of mutually exclusive Windows Sockets headers, winsock.h
//	and winsock2.h, both of which assume that windows.h is already included. The
//	significance of this is that when windows.h is included, it sets flags such
//	that winsock2.h prevails, while winsock.h is set aside as deprecated. Since
//	this library header omits windows.h, these safeguards don't exist, and must
//	be provided to avoid many objects being multiply defined, raising fatal
//	compiler exceptions.
//
//	The most expedient way to achive the objective desribed above is by defining
//	_WINSOCKAPI_ when _WIN32 is defined.
//	----------------------------------------------------------------------------

#if defined ( _WIN32 )
	#if !defined ( _WINSOCKAPI_ )
		#define _WINSOCKAPI_
	#endif	/* #if !defined ( _WINSOCKAPI_ ) */
#endif	/* #if defined ( _WIN32 ) */

#include <libxml/xmlstring.h>

#ifndef NO_LARGEFILE_SOURCE
#ifndef _LARGEFILE_SOURCE
#define _LARGEFILE_SOURCE
#endif	/* #ifndef _LARGEFILE_SOURCE */
#ifndef _FILE_OFFSET_BITS
#define _FILE_OFFSET_BITS 64
#endif	/* #ifndef _FILE_OFFSET_BITS */
#endif	/* #ifndef NO_LARGEFILE_SOURCE */

#if defined ( macintosh )
#include "config-mac.h"

#elif defined ( _WIN32_WCE )
/*
 * Windows CE compatibility definitions and functions
 * This is needed to compile libxml2 for Windows CE.
 * At least I tested it with WinCE 5.0 for Emulator and WinCE 4.2/SH4 target
 */
#include <win32config.h>
#include <libxml/xmlversion.h>

#elif defined ( _WIN32 )
/*
 * As usual, Win32 is "special."
 */
#include <win32config.h>
#include <libxml/xmlversion.h>

#else
/*
 * Currently supported platforms use either autoconf or
 * copy to config.h own "preset" configuration file.
 * As result ifdef HAVE_CONFIG_H is omited here.
 */
#include "config.h"
#include <libxml/xmlversion.h>
#endif	/* #if defined ( macintosh ) etc., etc., etc.  */

#if defined ( __Lynx__ )
#include <stdio.h> /* pull definition of size_t */
#include <varargs.h>
int snprintf ( char *, size_t, const char *, ... );
int vfprintf ( FILE *, const char *, va_list );
#endif	/* #if defined ( __Lynx__ ) */

#ifndef WITH_TRIO
#include <stdio.h>
#else	/* #ifndef WITH_TRIO */
/**
 * TRIO_REPLACE_STDIO:
 *
 * This macro is defined if teh trio string formatting functions are to
 * be used instead of the default stdio ones.
 */
#define TRIO_REPLACE_STDIO
#include "trio.h"
#endif	/* #ifndef WITH_TRIO */

#if defined ( __clang__ ) || \
    ( defined ( __GNUC__ ) && ( __GNUC__ * 100 + __GNUC_MINOR__ >= 406 ) )
#define XML_IGNORE_PEDANTIC_WARNINGS \
    _Pragma("GCC diagnostic push") \
    _Pragma("GCC diagnostic ignored \"-Wpedantic\"")
#define XML_POP_WARNINGS \
    _Pragma("GCC diagnostic pop")
#else
#define XML_IGNORE_PEDANTIC_WARNINGS
#define XML_POP_WARNINGS
#endif	/* #if defined ( __clang__ ) ||  ...  */

/*
 * Internal variable indicating if a callback has been registered for
 * node creation/destruction. It avoids spending a lot of time in locking
 * function while checking if the callback exists.
 */
extern int __xmlRegisterCallbacks;
/*
 * internal error reporting routines, shared but not part of the API.
 */
void __xmlIOErr
(
	int          domain,
	int          code,
	const char * extra
);

void __xmlLoaderErr
(
	void *ctx,
	const char *msg,
	const char *filename
) LIBXML_ATTR_FORMAT(2,0);

#ifdef LIBXML_HTML_ENABLED
/*
 * internal function of HTML parser needed for xmlParseInNodeContext
 * but not part of the API
 */
void __htmlParseContent ( void *ctx );
#endif	/* #ifdef LIBXML_HTML_ENABLED */

/*
 * internal global initialization critical section routines.
 */
void __xmlGlobalInitMutexLock ( void );
void __xmlGlobalInitMutexUnlock ( void );
void __xmlGlobalInitMutexDestroy ( void );

int __xmlInitializeDict ( void );

#if defined ( HAVE_RAND ) && defined ( HAVE_SRAND ) && defined ( HAVE_TIME )
/*
 * internal thread safe random function
 */
int __xmlRandom ( void );
#endif	/* #if defined ( HAVE_RAND ) && defined ( HAVE_SRAND ) && defined ( HAVE_TIME ) */

XMLPUBFUN xmlChar * XMLCALL xmlEscapeFormatString ( xmlChar **msg );
int xmlInputReadCallbackNop
(
	void *context,
	char *buffer,
	int len
);

#ifdef IN_LIBXML
#ifdef __GNUC__
#ifdef PIC
#ifdef __linux__
#if ( __GNUC__ == 3 && __GNUC_MINOR__ >= 3 ) || ( __GNUC__ > 3 )
#include "elfgcchack.h"
#endif	/* #if ( __GNUC__ == 3 && __GNUC_MINOR__ >= 3 ) || ( __GNUC__ > 3 ) */
#endif	/* #ifdef __linux__  */
#endif	/* #ifdef PIC        */
#endif	/* #ifdef __GNUC__   */
#endif	/* #ifdef IN_LIBXML  */
#if !defined ( PIC ) && !defined ( NOLIBTOOL ) && !defined ( LIBXML_STATIC )
#  define LIBXML_STATIC
#endif /* #if !defined ( PIC ) && !defined ( NOLIBTOOL ) && !defined ( LIBXML_STATIC ) */
#endif /* ! __XML_LIBXML_H__ */
