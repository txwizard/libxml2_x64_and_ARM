; Listing generated by Microsoft (R) Optimizing Compiler Version 19.16.27027.1 

	TITLE	C:\Users\DAG\Documents\_Clients\CodeProject Authors Group\Windows on ARM\libxml2\libxml2-2.9.9\SAX.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRT
INCLUDELIB OLDNAMES

_DATA	SEGMENT
COMM	_xmlMalloc:DWORD
COMM	_xmlMallocAtomic:DWORD
COMM	_xmlRealloc:DWORD
COMM	_xmlFree:DWORD
COMM	_xmlMemStrdup:DWORD
COMM	_xmlIsBaseCharGroup:BYTE:010H
COMM	_xmlIsCharGroup:BYTE:010H
COMM	_xmlIsCombiningGroup:BYTE:010H
COMM	_xmlIsDigitGroup:BYTE:010H
COMM	_xmlIsExtenderGroup:BYTE:010H
COMM	_xmlIsIdeographicGroup:BYTE:010H
COMM	_xmlIsPubidChar_tab:BYTE:0100H
COMM	_xmlParserMaxDepth:DWORD
COMM	_xmlXPathNAN:QWORD
COMM	_xmlXPathPINF:QWORD
COMM	_xmlXPathNINF:QWORD
COMM	_forbiddenExp:DWORD
COMM	_emptyExp:DWORD
_DATA	ENDS
msvcjmc	SEGMENT
__188180DA_corecrt_math@h DB 01H
__2CC6E67D_corecrt_stdio_config@h DB 01H
__05476D76_corecrt_wstdio@h DB 01H
__A452D4A0_stdio@h DB 01H
__4384A2D9_corecrt_memcpy_s@h DB 01H
__4E51A221_corecrt_wstring@h DB 01H
__2140C079_string@h DB 01H
__DB99EBBE_sax@c DB 01H
msvcjmc	ENDS
PUBLIC	_initxmlDefaultSAXHandler
PUBLIC	_inithtmlDefaultSAXHandler
PUBLIC	_initdocbDefaultSAXHandler
PUBLIC	__JustMyCode_Default
EXTRN	_xmlParserError:PROC
EXTRN	_xmlParserWarning:PROC
EXTRN	_xmlSAX2SetDocumentLocator:PROC
EXTRN	_xmlSAX2IsStandalone:PROC
EXTRN	_xmlSAX2HasInternalSubset:PROC
EXTRN	_xmlSAX2HasExternalSubset:PROC
EXTRN	_xmlSAX2InternalSubset:PROC
EXTRN	_xmlSAX2ExternalSubset:PROC
EXTRN	_xmlSAX2GetEntity:PROC
EXTRN	_xmlSAX2GetParameterEntity:PROC
EXTRN	_xmlSAX2ResolveEntity:PROC
EXTRN	_xmlSAX2EntityDecl:PROC
EXTRN	_xmlSAX2AttributeDecl:PROC
EXTRN	_xmlSAX2ElementDecl:PROC
EXTRN	_xmlSAX2NotationDecl:PROC
EXTRN	_xmlSAX2UnparsedEntityDecl:PROC
EXTRN	_xmlSAX2StartDocument:PROC
EXTRN	_xmlSAX2EndDocument:PROC
EXTRN	_xmlSAX2StartElement:PROC
EXTRN	_xmlSAX2EndElement:PROC
EXTRN	_xmlSAX2Reference:PROC
EXTRN	_xmlSAX2Characters:PROC
EXTRN	_xmlSAX2IgnorableWhitespace:PROC
EXTRN	_xmlSAX2ProcessingInstruction:PROC
EXTRN	_xmlSAX2Comment:PROC
EXTRN	_xmlSAX2CDataBlock:PROC
EXTRN	@__CheckForDebuggerJustMyCode@4:PROC
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
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\sax.c
;	COMDAT _initdocbDefaultSAXHandler
_TEXT	SEGMENT
_hdlr$ = 8						; size = 4
_initdocbDefaultSAXHandler PROC				; COMDAT

