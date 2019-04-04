/*
 *  ============================================================================
 *
 *  Name:               runsuiteVersion.h
 *
 *  Summary:            compile-time version informations
 *
 *  Description:        compile-time version informations for the XML library,
 *                      required by routines added by David Gray to demonstrate
 *                      the port on other platforms, especially ARM.
 *
 *  Copy:               See Copyright for the status of this software.
 *
 *  Author:             Daniel Veillard
 *
 *  ----------------------------------------------------------------------------
 *  Revision History
 *  ----------------------------------------------------------------------------
 *
 *  Date       By Remark
 *  ---------- -- --------------------------------------------------------------
 *  2019/03/31 DG Cut down xmlversion.h to create a simpler resource for use
 *                with runsuite.rc.
 *  ============================================================================
 */

#ifndef __RUNSUITE_VERSION_H__
#define __RUNSUITE_VERSION_H__

/**
 * LIBXML_DOTTED_VERSION:
 *
 * the version string like "1.2.3"
 */
#define LIBXML_DOTTED_VERSION "2.9.9"

#define LIBXML_MAJOR_VERSION	2
#define LIBXML_MINOR_VERSION	9
#define LIBXML_MICRO_VERSION	9

/**
 * LIBXML_VERSION:
 *
 * the version number: 1.2.3 value is 10203
 */
#define LIBXML_VERSION 20909

/**
 * LIBXML_VERSION_STRING:
 *
 * the version number string, 1.2.3 value is "10203"
 */
#define LIBXML_VERSION_STRING "20909"

/**
 * LIBXML_VERSION_EXTRA:
 *
 * extra version information, used to show a CVS compilation
 */
#define LIBXML_VERSION_EXTRA "-GITv2.9.9-rc2-2-g7c4949afa"
#endif  /* #ifndef __RUNSUITE_VERSION_H__ */
