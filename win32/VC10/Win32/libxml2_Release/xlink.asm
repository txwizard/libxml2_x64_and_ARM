; Listing generated by Microsoft (R) Optimizing Compiler Version 19.16.27027.1 

	TITLE	C:\Users\DAG\Documents\_Clients\CodeProject Authors Group\Windows on ARM\libxml2\libxml2-2.9.9\xlink.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

_DATA	SEGMENT
COMM	_forbiddenExp:DWORD
COMM	_emptyExp:DWORD
COMM	_xmlMalloc:DWORD
COMM	_xmlMallocAtomic:DWORD
COMM	_xmlRealloc:DWORD
COMM	_xmlFree:DWORD
COMM	_xmlMemStrdup:DWORD
_DATA	ENDS
msvcjmc	SEGMENT
__188180DA_corecrt_math@h DB 01H
__2CC6E67D_corecrt_stdio_config@h DB 01H
__05476D76_corecrt_wstdio@h DB 01H
__A452D4A0_stdio@h DB 01H
__4384A2D9_corecrt_memcpy_s@h DB 01H
__4E51A221_corecrt_wstring@h DB 01H
__2140C079_string@h DB 01H
__7B7A869E_ctype@h DB 01H
__A40A425D_stat@h DB 01H
__457DD326_basetsd@h DB 01H
__1887E595_winnt@h DB 01H
__9FC7C64B_processthreadsapi@h DB 01H
__FA470AEC_memoryapi@h DB 01H
__F37DAFF1_winerror@h DB 01H
__7A450CCC_winbase@h DB 01H
__B4B40122_winioctl@h DB 01H
__86261D59_stralign@h DB 01H
__E43CAA02_xlink@c DB 01H
msvcjmc	ENDS
PUBLIC	___local_stdio_printf_options
PUBLIC	_snprintf
PUBLIC	_xlinkGetDefaultDetect
PUBLIC	_xlinkSetDefaultDetect
PUBLIC	_xlinkGetDefaultHandler
PUBLIC	_xlinkSetDefaultHandler
PUBLIC	_xlinkIsLink
PUBLIC	__JustMyCode_Default
PUBLIC	??_C@_0BO@DIGPEIDG@http?3?1?1www?4w3?4org?11999?1xhtml?1@ ; `string'
PUBLIC	??_C@_0CI@PBGMGCJI@http?3?1?1www?4w3?4org?11999?1xlink?1na@ ; `string'
PUBLIC	??_C@_04GPMDFGEJ@type@				; `string'
PUBLIC	??_C@_06MDDCAKGD@simple@			; `string'
PUBLIC	??_C@_08ONGCMBFO@extended@			; `string'
PUBLIC	??_C@_04IAMNPBLO@role@				; `string'
PUBLIC	??_C@_0BH@MHEJCPPK@xlink?3external?9linkset@	; `string'
PUBLIC	??_C@_0BE@NPIDLLNF@?$CFs?3external?9linkset@	; `string'
EXTRN	_xmlStrEqual:PROC
EXTRN	__imp____stdio_common_vsprintf:PROC
EXTRN	_xmlSearchNs:PROC
EXTRN	_xmlGetNsProp:PROC
EXTRN	@__CheckForDebuggerJustMyCode@4:PROC
_DATA	SEGMENT
COMM	?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:QWORD							; `__local_stdio_printf_options'::`2'::_OptionsStorage
_DATA	ENDS
_BSS	SEGMENT
_xlinkDefaultHandler DD 01H DUP (?)
_xlinkDefaultDetect DD 01H DUP (?)
_BSS	ENDS
;	COMDAT ??_C@_0BE@NPIDLLNF@?$CFs?3external?9linkset@
CONST	SEGMENT
??_C@_0BE@NPIDLLNF@?$CFs?3external?9linkset@ DB '%s:external-linkset', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BH@MHEJCPPK@xlink?3external?9linkset@
CONST	SEGMENT
??_C@_0BH@MHEJCPPK@xlink?3external?9linkset@ DB 'xlink:external-linkset', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_04IAMNPBLO@role@
CONST	SEGMENT
??_C@_04IAMNPBLO@role@ DB 'role', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_08ONGCMBFO@extended@
CONST	SEGMENT
??_C@_08ONGCMBFO@extended@ DB 'extended', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_06MDDCAKGD@simple@
CONST	SEGMENT
??_C@_06MDDCAKGD@simple@ DB 'simple', 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_04GPMDFGEJ@type@
CONST	SEGMENT
??_C@_04GPMDFGEJ@type@ DB 'type', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_0CI@PBGMGCJI@http?3?1?1www?4w3?4org?11999?1xlink?1na@
CONST	SEGMENT
??_C@_0CI@PBGMGCJI@http?3?1?1www?4w3?4org?11999?1xlink?1na@ DB 'http://ww'
	DB	'w.w3.org/1999/xlink/namespace/', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0BO@DIGPEIDG@http?3?1?1www?4w3?4org?11999?1xhtml?1@