; 139  : {

	push	ebp
	mov	ebp, esp
	mov	ecx, OFFSET __DB99EBBE_sax@c
	call	@__CheckForDebuggerJustMyCode@4
	mov	eax, DWORD PTR _hdlr$[ebp]
	cmp	DWORD PTR [eax+108], 1
	je	$LN1@initdocbDe

; 140  :     if(hdlr->initialized == 1)
; 141  : 	return;
; 142  : 
; 143  :     hdlr->internalSubset = xmlSAX2InternalSubset;
; 144  :     hdlr->externalSubset = NULL;

	mov	DWORD PTR [eax], OFFSET _xmlSAX2InternalSubset
	mov	DWORD PTR [eax+104], 0

; 145  :     hdlr->isStandalone = xmlSAX2IsStandalone;

	mov	DWORD PTR [eax+4], OFFSET _xmlSAX2IsStandalone

; 146  :     hdlr->hasInternalSubset = xmlSAX2HasInternalSubset;

	mov	DWORD PTR [eax+8], OFFSET _xmlSAX2HasInternalSubset

; 147  :     hdlr->hasExternalSubset = xmlSAX2HasExternalSubset;

	mov	DWORD PTR [eax+12], OFFSET _xmlSAX2HasExternalSubset

; 148  :     hdlr->resolveEntity = xmlSAX2ResolveEntity;

	mov	DWORD PTR [eax+16], OFFSET _xmlSAX2ResolveEntity

; 149  :     hdlr->getEntity = xmlSAX2GetEntity;

	mov	DWORD PTR [eax+20], OFFSET _xmlSAX2GetEntity

; 150  :     hdlr->getParameterEntity = NULL;

	mov	DWORD PTR [eax+96], 0

; 151  :     hdlr->entityDecl = xmlSAX2EntityDecl;

	mov	DWORD PTR [eax+24], OFFSET _xmlSAX2EntityDecl

; 152  :     hdlr->attributeDecl = NULL;

	mov	DWORD PTR [eax+32], 0

; 153  :     hdlr->elementDecl = NULL;

	mov	DWORD PTR [eax+36], 0

; 154  :     hdlr->notationDecl = NULL;

	mov	DWORD PTR [eax+28], 0

; 155  :     hdlr->unparsedEntityDecl = NULL;

	mov	DWORD PTR [eax+40], 0

; 156  :     hdlr->setDocumentLocator = xmlSAX2SetDocumentLocator;

	mov	DWORD PTR [eax+44], OFFSET _xmlSAX2SetDocumentLocator

; 157  :     hdlr->startDocument = xmlSAX2StartDocument;

	mov	DWORD PTR [eax+48], OFFSET _xmlSAX2StartDocument

; 158  :     hdlr->endDocument = xmlSAX2EndDocument;

	mov	DWORD PTR [eax+52], OFFSET _xmlSAX2EndDocument

; 159  :     hdlr->startElement = xmlSAX2StartElement;

	mov	DWORD PTR [eax+56], OFFSET _xmlSAX2StartElement

; 160  :     hdlr->endElement = xmlSAX2EndElement;

	mov	DWORD PTR [eax+60], OFFSET _xmlSAX2EndElement

; 161  :     hdlr->reference = xmlSAX2Reference;

	mov	DWORD PTR [eax+64], OFFSET _xmlSAX2Reference

; 162  :     hdlr->characters = xmlSAX2Characters;

	mov	DWORD PTR [eax+68], OFFSET _xmlSAX2Characters

; 163  :     hdlr->cdataBlock = NULL;

	mov	DWORD PTR [eax+100], 0

; 164  :     hdlr->ignorableWhitespace = xmlSAX2IgnorableWhitespace;

	mov	DWORD PTR [eax+72], OFFSET _xmlSAX2IgnorableWhitespace

; 165  :     hdlr->processingInstruction = NULL;

	mov	DWORD PTR [eax+76], 0

; 166  :     hdlr->comment = xmlSAX2Comment;

	mov	DWORD PTR [eax+80], OFFSET _xmlSAX2Comment

; 167  :     hdlr->warning = xmlParserWarning;

	mov	DWORD PTR [eax+84], OFFSET _xmlParserWarning

; 168  :     hdlr->error = xmlParserError;

	mov	DWORD PTR [eax+88], OFFSET _xmlParserError

; 169  :     hdlr->fatalError = xmlParserError;

	mov	DWORD PTR [eax+92], OFFSET _xmlParserError

; 170  : 
; 171  :     hdlr->initialized = 1;

	mov	DWORD PTR [eax+108], 1
$LN1@initdocbDe:

; 172  : }

	pop	ebp
	ret	0
_initdocbDefaultSAXHandler ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\sax.c
;	COMDAT _inithtmlDefaultSAXHandler
_TEXT	SEGMENT
_hdlr$ = 8						; size = 4
_inithtmlDefaultSAXHandler PROC				; COMDAT

; 92   : {

	push	ebp
	mov	ebp, esp
	mov	ecx, OFFSET __DB99EBBE_sax@c
	call	@__CheckForDebuggerJustMyCode@4
	mov	eax, DWORD PTR _hdlr$[ebp]
	cmp	DWORD PTR [eax+108], 1
	je	$LN1@inithtmlDe

; 93   :     if(hdlr->initialized == 1)
; 94   : 	return;
; 95   : 
; 96   :     hdlr->internalSubset = xmlSAX2InternalSubset;
; 97   :     hdlr->externalSubset = NULL;

	mov	DWORD PTR [eax], OFFSET _xmlSAX2InternalSubset
	mov	DWORD PTR [eax+104], 0

; 98   :     hdlr->isStandalone = NULL;

	mov	DWORD PTR [eax+4], 0

; 99   :     hdlr->hasInternalSubset = NULL;

	mov	DWORD PTR [eax+8], 0

; 100  :     hdlr->hasExternalSubset = NULL;

	mov	DWORD PTR [eax+12], 0

; 101  :     hdlr->resolveEntity = NULL;

	mov	DWORD PTR [eax+16], 0

; 102  :     hdlr->getEntity = xmlSAX2GetEntity;

	mov	DWORD PTR [eax+20], OFFSET _xmlSAX2GetEntity

; 103  :     hdlr->getParameterEntity = NULL;

	mov	DWORD PTR [eax+96], 0

; 104  :     hdlr->entityDecl = NULL;

	mov	DWORD PTR [eax+24], 0

; 105  :     hdlr->attributeDecl = NULL;

	mov	DWORD PTR [eax+32], 0

; 106  :     hdlr->elementDecl = NULL;

	mov	DWORD PTR [eax+36], 0

; 107  :     hdlr->notationDecl = NULL;

	mov	DWORD PTR [eax+28], 0

; 108  :     hdlr->unparsedEntityDecl = NULL;

	mov	DWORD PTR [eax+40], 0

; 109  :     hdlr->setDocumentLocator = xmlSAX2SetDocumentLocator;

	mov	DWORD PTR [eax+44], OFFSET _xmlSAX2SetDocumentLocator

; 110  :     hdlr->startDocument = xmlSAX2StartDocument;

	mov	DWORD PTR [eax+48], OFFSET _xmlSAX2StartDocument

; 111  :     hdlr->endDocument = xmlSAX2EndDocument;

	mov	DWORD PTR [eax+52], OFFSET _xmlSAX2EndDocument

; 112  :     hdlr->startElement = xmlSAX2StartElement;

	mov	DWORD PTR [eax+56], OFFSET _xmlSAX2StartElement

; 113  :     hdlr->endElement = xmlSAX2EndElement;

	mov	DWORD PTR [eax+60], OFFSET _xmlSAX2EndElement

; 114  :     hdlr->reference = NULL;

	mov	DWORD PTR [eax+64], 0

; 115  :     hdlr->characters = xmlSAX2Characters;

	mov	DWORD PTR [eax+68], OFFSET _xmlSAX2Characters

; 116  :     hdlr->cdataBlock = xmlSAX2CDataBlock;

	mov	DWORD PTR [eax+100], OFFSET _xmlSAX2CDataBlock

; 117  :     hdlr->ignorableWhitespace = xmlSAX2IgnorableWhitespace;

	mov	DWORD PTR [eax+72], OFFSET _xmlSAX2IgnorableWhitespace

; 118  :     hdlr->processingInstruction = xmlSAX2ProcessingInstruction;

	mov	DWORD PTR [eax+76], OFFSET _xmlSAX2ProcessingInstruction

; 119  :     hdlr->comment = xmlSAX2Comment;

	mov	DWORD PTR [eax+80], OFFSET _xmlSAX2Comment

; 120  :     hdlr->warning = xmlParserWarning;

	mov	DWORD PTR [eax+84], OFFSET _xmlParserWarning

; 121  :     hdlr->error = xmlParserError;

	mov	DWORD PTR [eax+88], OFFSET _xmlParserError

; 122  :     hdlr->fatalError = xmlParserError;

	mov	DWORD PTR [eax+92], OFFSET _xmlParserError

; 123  : 
; 124  :     hdlr->initialized = 1;

	mov	DWORD PTR [eax+108], 1
$LN1@inithtmlDe:

; 125  : }

	pop	ebp
	ret	0
_inithtmlDefaultSAXHandler ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\sax.c
;	COMDAT _initxmlDefaultSAXHandler
_TEXT	SEGMENT
_hdlr$ = 8						; size = 4
_warning$ = 12						; size = 4
_initxmlDefaultSAXHandler PROC				; COMDAT