CONST	SEGMENT
??_C@_0BO@DIGPEIDG@http?3?1?1www?4w3?4org?11999?1xhtml?1@ DB 'http://www.'
	DB	'w3.org/1999/xhtml/', 00H			; `string'
CONST	ENDS
; Function compile flags: /Odt
;	COMDAT __JustMyCode_Default
_TEXT	SEGMENT
__JustMyCode_Default PROC				; COMDAT
	push	ebp
	mov	ebp, esp
	pop	ebp
	ret	0
__JustMyCode_Default ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\xlink.c
;	COMDAT _xlinkIsLink
_TEXT	SEGMENT
_buf$1 = -204						; size = 200
_ret$1$ = -4						; size = 4
_doc$ = 8						; size = 4
_type$1$ = 12						; size = 4
_node$ = 12						; size = 4
_xlinkIsLink PROC					; COMDAT

; 123  : xlinkIsLink	(xmlDocPtr doc, xmlNodePtr node) {

	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	esi
	push	edi
	mov	ecx, OFFSET __E43CAA02_xlink@c
	call	@__CheckForDebuggerJustMyCode@4
	mov	edi, DWORD PTR _node$[ebp]
	xor	esi, esi
	mov	DWORD PTR _ret$1$[ebp], esi
	test	edi, edi
	jne	SHORT $LN2@xlinkIsLin

; 124  :     xmlChar *type = NULL, *role = NULL;
; 125  :     xlinkType ret = XLINK_TYPE_NONE;
; 126  : 
; 127  :     if (node == NULL) return(XLINK_TYPE_NONE);

	pop	edi
	xor	eax, eax

; 180  : }

	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	0
$LN2@xlinkIsLin:
	push	ebx

; 128  :     if (doc == NULL) doc = node->doc;

	mov	ebx, DWORD PTR _doc$[ebp]
	test	ebx, ebx
	jne	SHORT $LN19@xlinkIsLin
	mov	ebx, DWORD PTR [edi+32]

; 129  :     if ((doc != NULL) && (doc->type == XML_HTML_DOCUMENT_NODE)) {

	test	ebx, ebx
	je	SHORT $LN4@xlinkIsLin
$LN19@xlinkIsLin:
	cmp	DWORD PTR [ebx+4], 13			; 0000000dH
	je	SHORT $LN6@xlinkIsLin
$LN4@xlinkIsLin:

; 130  :         /*
; 131  : 	 * This is an HTML document.
; 132  : 	 */
; 133  :     } else if ((node->ns != NULL) &&

	mov	eax, DWORD PTR [edi+36]
	test	eax, eax
	je	SHORT $LN6@xlinkIsLin
	push	OFFSET ??_C@_0BO@DIGPEIDG@http?3?1?1www?4w3?4org?11999?1xhtml?1@
	push	DWORD PTR [eax+8]
	call	_xmlStrEqual
	add	esp, 8
$LN6@xlinkIsLin:

; 134  :                (xmlStrEqual(node->ns->href, XHTML_NAMESPACE))) {
; 135  : 	/*
; 136  : 	 * !!!! We really need an IS_XHTML_ELEMENT function from HTMLtree.h @@@
; 137  : 	 */
; 138  :         /*
; 139  : 	 * This is an XHTML element within an XML document
; 140  : 	 * Check whether it's one of the element able to carry links
; 141  : 	 * and in that case if it holds the attributes.
; 142  : 	 */
; 143  :     }
; 144  : 
; 145  :     /*
; 146  :      * We don't prevent a-priori having XML Linking constructs on
; 147  :      * XHTML elements
; 148  :      */
; 149  :     type = xmlGetNsProp(node, BAD_CAST"type", XLINK_NAMESPACE);

	push	OFFSET ??_C@_0CI@PBGMGCJI@http?3?1?1www?4w3?4org?11999?1xlink?1na@
	push	OFFSET ??_C@_04GPMDFGEJ@type@
	push	edi
	call	_xmlGetNsProp
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _type$1$[ebp], eax

; 150  :     if (type != NULL) {

	test	eax, eax
	je	$LN17@xlinkIsLin

; 151  : 	if (xmlStrEqual(type, BAD_CAST "simple")) {

	push	OFFSET ??_C@_06MDDCAKGD@simple@
	push	eax
	call	_xmlStrEqual
	add	esp, 8
	test	eax, eax
	je	SHORT $LN8@xlinkIsLin

; 152  :             ret = XLINK_TYPE_SIMPLE;

	mov	DWORD PTR _ret$1$[ebp], 1
	jmp	$LN10@xlinkIsLin
$LN8@xlinkIsLin:

; 153  : 	} else if (xmlStrEqual(type, BAD_CAST "extended")) {

	push	OFFSET ??_C@_08ONGCMBFO@extended@
	push	DWORD PTR _type$1$[ebp]
	call	_xmlStrEqual
	add	esp, 8
	test	eax, eax
	je	SHORT $LN10@xlinkIsLin

; 154  : 	    role = xmlGetNsProp(node, BAD_CAST "role", XLINK_NAMESPACE);

	push	OFFSET ??_C@_0CI@PBGMGCJI@http?3?1?1www?4w3?4org?11999?1xlink?1na@
	push	OFFSET ??_C@_04IAMNPBLO@role@
	push	edi
	call	_xmlGetNsProp
	mov	esi, eax
	add	esp, 12					; 0000000cH

; 155  : 	    if (role != NULL) {

	test	esi, esi
	je	SHORT $LN15@xlinkIsLin

; 156  : 		xmlNsPtr xlink;
; 157  : 		xlink = xmlSearchNs(doc, node, XLINK_NAMESPACE);

	push	OFFSET ??_C@_0CI@PBGMGCJI@http?3?1?1www?4w3?4org?11999?1xlink?1na@
	push	edi
	push	ebx
	call	_xmlSearchNs
	add	esp, 12					; 0000000cH

; 158  : 		if (xlink == NULL) {

	test	eax, eax
	jne	SHORT $LN12@xlinkIsLin

; 159  : 		    /* Humm, fallback method */
; 160  : 		    if (xmlStrEqual(role, BAD_CAST"xlink:external-linkset"))

	push	OFFSET ??_C@_0BH@MHEJCPPK@xlink?3external?9linkset@
	push	esi
	call	_xmlStrEqual
	add	esp, 8

; 161  : 			ret = XLINK_TYPE_EXTENDED_SET;
; 162  : 		} else {

	jmp	SHORT $LN15@xlinkIsLin
$LN12@xlinkIsLin:

; 163  : 		    xmlChar buf[200];
; 164  : 		    snprintf((char *) buf, sizeof(buf), "%s:external-linkset",

	push	DWORD PTR [eax+12]
	lea	eax, DWORD PTR _buf$1[ebp]
	push	OFFSET ??_C@_0BE@NPIDLLNF@?$CFs?3external?9linkset@
	push	200					; 000000c8H
	push	eax
	call	_snprintf

; 165  : 			     (char *) xlink->prefix);
; 166  :                     buf[sizeof(buf) - 1] = 0;
; 167  : 		    if (xmlStrEqual(role, buf))

	lea	eax, DWORD PTR _buf$1[ebp]
	mov	BYTE PTR _buf$1[ebp+199], 0
	push	eax
	push	esi
	call	_xmlStrEqual
	add	esp, 24					; 00000018H
$LN15@xlinkIsLin:

; 168  : 			ret = XLINK_TYPE_EXTENDED_SET;
; 169  : 
; 170  : 		}
; 171  : 
; 172  : 	    }
; 173  : 	    ret = XLINK_TYPE_EXTENDED;

	mov	DWORD PTR _ret$1$[ebp], 2
$LN10@xlinkIsLin:

; 174  : 	}
; 175  :     }
; 176  : 
; 177  :     if (type != NULL) xmlFree(type);

	push	DWORD PTR _type$1$[ebp]
	call	DWORD PTR _xmlFree
	add	esp, 4

; 178  :     if (role != NULL) xmlFree(role);

	test	esi, esi
	je	SHORT $LN17@xlinkIsLin
	push	esi
	call	DWORD PTR _xmlFree
	add	esp, 4
$LN17@xlinkIsLin:

; 179  :     return(ret);

	mov	eax, DWORD PTR _ret$1$[ebp]
	pop	ebx
	pop	edi

; 180  : }

	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	0
_xlinkIsLink ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\xlink.c
;	COMDAT _xlinkSetDefaultHandler
_TEXT	SEGMENT
_handler$ = 8						; size = 4
_xlinkSetDefaultHandler PROC				; COMDAT

; 74   : xlinkSetDefaultHandler(xlinkHandlerPtr handler) {

	push	ebp
	mov	ebp, esp
	mov	ecx, OFFSET __E43CAA02_xlink@c
	call	@__CheckForDebuggerJustMyCode@4
	mov	eax, DWORD PTR _handler$[ebp]
	mov	DWORD PTR _xlinkDefaultHandler, eax

; 75   :     xlinkDefaultHandler = handler;
; 76   : }

	pop	ebp
	ret	0
_xlinkSetDefaultHandler ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\xlink.c
;	COMDAT _xlinkGetDefaultHandler
_TEXT	SEGMENT
_xlinkGetDefaultHandler PROC				; COMDAT
	mov	ecx, OFFSET __E43CAA02_xlink@c
	call	@__CheckForDebuggerJustMyCode@4
	mov	eax, DWORD PTR _xlinkDefaultHandler
	ret	0
_xlinkGetDefaultHandler ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\xlink.c
;	COMDAT _xlinkSetDefaultDetect
_TEXT	SEGMENT
_func$ = 8						; size = 4
_xlinkSetDefaultDetect PROC				; COMDAT

; 97   : xlinkSetDefaultDetect	(xlinkNodeDetectFunc func) {

	push	ebp
	mov	ebp, esp
	mov	ecx, OFFSET __E43CAA02_xlink@c
	call	@__CheckForDebuggerJustMyCode@4
	mov	eax, DWORD PTR _func$[ebp]
	mov	DWORD PTR _xlinkDefaultDetect, eax

; 98   :     xlinkDefaultDetect = func;
; 99   : }

	pop	ebp
	ret	0
_xlinkSetDefaultDetect ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\xlink.c
;	COMDAT _xlinkGetDefaultDetect
_TEXT	SEGMENT
_xlinkGetDefaultDetect PROC				; COMDAT
	mov	ecx, OFFSET __E43CAA02_xlink@c
	call	@__CheckForDebuggerJustMyCode@4
	mov	eax, DWORD PTR _xlinkDefaultDetect
	ret	0
_xlinkGetDefaultDetect ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\program files (x86)\windows kits\10\include\10.0.17763.0\ucrt\stdio.h
;	COMDAT _snprintf
_TEXT	SEGMENT
__Buffer$ = 8						; size = 4
__BufferCount$ = 12					; size = 4
__Format$ = 16						; size = 4
_snprintf PROC						; COMDAT

; 1948 :     {

	push	ebp
	mov	ebp, esp
	push	esi
	mov	ecx, OFFSET __A452D4A0_stdio@h
	call	@__CheckForDebuggerJustMyCode@4
	mov	esi, DWORD PTR __Format$[ebp]

; 1440 :         int const _Result = __stdio_common_vsprintf(

	call	___local_stdio_printf_options
	lea	ecx, DWORD PTR __Format$[ebp+4]
	push	ecx
	push	0
	mov	ecx, DWORD PTR [eax]
	push	esi
	push	DWORD PTR __BufferCount$[ebp]
	or	ecx, 2
	push	DWORD PTR __Buffer$[ebp]
	push	DWORD PTR [eax+4]
	push	ecx
	call	DWORD PTR __imp____stdio_common_vsprintf
	add	esp, 28					; 0000001cH

; 1441 :             _CRT_INTERNAL_LOCAL_PRINTF_OPTIONS | _CRT_INTERNAL_PRINTF_STANDARD_SNPRINTF_BEHAVIOR,
; 1442 :             _Buffer, _BufferCount, _Format, NULL, _ArgList);
; 1443 : 
; 1444 :         return _Result < 0 ? -1 : _Result;

	or	ecx, -1
	test	eax, eax
	cmovs	eax, ecx

; 1949 :         int _Result;
; 1950 :         va_list _ArgList;
; 1951 :         __crt_va_start(_ArgList, _Format);
; 1952 :     #pragma warning(suppress:28719)    // 28719
; 1953 :         _Result = vsnprintf(_Buffer, _BufferCount, _Format, _ArgList);
; 1954 :         __crt_va_end(_ArgList);
; 1955 :         return _Result;

	pop	esi

; 1956 :     }

	pop	ebp
	ret	0
_snprintf ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\program files (x86)\windows kits\10\include\10.0.17763.0\ucrt\stdio.h
;	COMDAT _vsnprintf
_TEXT	SEGMENT
__Buffer$ = 8						; size = 4
__BufferCount$ = 12					; size = 4
__Format$ = 16						; size = 4
__ArgList$ = 20						; size = 4
_vsnprintf PROC						; COMDAT

; 1439 :     {

	push	ebp
	mov	ebp, esp
	mov	ecx, OFFSET __A452D4A0_stdio@h
	call	@__CheckForDebuggerJustMyCode@4
	call	___local_stdio_printf_options
	push	DWORD PTR __ArgList$[ebp]
	mov	ecx, eax
	push	0
	push	DWORD PTR __Format$[ebp]
	push	DWORD PTR __BufferCount$[ebp]
	mov	eax, DWORD PTR [ecx]
	push	DWORD PTR __Buffer$[ebp]
	or	eax, 2
	push	DWORD PTR [ecx+4]
	push	eax
	call	DWORD PTR __imp____stdio_common_vsprintf
	or	ecx, -1
	add	esp, 28					; 0000001cH
	test	eax, eax
	cmovs	eax, ecx

; 1440 :         int const _Result = __stdio_common_vsprintf(
; 1441 :             _CRT_INTERNAL_LOCAL_PRINTF_OPTIONS | _CRT_INTERNAL_PRINTF_STANDARD_SNPRINTF_BEHAVIOR,
; 1442 :             _Buffer, _BufferCount, _Format, NULL, _ArgList);
; 1443 : 
; 1444 :         return _Result < 0 ? -1 : _Result;
; 1445 :     }

	pop	ebp
	ret	0
_vsnprintf ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\program files (x86)\windows kits\10\include\10.0.17763.0\ucrt\corecrt_stdio_config.h
;	COMDAT ___local_stdio_printf_options
_TEXT	SEGMENT
___local_stdio_printf_options PROC			; COMDAT
	mov	ecx, OFFSET __2CC6E67D_corecrt_stdio_config@h
	call	@__CheckForDebuggerJustMyCode@4
	mov	eax, OFFSET ?_OptionsStorage@?1??__local_stdio_printf_options@@9@9 ; `__local_stdio_printf_options'::`2'::_OptionsStorage
	ret	0
___local_stdio_printf_options ENDP
_TEXT	ENDS
END