; 43   : {

	push	ebp
	mov	ebp, esp
	mov	ecx, OFFSET __DB99EBBE_sax@c
	call	@__CheckForDebuggerJustMyCode@4
	mov	ecx, DWORD PTR _hdlr$[ebp]
	cmp	DWORD PTR [ecx+108], 1
	je	$LN1@initxmlDef

; 44   : 
; 45   :     if(hdlr->initialized == 1)
; 46   : 	return;
; 47   : 
; 48   :     hdlr->internalSubset = xmlSAX2InternalSubset;

	xor	eax, eax
	mov	DWORD PTR [ecx], OFFSET _xmlSAX2InternalSubset

; 49   :     hdlr->externalSubset = xmlSAX2ExternalSubset;
; 50   :     hdlr->isStandalone = xmlSAX2IsStandalone;
; 51   :     hdlr->hasInternalSubset = xmlSAX2HasInternalSubset;
; 52   :     hdlr->hasExternalSubset = xmlSAX2HasExternalSubset;
; 53   :     hdlr->resolveEntity = xmlSAX2ResolveEntity;
; 54   :     hdlr->getEntity = xmlSAX2GetEntity;
; 55   :     hdlr->getParameterEntity = xmlSAX2GetParameterEntity;
; 56   :     hdlr->entityDecl = xmlSAX2EntityDecl;
; 57   :     hdlr->attributeDecl = xmlSAX2AttributeDecl;
; 58   :     hdlr->elementDecl = xmlSAX2ElementDecl;
; 59   :     hdlr->notationDecl = xmlSAX2NotationDecl;
; 60   :     hdlr->unparsedEntityDecl = xmlSAX2UnparsedEntityDecl;
; 61   :     hdlr->setDocumentLocator = xmlSAX2SetDocumentLocator;
; 62   :     hdlr->startDocument = xmlSAX2StartDocument;
; 63   :     hdlr->endDocument = xmlSAX2EndDocument;
; 64   :     hdlr->startElement = xmlSAX2StartElement;
; 65   :     hdlr->endElement = xmlSAX2EndElement;
; 66   :     hdlr->reference = xmlSAX2Reference;
; 67   :     hdlr->characters = xmlSAX2Characters;
; 68   :     hdlr->cdataBlock = xmlSAX2CDataBlock;
; 69   :     hdlr->ignorableWhitespace = xmlSAX2Characters;
; 70   :     hdlr->processingInstruction = xmlSAX2ProcessingInstruction;
; 71   :     if (warning == 0)
; 72   : 	hdlr->warning = NULL;
; 73   :     else
; 74   : 	hdlr->warning = xmlParserWarning;
; 75   :     hdlr->error = xmlParserError;

	cmp	DWORD PTR _warning$[ebp], eax
	mov	edx, OFFSET _xmlParserWarning
	mov	DWORD PTR [ecx+104], OFFSET _xmlSAX2ExternalSubset
	cmovne	eax, edx
	mov	DWORD PTR [ecx+4], OFFSET _xmlSAX2IsStandalone
	mov	DWORD PTR [ecx+8], OFFSET _xmlSAX2HasInternalSubset
	mov	DWORD PTR [ecx+12], OFFSET _xmlSAX2HasExternalSubset
	mov	DWORD PTR [ecx+16], OFFSET _xmlSAX2ResolveEntity
	mov	DWORD PTR [ecx+20], OFFSET _xmlSAX2GetEntity
	mov	DWORD PTR [ecx+96], OFFSET _xmlSAX2GetParameterEntity
	mov	DWORD PTR [ecx+24], OFFSET _xmlSAX2EntityDecl
	mov	DWORD PTR [ecx+32], OFFSET _xmlSAX2AttributeDecl
	mov	DWORD PTR [ecx+36], OFFSET _xmlSAX2ElementDecl
	mov	DWORD PTR [ecx+28], OFFSET _xmlSAX2NotationDecl
	mov	DWORD PTR [ecx+40], OFFSET _xmlSAX2UnparsedEntityDecl
	mov	DWORD PTR [ecx+44], OFFSET _xmlSAX2SetDocumentLocator
	mov	DWORD PTR [ecx+48], OFFSET _xmlSAX2StartDocument
	mov	DWORD PTR [ecx+52], OFFSET _xmlSAX2EndDocument
	mov	DWORD PTR [ecx+56], OFFSET _xmlSAX2StartElement
	mov	DWORD PTR [ecx+60], OFFSET _xmlSAX2EndElement
	mov	DWORD PTR [ecx+64], OFFSET _xmlSAX2Reference
	mov	DWORD PTR [ecx+68], OFFSET _xmlSAX2Characters
	mov	DWORD PTR [ecx+100], OFFSET _xmlSAX2CDataBlock
	mov	DWORD PTR [ecx+72], OFFSET _xmlSAX2Characters
	mov	DWORD PTR [ecx+76], OFFSET _xmlSAX2ProcessingInstruction
	mov	DWORD PTR [ecx+84], eax
	mov	DWORD PTR [ecx+88], OFFSET _xmlParserError

; 76   :     hdlr->fatalError = xmlParserError;

	mov	DWORD PTR [ecx+92], OFFSET _xmlParserError

; 77   : 
; 78   :     hdlr->initialized = 1;

	mov	DWORD PTR [ecx+108], 1
$LN1@initxmlDef:

; 79   : }

	pop	ebp
	ret	0
_initxmlDefaultSAXHandler ENDP
_TEXT	ENDS
END
