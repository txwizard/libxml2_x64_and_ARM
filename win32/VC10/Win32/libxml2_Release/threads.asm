; Listing generated by Microsoft (R) Optimizing Compiler Version 19.16.27027.1 

	TITLE	C:\Users\DAG\Documents\_Clients\CodeProject Authors Group\Windows on ARM\libxml2\libxml2-2.9.9\threads.c
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
__7B7A869E_ctype@h DB 01H
__457DD326_basetsd@h DB 01H
__1887E595_winnt@h DB 01H
__9FC7C64B_processthreadsapi@h DB 01H
__FA470AEC_memoryapi@h DB 01H
__F37DAFF1_winerror@h DB 01H
__7A450CCC_winbase@h DB 01H
__86261D59_stralign@h DB 01H
__14D63317_threads@c DB 01H
msvcjmc	ENDS
PUBLIC	___xmlGlobalInitMutexLock
PUBLIC	___xmlGlobalInitMutexUnlock
PUBLIC	___xmlGlobalInitMutexDestroy
PUBLIC	_xmlNewMutex
PUBLIC	_xmlMutexLock
PUBLIC	_xmlMutexUnlock
PUBLIC	_xmlFreeMutex
PUBLIC	_xmlNewRMutex
PUBLIC	_xmlRMutexLock
PUBLIC	_xmlRMutexUnlock
PUBLIC	_xmlFreeRMutex
PUBLIC	_xmlInitThreads
PUBLIC	_xmlLockLibrary
PUBLIC	_xmlUnlockLibrary
PUBLIC	_xmlGetThreadId
PUBLIC	_xmlIsMainThread
PUBLIC	_xmlCleanupThreads
PUBLIC	_xmlGetGlobalState
PUBLIC	__JustMyCode_Default
PUBLIC	??_C@_0CH@DGKHILDB@xmlGlobalInitMutexLock?3?5out?5of?5@ ; `string'
PUBLIC	??_C@_0CC@JHDJFHHF@xmlGetGlobalState?3?5out?5of?5memor@ ; `string'
EXTRN	___xmlInitializeDict:PROC
EXTRN	_xmlResetError:PROC
EXTRN	__imp__free:PROC
EXTRN	__imp__malloc:PROC
EXTRN	_xmlInitializeGlobalState:PROC
EXTRN	___xmlGenericError:PROC
EXTRN	___xmlGenericErrorContext:PROC
EXTRN	__imp__CloseHandle@4:PROC
EXTRN	__imp__DuplicateHandle@28:PROC
EXTRN	__imp__InitializeCriticalSection@4:PROC
EXTRN	__imp__EnterCriticalSection@4:PROC
EXTRN	__imp__LeaveCriticalSection@4:PROC
EXTRN	__imp__DeleteCriticalSection@4:PROC
EXTRN	__imp__ReleaseMutex@4:PROC
EXTRN	__imp__WaitForSingleObject@8:PROC
EXTRN	__imp__CreateMutexW@12:PROC
EXTRN	__imp__Sleep@4:PROC
EXTRN	__imp__GetCurrentProcess@0:PROC
EXTRN	__imp__GetCurrentThread@0:PROC
EXTRN	__imp__GetCurrentThreadId@0:PROC
EXTRN	__imp__TlsAlloc@0:PROC
EXTRN	__imp__TlsGetValue@4:PROC
EXTRN	__imp__TlsSetValue@8:PROC
EXTRN	__imp___beginthread:PROC
EXTRN	__imp___endthread:PROC
EXTRN	@__CheckForDebuggerJustMyCode@4:PROC
EXTRN	_memset:PROC
_BSS	SEGMENT
_mainthread DD	01H DUP (?)
_run_once DQ	01H DUP (?)
_global_init_lock DD 01H DUP (?)
_xmlLibraryLock DD 01H DUP (?)
_BSS	ENDS
;	COMDAT ??_C@_0CC@JHDJFHHF@xmlGetGlobalState?3?5out?5of?5memor@
CONST	SEGMENT
??_C@_0CC@JHDJFHHF@xmlGetGlobalState?3?5out?5of?5memor@ DB 'xmlGetGlobalS'
	DB	'tate: out of memory', 0aH, 00H		; `string'
CONST	ENDS
;	COMDAT ??_C@_0CH@DGKHILDB@xmlGlobalInitMutexLock?3?5out?5of?5@
CONST	SEGMENT
??_C@_0CH@DGKHILDB@xmlGlobalInitMutexLock?3?5out?5of?5@ DB 'xmlGlobalInit'
	DB	'MutexLock: out of memory', 0aH, 00H		; `string'
CONST	ENDS
_DATA	SEGMENT
_globalkey DD	0ffffffffH
_DATA	ENDS
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
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c
;	COMDAT _xmlGlobalStateCleanupHelper
_TEXT	SEGMENT
_p$ = 8							; size = 4
_xmlGlobalStateCleanupHelper PROC			; COMDAT

; 604  : {

	push	ebp
	mov	ebp, esp
	push	esi
	push	edi
	mov	ecx, OFFSET __14D63317_threads@c
	call	@__CheckForDebuggerJustMyCode@4
	mov	edi, DWORD PTR _p$[ebp]
	push	-1
	push	DWORD PTR [edi]
	call	DWORD PTR __imp__WaitForSingleObject@8
	push	DWORD PTR [edi]
	call	DWORD PTR __imp__CloseHandle@4
	mov	esi, DWORD PTR [edi+4]

; 562  :     xmlResetError(&(gs->xmlLastError));

	lea	eax, DWORD PTR [esi+452]
	push	eax
	call	_xmlResetError

; 563  :     free(state);

	push	esi
	mov	esi, DWORD PTR __imp__free
	call	esi

; 605  :     xmlGlobalStateCleanupHelperParams *params =
; 606  :         (xmlGlobalStateCleanupHelperParams *) p;
; 607  :     WaitForSingleObject(params->thread, INFINITE);
; 608  :     CloseHandle(params->thread);
; 609  :     xmlFreeGlobalState(params->memory);
; 610  :     free(params);

	push	edi
	call	esi
	add	esp, 12					; 0000000cH

; 611  :     _endthread();

	pop	edi
	pop	esi

; 612  : }

	pop	ebp

; 611  :     _endthread();

	jmp	DWORD PTR __imp___endthread
_xmlGlobalStateCleanupHelper ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c
;	COMDAT _xmlNewGlobalState
_TEXT	SEGMENT
_xmlNewGlobalState PROC					; COMDAT

; 577  : {

	push	esi
	mov	ecx, OFFSET __14D63317_threads@c
	call	@__CheckForDebuggerJustMyCode@4
	push	516					; 00000204H
	call	DWORD PTR __imp__malloc
	mov	esi, eax
	add	esp, 4
	test	esi, esi
	jne	SHORT $LN2@xmlNewGlob

; 578  :     xmlGlobalState *gs;
; 579  : 
; 580  :     gs = malloc(sizeof(xmlGlobalState));
; 581  :     if (gs == NULL) {
; 582  : 	xmlGenericError(xmlGenericErrorContext,

	call	___xmlGenericError
	mov	esi, eax
	call	___xmlGenericErrorContext
	push	OFFSET ??_C@_0CC@JHDJFHHF@xmlGetGlobalState?3?5out?5of?5memor@
	push	DWORD PTR [eax]
	mov	eax, DWORD PTR [esi]
	call	eax
	add	esp, 8

; 583  : 			"xmlGetGlobalState: out of memory\n");
; 584  :         return (NULL);

	xor	eax, eax
	pop	esi

; 590  : }

	ret	0
$LN2@xmlNewGlob:

; 585  :     }
; 586  : 
; 587  :     memset(gs, 0, sizeof(xmlGlobalState));

	push	516					; 00000204H
	push	0
	push	esi
	call	_memset

; 588  :     xmlInitializeGlobalState(gs);

	push	esi
	call	_xmlInitializeGlobalState
	add	esp, 16					; 00000010H

; 589  :     return (gs);

	mov	eax, esi
	pop	esi

; 590  : }

	ret	0
_xmlNewGlobalState ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c
;	COMDAT _xmlFreeGlobalState
_TEXT	SEGMENT
_state$ = 8						; size = 4
_xmlFreeGlobalState PROC				; COMDAT

; 558  : {

	push	ebp
	mov	ebp, esp
	push	esi
	mov	ecx, OFFSET __14D63317_threads@c
	call	@__CheckForDebuggerJustMyCode@4
	mov	esi, DWORD PTR _state$[ebp]
	lea	eax, DWORD PTR [esi+452]
	push	eax
	call	_xmlResetError
	push	esi
	call	DWORD PTR __imp__free
	add	esp, 8
	pop	esi

; 559  :     xmlGlobalState *gs = (xmlGlobalState *) state;
; 560  : 
; 561  :     /* free any memory allocated in the thread's xmlLastError */
; 562  :     xmlResetError(&(gs->xmlLastError));
; 563  :     free(state);
; 564  : }

	pop	ebp
	ret	0
_xmlFreeGlobalState ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c
;	COMDAT _xmlOnceInit
_TEXT	SEGMENT
_xmlOnceInit PROC					; COMDAT
	mov	ecx, OFFSET __14D63317_threads@c
	call	@__CheckForDebuggerJustMyCode@4
	cmp	DWORD PTR _run_once, 0
	jne	SHORT $LN3@xmlOnceIni

; 953  : #ifdef HAVE_PTHREAD_H
; 954  :     (void) pthread_key_create(&globalkey, xmlFreeGlobalState);
; 955  :     mainthread = pthread_self();
; 956  :     __xmlInitializeDict();
; 957  : #elif defined(HAVE_WIN32_THREADS)
; 958  :     if (!run_once.done) {
; 959  :         if (InterlockedIncrement(&run_once.control) == 1) {

	mov	eax, 1
	lock	 xadd	 (null) PTR _run_once+4, eax
	inc	eax
	cmp	eax, 1
	jne	SHORT $LN8@xmlOnceIni

; 960  : #if !defined(HAVE_COMPILER_TLS)
; 961  :             globalkey = TlsAlloc();

	call	DWORD PTR __imp__TlsAlloc@0
	mov	DWORD PTR _globalkey, eax

; 962  : #endif
; 963  :             mainthread = GetCurrentThreadId();

	call	DWORD PTR __imp__GetCurrentThreadId@0
	mov	DWORD PTR _mainthread, eax

; 964  : 	    __xmlInitializeDict();

	call	___xmlInitializeDict

; 965  :             run_once.done = 1;

	mov	DWORD PTR _run_once, 1

; 971  :         }
; 972  :     }
; 973  : #elif defined HAVE_BEOS_THREADS
; 974  :     if (atomic_add(&run_once_init, 1) == 0) {
; 975  :         globalkey = tls_allocate();
; 976  :         tls_set(globalkey, NULL);
; 977  :         mainthread = find_thread(NULL);
; 978  : 	__xmlInitializeDict();
; 979  :     } else
; 980  :         atomic_add(&run_once_init, -1);
; 981  : #endif
; 982  : }

	ret	0
$LN8@xmlOnceIni:

; 966  :         } else {
; 967  :             /* Another thread is working; give up our slice and
; 968  :              * wait until they're done. */
; 969  :             while (!run_once.done)

	cmp	DWORD PTR _run_once, 0
	jne	SHORT $LN3@xmlOnceIni
	push	esi
	mov	esi, DWORD PTR __imp__Sleep@4
	npad	4
$LL2@xmlOnceIni:

; 970  :                 Sleep(0);

	push	0
	call	esi
	cmp	DWORD PTR _run_once, 0
	je	SHORT $LL2@xmlOnceIni
	pop	esi
$LN3@xmlOnceIni:

; 971  :         }
; 972  :     }
; 973  : #elif defined HAVE_BEOS_THREADS
; 974  :     if (atomic_add(&run_once_init, 1) == 0) {
; 975  :         globalkey = tls_allocate();
; 976  :         tls_set(globalkey, NULL);
; 977  :         mainthread = find_thread(NULL);
; 978  : 	__xmlInitializeDict();
; 979  :     } else
; 980  :         atomic_add(&run_once_init, -1);
; 981  : #endif
; 982  : }

	ret	0
_xmlOnceInit ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\program files (x86)\windows kits\10\include\10.0.17763.0\um\winnt.h
;	COMDAT __InlineInterlockedCompareExchangePointer
_TEXT	SEGMENT
_Destination$ = 8					; size = 4
_ExChange$ = 12						; size = 4
_Comperand$ = 16					; size = 4
__InlineInterlockedCompareExchangePointer PROC		; COMDAT

; 6868 : {

	push	ebp
	mov	ebp, esp
	mov	ecx, OFFSET __1887E595_winnt@h
	call	@__CheckForDebuggerJustMyCode@4
	mov	edx, DWORD PTR _ExChange$[ebp]
	mov	ecx, DWORD PTR _Destination$[ebp]
	mov	eax, DWORD PTR _Comperand$[ebp]
	lock	 cmpxchg DWORD PTR [ecx], edx

; 6869 :     return (PVOID)InterlockedCompareExchange((LONG volatile *) Destination,
; 6870 :                                              (LONG) ExChange,
; 6871 :                                              (LONG) Comperand);
; 6872 : }

	pop	ebp
	ret	0
__InlineInterlockedCompareExchangePointer ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c
;	COMDAT _xmlGetGlobalState
_TEXT	SEGMENT
_xmlGetGlobalState PROC					; COMDAT
	mov	ecx, OFFSET __14D63317_threads@c
	call	@__CheckForDebuggerJustMyCode@4
	call	_xmlOnceInit
	push	DWORD PTR _globalkey
	call	DWORD PTR __imp__TlsGetValue@4
	test	eax, eax
	jne	$LN1@xmlGetGlob

; 580  :     gs = malloc(sizeof(xmlGlobalState));

	push	esi
	mov	esi, DWORD PTR __imp__malloc
	push	edi
	push	516					; 00000204H
	call	esi
	mov	edi, eax
	add	esp, 4

; 581  :     if (gs == NULL) {

	test	edi, edi
	jne	SHORT $LN7@xmlGetGlob

; 582  : 	xmlGenericError(xmlGenericErrorContext,

	call	___xmlGenericError
	mov	esi, eax
	call	___xmlGenericErrorContext
	push	OFFSET ??_C@_0CC@JHDJFHHF@xmlGetGlobalState?3?5out?5of?5memor@
	push	DWORD PTR [eax]
	mov	eax, DWORD PTR [esi]
	call	eax
	add	esp, 8

; 656  : #ifdef HAVE_PTHREAD_H
; 657  :     xmlGlobalState *globalval;
; 658  : 
; 659  :     if (libxml_is_threaded == 0)
; 660  :         return (NULL);
; 661  : 
; 662  :     pthread_once(&once_control, xmlOnceInit);
; 663  : 
; 664  :     if ((globalval = (xmlGlobalState *)
; 665  :          pthread_getspecific(globalkey)) == NULL) {
; 666  :         xmlGlobalState *tsd = xmlNewGlobalState();
; 667  : 	if (tsd == NULL)
; 668  : 	    return(NULL);
; 669  : 
; 670  :         pthread_setspecific(globalkey, tsd);
; 671  :         return (tsd);
; 672  :     }
; 673  :     return (globalval);
; 674  : #elif defined HAVE_WIN32_THREADS
; 675  : #if defined(HAVE_COMPILER_TLS)
; 676  :     if (!tlstate_inited) {
; 677  :         tlstate_inited = 1;
; 678  :         xmlInitializeGlobalState(&tlstate);
; 679  :     }
; 680  :     return &tlstate;
; 681  : #else /* HAVE_COMPILER_TLS */
; 682  :     xmlGlobalState *globalval;
; 683  :     xmlGlobalStateCleanupHelperParams *p;
; 684  : 
; 685  :     xmlOnceInit();
; 686  : #if defined(LIBXML_STATIC) && !defined(LIBXML_STATIC_FOR_DLL)
; 687  :     globalval = (xmlGlobalState *) TlsGetValue(globalkey);
; 688  : #else
; 689  :     p = (xmlGlobalStateCleanupHelperParams *) TlsGetValue(globalkey);
; 690  :     globalval = (xmlGlobalState *) (p ? p->memory : NULL);
; 691  : #endif
; 692  :     if (globalval == NULL) {
; 693  :         xmlGlobalState *tsd = xmlNewGlobalState();
; 694  : 
; 695  :         if (tsd == NULL)
; 696  : 	    return(NULL);

	xor	eax, eax
	pop	edi
	pop	esi

; 725  :     }
; 726  :     return (globalval);
; 727  : #endif /* HAVE_COMPILER_TLS */
; 728  : #elif defined HAVE_BEOS_THREADS
; 729  :     xmlGlobalState *globalval;
; 730  : 
; 731  :     xmlOnceInit();
; 732  : 
; 733  :     if ((globalval = (xmlGlobalState *) tls_get(globalkey)) == NULL) {
; 734  :         xmlGlobalState *tsd = xmlNewGlobalState();
; 735  : 	if (tsd == NULL)
; 736  : 	    return (NULL);
; 737  : 
; 738  :         tls_set(globalkey, tsd);
; 739  :         on_exit_thread(xmlGlobalStateCleanup, NULL);
; 740  :         return (tsd);
; 741  :     }
; 742  :     return (globalval);
; 743  : #else
; 744  :     return (NULL);
; 745  : #endif
; 746  : }

	ret	0
$LN7@xmlGetGlob:
	push	ebx

; 587  :     memset(gs, 0, sizeof(xmlGlobalState));

	push	516					; 00000204H
	push	0
	push	edi
	call	_memset

; 588  :     xmlInitializeGlobalState(gs);

	push	edi
	call	_xmlInitializeGlobalState

; 697  :         p = (xmlGlobalStateCleanupHelperParams *)

	push	8
	call	esi
	mov	ebx, eax
	add	esp, 20					; 00000014H

; 698  :             malloc(sizeof(xmlGlobalStateCleanupHelperParams));
; 699  : 	if (p == NULL) {

	test	ebx, ebx
	jne	SHORT $LN4@xmlGetGlob

; 700  :             xmlGenericError(xmlGenericErrorContext,

	call	___xmlGenericError
	mov	esi, eax
	call	___xmlGenericErrorContext
	push	OFFSET ??_C@_0CC@JHDJFHHF@xmlGetGlobalState?3?5out?5of?5memor@
	push	DWORD PTR [eax]
	mov	eax, DWORD PTR [esi]
	call	eax

; 562  :     xmlResetError(&(gs->xmlLastError));

	lea	eax, DWORD PTR [edi+452]
	push	eax
	call	_xmlResetError

; 563  :     free(state);

	push	edi
	call	DWORD PTR __imp__free
	add	esp, 16					; 00000010H

; 701  :                             "xmlGetGlobalState: out of memory\n");
; 702  :             xmlFreeGlobalState(tsd);
; 703  : 	    return(NULL);

	xor	eax, eax
	pop	ebx
	pop	edi
	pop	esi

; 725  :     }
; 726  :     return (globalval);
; 727  : #endif /* HAVE_COMPILER_TLS */
; 728  : #elif defined HAVE_BEOS_THREADS
; 729  :     xmlGlobalState *globalval;
; 730  : 
; 731  :     xmlOnceInit();
; 732  : 
; 733  :     if ((globalval = (xmlGlobalState *) tls_get(globalkey)) == NULL) {
; 734  :         xmlGlobalState *tsd = xmlNewGlobalState();
; 735  : 	if (tsd == NULL)
; 736  : 	    return (NULL);
; 737  : 
; 738  :         tls_set(globalkey, tsd);
; 739  :         on_exit_thread(xmlGlobalStateCleanup, NULL);
; 740  :         return (tsd);
; 741  :     }
; 742  :     return (globalval);
; 743  : #else
; 744  :     return (NULL);
; 745  : #endif
; 746  : }

	ret	0
$LN4@xmlGetGlob:

; 704  : 	}
; 705  :         p->memory = tsd;
; 706  : #if defined(LIBXML_STATIC) && !defined(LIBXML_STATIC_FOR_DLL)
; 707  :         DuplicateHandle(GetCurrentProcess(), GetCurrentThread(),

	mov	esi, DWORD PTR __imp__GetCurrentProcess@0
	push	2
	push	1
	push	0
	push	ebx
	mov	DWORD PTR [ebx+4], edi
	call	esi
	push	eax
	call	DWORD PTR __imp__GetCurrentThread@0
	push	eax
	call	esi
	push	eax
	call	DWORD PTR __imp__DuplicateHandle@28

; 708  :                         GetCurrentProcess(), &p->thread, 0, TRUE,
; 709  :                         DUPLICATE_SAME_ACCESS);
; 710  :         TlsSetValue(globalkey, tsd);

	push	edi
	push	DWORD PTR _globalkey
	call	DWORD PTR __imp__TlsSetValue@8

; 711  :         _beginthread(xmlGlobalStateCleanupHelper, 0, p);

	push	ebx
	push	0
	push	OFFSET _xmlGlobalStateCleanupHelper
	call	DWORD PTR __imp___beginthread
	add	esp, 12					; 0000000cH

; 712  : #else
; 713  :         EnterCriticalSection(&cleanup_helpers_cs);
; 714  :         if (cleanup_helpers_head != NULL) {
; 715  :             cleanup_helpers_head->prev = p;
; 716  :         }
; 717  :         p->next = cleanup_helpers_head;
; 718  :         p->prev = NULL;
; 719  :         cleanup_helpers_head = p;
; 720  :         TlsSetValue(globalkey, p);
; 721  :         LeaveCriticalSection(&cleanup_helpers_cs);
; 722  : #endif
; 723  : 
; 724  :         return (tsd);

	mov	eax, edi
	pop	ebx
	pop	edi
	pop	esi
$LN1@xmlGetGlob:

; 725  :     }
; 726  :     return (globalval);
; 727  : #endif /* HAVE_COMPILER_TLS */
; 728  : #elif defined HAVE_BEOS_THREADS
; 729  :     xmlGlobalState *globalval;
; 730  : 
; 731  :     xmlOnceInit();
; 732  : 
; 733  :     if ((globalval = (xmlGlobalState *) tls_get(globalkey)) == NULL) {
; 734  :         xmlGlobalState *tsd = xmlNewGlobalState();
; 735  : 	if (tsd == NULL)
; 736  : 	    return (NULL);
; 737  : 
; 738  :         tls_set(globalkey, tsd);
; 739  :         on_exit_thread(xmlGlobalStateCleanup, NULL);
; 740  :         return (tsd);
; 741  :     }
; 742  :     return (globalval);
; 743  : #else
; 744  :     return (NULL);
; 745  : #endif
; 746  : }

	ret	0
_xmlGetGlobalState ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c
;	COMDAT _xmlCleanupThreads
_TEXT	SEGMENT
_xmlCleanupThreads PROC					; COMDAT
	mov	ecx, OFFSET __14D63317_threads@c
	jmp	@__CheckForDebuggerJustMyCode@4
_xmlCleanupThreads ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c
;	COMDAT _xmlIsMainThread
_TEXT	SEGMENT
_xmlIsMainThread PROC					; COMDAT
	mov	ecx, OFFSET __14D63317_threads@c
	call	@__CheckForDebuggerJustMyCode@4
	call	_xmlOnceInit
	call	DWORD PTR __imp__GetCurrentThreadId@0
	xor	ecx, ecx
	cmp	DWORD PTR _mainthread, eax
	sete	cl
	mov	eax, ecx
	ret	0
_xmlIsMainThread ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c
;	COMDAT _xmlGetThreadId
_TEXT	SEGMENT
_xmlGetThreadId PROC					; COMDAT
	mov	ecx, OFFSET __14D63317_threads@c
	call	@__CheckForDebuggerJustMyCode@4

; 766  : #ifdef HAVE_PTHREAD_H
; 767  :     pthread_t id;
; 768  :     int ret;
; 769  : 
; 770  :     if (libxml_is_threaded == 0)
; 771  :         return (0);
; 772  :     id = pthread_self();
; 773  :     /* horrible but preserves compat, see warning above */
; 774  :     memcpy(&ret, &id, sizeof(ret));
; 775  :     return (ret);
; 776  : #elif defined HAVE_WIN32_THREADS
; 777  :     return GetCurrentThreadId();

	jmp	DWORD PTR __imp__GetCurrentThreadId@0
_xmlGetThreadId ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c
;	COMDAT _xmlUnlockLibrary
_TEXT	SEGMENT
_xmlUnlockLibrary PROC					; COMDAT
	mov	ecx, OFFSET __14D63317_threads@c
	call	@__CheckForDebuggerJustMyCode@4

; 390  :     if (tok == NULL)

	mov	ecx, DWORD PTR _xmlLibraryLock
	test	ecx, ecx
	je	SHORT $LN5@xmlUnlockL

; 391  :         return;
; 392  : #ifdef HAVE_PTHREAD_H
; 393  :     if (libxml_is_threaded == 0)
; 394  :         return;
; 395  : 
; 396  :     pthread_mutex_lock(&tok->lock);
; 397  :     tok->held--;
; 398  :     if (tok->held == 0) {
; 399  :         if (tok->waiters)
; 400  :             pthread_cond_signal(&tok->cv);
; 401  :         memset(&tok->tid, 0, sizeof(tok->tid));
; 402  :     }
; 403  :     pthread_mutex_unlock(&tok->lock);
; 404  : #elif defined HAVE_WIN32_THREADS
; 405  :     if (tok->count > 0) {

	mov	eax, DWORD PTR [ecx+24]
	test	eax, eax
	je	SHORT $LN5@xmlUnlockL

; 406  : 	tok->count--;

	dec	eax

; 407  :         LeaveCriticalSection(&tok->cs);

	push	ecx
	mov	DWORD PTR [ecx+24], eax
	call	DWORD PTR __imp__LeaveCriticalSection@4
$LN5@xmlUnlockL:

; 845  : #ifdef DEBUG_THREADS
; 846  :     xmlGenericError(xmlGenericErrorContext, "xmlUnlockLibrary()\n");
; 847  : #endif
; 848  :     xmlRMutexUnlock(xmlLibraryLock);
; 849  : }

	ret	0
_xmlUnlockLibrary ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c
;	COMDAT _xmlLockLibrary
_TEXT	SEGMENT
_xmlLockLibrary PROC					; COMDAT

; 829  : {

	push	esi
	mov	ecx, OFFSET __14D63317_threads@c
	call	@__CheckForDebuggerJustMyCode@4
	mov	esi, DWORD PTR _xmlLibraryLock
	test	esi, esi

; 345  :     if (tok == NULL)

	je	SHORT $LN3@xmlLockLib

; 346  :         return;
; 347  : #ifdef HAVE_PTHREAD_H
; 348  :     if (libxml_is_threaded == 0)
; 349  :         return;
; 350  : 
; 351  :     pthread_mutex_lock(&tok->lock);
; 352  :     if (tok->held) {
; 353  :         if (pthread_equal(tok->tid, pthread_self())) {
; 354  :             tok->held++;
; 355  :             pthread_mutex_unlock(&tok->lock);
; 356  :             return;
; 357  :         } else {
; 358  :             tok->waiters++;
; 359  :             while (tok->held)
; 360  :                 pthread_cond_wait(&tok->cv, &tok->lock);
; 361  :             tok->waiters--;
; 362  :         }
; 363  :     }
; 364  :     tok->tid = pthread_self();
; 365  :     tok->held = 1;
; 366  :     pthread_mutex_unlock(&tok->lock);
; 367  : #elif defined HAVE_WIN32_THREADS
; 368  :     EnterCriticalSection(&tok->cs);

	push	esi
	call	DWORD PTR __imp__EnterCriticalSection@4

; 369  :     tok->count++;

	inc	DWORD PTR [esi+24]
$LN3@xmlLockLib:
	pop	esi

; 830  : #ifdef DEBUG_THREADS
; 831  :     xmlGenericError(xmlGenericErrorContext, "xmlLockLibrary()\n");
; 832  : #endif
; 833  :     xmlRMutexLock(xmlLibraryLock);
; 834  : }

	ret	0
_xmlLockLibrary ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c
;	COMDAT _xmlInitThreads
_TEXT	SEGMENT
_xmlInitThreads PROC					; COMDAT
	mov	ecx, OFFSET __14D63317_threads@c
	jmp	@__CheckForDebuggerJustMyCode@4
_xmlInitThreads ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c
;	COMDAT _xmlFreeRMutex
_TEXT	SEGMENT
_tok$ = 8						; size = 4
_xmlFreeRMutex PROC					; COMDAT

; 320  : {

	push	ebp
	mov	ebp, esp
	push	esi
	mov	ecx, OFFSET __14D63317_threads@c
	call	@__CheckForDebuggerJustMyCode@4
	mov	esi, DWORD PTR _tok$[ebp]
	test	esi, esi
	je	SHORT $LN1@xmlFreeRMu

; 321  :     if (tok == NULL)
; 322  :         return;
; 323  : #ifdef HAVE_PTHREAD_H
; 324  :     if (libxml_is_threaded != 0) {
; 325  :         pthread_mutex_destroy(&tok->lock);
; 326  :         pthread_cond_destroy(&tok->cv);
; 327  :     }
; 328  : #elif defined HAVE_WIN32_THREADS
; 329  :     DeleteCriticalSection(&tok->cs);

	push	esi
	call	DWORD PTR __imp__DeleteCriticalSection@4

; 330  : #elif defined HAVE_BEOS_THREADS
; 331  :     xmlFreeMutex(tok->lock);
; 332  : #endif
; 333  :     free(tok);

	push	esi
	call	DWORD PTR __imp__free
	add	esp, 4
$LN1@xmlFreeRMu:
	pop	esi

; 334  : }

	pop	ebp
	ret	0
_xmlFreeRMutex ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c
;	COMDAT _xmlRMutexUnlock
_TEXT	SEGMENT
_tok$ = 8						; size = 4
_xmlRMutexUnlock PROC					; COMDAT

; 389  : {

	push	ebp
	mov	ebp, esp
	mov	ecx, OFFSET __14D63317_threads@c
	call	@__CheckForDebuggerJustMyCode@4
	mov	ecx, DWORD PTR _tok$[ebp]
	test	ecx, ecx
	je	SHORT $LN3@xmlRMutexU

; 390  :     if (tok == NULL)
; 391  :         return;
; 392  : #ifdef HAVE_PTHREAD_H
; 393  :     if (libxml_is_threaded == 0)
; 394  :         return;
; 395  : 
; 396  :     pthread_mutex_lock(&tok->lock);
; 397  :     tok->held--;
; 398  :     if (tok->held == 0) {
; 399  :         if (tok->waiters)
; 400  :             pthread_cond_signal(&tok->cv);
; 401  :         memset(&tok->tid, 0, sizeof(tok->tid));
; 402  :     }
; 403  :     pthread_mutex_unlock(&tok->lock);
; 404  : #elif defined HAVE_WIN32_THREADS
; 405  :     if (tok->count > 0) {

	mov	eax, DWORD PTR [ecx+24]
	test	eax, eax
	je	SHORT $LN3@xmlRMutexU

; 406  : 	tok->count--;

	dec	eax

; 407  :         LeaveCriticalSection(&tok->cs);

	push	ecx
	mov	DWORD PTR [ecx+24], eax
	call	DWORD PTR __imp__LeaveCriticalSection@4
$LN3@xmlRMutexU:

; 408  :     }
; 409  : #elif defined HAVE_BEOS_THREADS
; 410  :     if (tok->lock->tid == find_thread(NULL)) {
; 411  :         tok->count--;
; 412  :         if (tok->count == 0) {
; 413  :             xmlMutexUnlock(tok->lock);
; 414  :         }
; 415  :         return;
; 416  :     }
; 417  : #endif
; 418  : }

	pop	ebp
	ret	0
_xmlRMutexUnlock ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c
;	COMDAT _xmlRMutexLock
_TEXT	SEGMENT
_tok$ = 8						; size = 4
_xmlRMutexLock PROC					; COMDAT

; 344  : {

	push	ebp
	mov	ebp, esp
	push	esi
	mov	ecx, OFFSET __14D63317_threads@c
	call	@__CheckForDebuggerJustMyCode@4
	mov	esi, DWORD PTR _tok$[ebp]
	test	esi, esi
	je	SHORT $LN1@xmlRMutexL

; 345  :     if (tok == NULL)
; 346  :         return;
; 347  : #ifdef HAVE_PTHREAD_H
; 348  :     if (libxml_is_threaded == 0)
; 349  :         return;
; 350  : 
; 351  :     pthread_mutex_lock(&tok->lock);
; 352  :     if (tok->held) {
; 353  :         if (pthread_equal(tok->tid, pthread_self())) {
; 354  :             tok->held++;
; 355  :             pthread_mutex_unlock(&tok->lock);
; 356  :             return;
; 357  :         } else {
; 358  :             tok->waiters++;
; 359  :             while (tok->held)
; 360  :                 pthread_cond_wait(&tok->cv, &tok->lock);
; 361  :             tok->waiters--;
; 362  :         }
; 363  :     }
; 364  :     tok->tid = pthread_self();
; 365  :     tok->held = 1;
; 366  :     pthread_mutex_unlock(&tok->lock);
; 367  : #elif defined HAVE_WIN32_THREADS
; 368  :     EnterCriticalSection(&tok->cs);

	push	esi
	call	DWORD PTR __imp__EnterCriticalSection@4

; 369  :     tok->count++;

	inc	DWORD PTR [esi+24]
$LN1@xmlRMutexL:
	pop	esi

; 370  : #elif defined HAVE_BEOS_THREADS
; 371  :     if (tok->lock->tid == find_thread(NULL)) {
; 372  :         tok->count++;
; 373  :         return;
; 374  :     } else {
; 375  :         xmlMutexLock(tok->lock);
; 376  :         tok->count = 1;
; 377  :     }
; 378  : #endif
; 379  : }

	pop	ebp
	ret	0
_xmlRMutexLock ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c
;	COMDAT _xmlNewRMutex
_TEXT	SEGMENT
_xmlNewRMutex PROC					; COMDAT

; 286  : {

	push	esi
	mov	ecx, OFFSET __14D63317_threads@c
	call	@__CheckForDebuggerJustMyCode@4
	push	28					; 0000001cH
	call	DWORD PTR __imp__malloc
	mov	esi, eax
	add	esp, 4
	test	esi, esi
	jne	SHORT $LN2@xmlNewRMut
	pop	esi

; 309  : }

	ret	0
$LN2@xmlNewRMut:

; 287  :     xmlRMutexPtr tok;
; 288  : 
; 289  :     if ((tok = malloc(sizeof(xmlRMutex))) == NULL)
; 290  :         return (NULL);
; 291  : #ifdef HAVE_PTHREAD_H
; 292  :     if (libxml_is_threaded != 0) {
; 293  :         pthread_mutex_init(&tok->lock, NULL);
; 294  :         tok->held = 0;
; 295  :         tok->waiters = 0;
; 296  :         pthread_cond_init(&tok->cv, NULL);
; 297  :     }
; 298  : #elif defined HAVE_WIN32_THREADS
; 299  :     InitializeCriticalSection(&tok->cs);

	push	esi
	call	DWORD PTR __imp__InitializeCriticalSection@4

; 300  :     tok->count = 0;

	mov	DWORD PTR [esi+24], 0

; 301  : #elif defined HAVE_BEOS_THREADS
; 302  :     if ((tok->lock = xmlNewMutex()) == NULL) {
; 303  :         free(tok);
; 304  :         return NULL;
; 305  :     }
; 306  :     tok->count = 0;
; 307  : #endif
; 308  :     return (tok);

	mov	eax, esi
	pop	esi

; 309  : }

	ret	0
_xmlNewRMutex ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c
;	COMDAT _xmlFreeMutex
_TEXT	SEGMENT
_tok$ = 8						; size = 4
_xmlFreeMutex PROC					; COMDAT

; 207  : {

	push	ebp
	mov	ebp, esp
	push	esi
	mov	ecx, OFFSET __14D63317_threads@c
	call	@__CheckForDebuggerJustMyCode@4
	mov	esi, DWORD PTR _tok$[ebp]
	test	esi, esi
	je	SHORT $LN1@xmlFreeMut

; 208  :     if (tok == NULL)
; 209  :         return;
; 210  : 
; 211  : #ifdef HAVE_PTHREAD_H
; 212  :     if (libxml_is_threaded != 0)
; 213  :         pthread_mutex_destroy(&tok->lock);
; 214  : #elif defined HAVE_WIN32_THREADS
; 215  :     CloseHandle(tok->mutex);

	push	DWORD PTR [esi]
	call	DWORD PTR __imp__CloseHandle@4

; 216  : #elif defined HAVE_BEOS_THREADS
; 217  :     delete_sem(tok->sem);
; 218  : #endif
; 219  :     free(tok);

	push	esi
	call	DWORD PTR __imp__free
	add	esp, 4
$LN1@xmlFreeMut:
	pop	esi

; 220  : }

	pop	ebp
	ret	0
_xmlFreeMutex ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c
;	COMDAT _xmlMutexUnlock
_TEXT	SEGMENT
_tok$ = 8						; size = 4
_xmlMutexUnlock PROC					; COMDAT

; 258  : {

	push	ebp
	mov	ebp, esp
	mov	ecx, OFFSET __14D63317_threads@c
	call	@__CheckForDebuggerJustMyCode@4
	mov	eax, DWORD PTR _tok$[ebp]
	test	eax, eax
	je	SHORT $LN1@xmlMutexUn

; 259  :     if (tok == NULL)
; 260  :         return;
; 261  : #ifdef HAVE_PTHREAD_H
; 262  :     if (libxml_is_threaded != 0)
; 263  :         pthread_mutex_unlock(&tok->lock);
; 264  : #elif defined HAVE_WIN32_THREADS
; 265  :     ReleaseMutex(tok->mutex);

	push	DWORD PTR [eax]
	call	DWORD PTR __imp__ReleaseMutex@4
$LN1@xmlMutexUn:

; 266  : #elif defined HAVE_BEOS_THREADS
; 267  :     if (tok->tid == find_thread(NULL)) {
; 268  :         tok->tid = -1;
; 269  :         release_sem(tok->sem);
; 270  :     }
; 271  : #endif
; 272  : }

	pop	ebp
	ret	0
_xmlMutexUnlock ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c
;	COMDAT _xmlMutexLock
_TEXT	SEGMENT
_tok$ = 8						; size = 4
_xmlMutexLock PROC					; COMDAT

; 230  : {

	push	ebp
	mov	ebp, esp
	mov	ecx, OFFSET __14D63317_threads@c
	call	@__CheckForDebuggerJustMyCode@4
	mov	eax, DWORD PTR _tok$[ebp]
	test	eax, eax
	je	SHORT $LN1@xmlMutexLo

; 231  :     if (tok == NULL)
; 232  :         return;
; 233  : #ifdef HAVE_PTHREAD_H
; 234  :     if (libxml_is_threaded != 0)
; 235  :         pthread_mutex_lock(&tok->lock);
; 236  : #elif defined HAVE_WIN32_THREADS
; 237  :     WaitForSingleObject(tok->mutex, INFINITE);

	push	-1
	push	DWORD PTR [eax]
	call	DWORD PTR __imp__WaitForSingleObject@8
$LN1@xmlMutexLo:

; 238  : #elif defined HAVE_BEOS_THREADS
; 239  :     if (acquire_sem(tok->sem) != B_NO_ERROR) {
; 240  : #ifdef DEBUG_THREADS
; 241  :         xmlGenericError(xmlGenericErrorContext,
; 242  :                         "xmlMutexLock():BeOS:Couldn't aquire semaphore\n");
; 243  : #endif
; 244  :     }
; 245  :     tok->tid = find_thread(NULL);
; 246  : #endif
; 247  : 
; 248  : }

	pop	ebp
	ret	0
_xmlMutexLock ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c
;	COMDAT _xmlNewMutex
_TEXT	SEGMENT
_xmlNewMutex PROC					; COMDAT

; 178  : {

	push	esi
	mov	ecx, OFFSET __14D63317_threads@c
	call	@__CheckForDebuggerJustMyCode@4
	push	4
	call	DWORD PTR __imp__malloc
	mov	esi, eax
	add	esp, 4
	test	esi, esi
	jne	SHORT $LN2@xmlNewMute
	pop	esi

; 196  : }

	ret	0
$LN2@xmlNewMute:

; 179  :     xmlMutexPtr tok;
; 180  : 
; 181  :     if ((tok = malloc(sizeof(xmlMutex))) == NULL)
; 182  :         return (NULL);
; 183  : #ifdef HAVE_PTHREAD_H
; 184  :     if (libxml_is_threaded != 0)
; 185  :         pthread_mutex_init(&tok->lock, NULL);
; 186  : #elif defined HAVE_WIN32_THREADS
; 187  :     tok->mutex = CreateMutex(NULL, FALSE, NULL);

	push	0
	push	0
	push	0
	call	DWORD PTR __imp__CreateMutexW@12
	mov	DWORD PTR [esi], eax

; 188  : #elif defined HAVE_BEOS_THREADS
; 189  :     if ((tok->sem = create_sem(1, "xmlMutex")) < B_OK) {
; 190  :         free(tok);
; 191  :         return NULL;
; 192  :     }
; 193  :     tok->tid = -1;
; 194  : #endif
; 195  :     return (tok);

	mov	eax, esi
	pop	esi

; 196  : }

	ret	0
_xmlNewMutex ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c
;	COMDAT ___xmlGlobalInitMutexDestroy
_TEXT	SEGMENT
___xmlGlobalInitMutexDestroy PROC			; COMDAT
	mov	ecx, OFFSET __14D63317_threads@c
	call	@__CheckForDebuggerJustMyCode@4
	cmp	DWORD PTR _global_init_lock, 0
	je	SHORT $LN2@xmlGlobalI

; 528  : #ifdef HAVE_PTHREAD_H
; 529  : #elif defined HAVE_WIN32_THREADS
; 530  :     if (global_init_lock != NULL) {
; 531  :         DeleteCriticalSection(global_init_lock);

	mov	eax, DWORD PTR _global_init_lock
	push	eax
	call	DWORD PTR __imp__DeleteCriticalSection@4

; 532  :         free(global_init_lock);

	mov	eax, DWORD PTR _global_init_lock
	push	eax
	call	DWORD PTR __imp__free
	add	esp, 4

; 533  :         global_init_lock = NULL;

	mov	DWORD PTR _global_init_lock, 0
$LN2@xmlGlobalI:

; 534  :     }
; 535  : #endif
; 536  : }

	ret	0
___xmlGlobalInitMutexDestroy ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c
;	COMDAT ___xmlGlobalInitMutexUnlock
_TEXT	SEGMENT
___xmlGlobalInitMutexUnlock PROC			; COMDAT
	mov	ecx, OFFSET __14D63317_threads@c
	call	@__CheckForDebuggerJustMyCode@4
	cmp	DWORD PTR _global_init_lock, 0
	je	SHORT $LN2@xmlGlobalI

; 504  : #ifdef HAVE_PTHREAD_H
; 505  : #ifdef XML_PTHREAD_WEAK
; 506  :     if (pthread_mutex_unlock == NULL)
; 507  :         return;
; 508  : #endif /* XML_PTHREAD_WEAK */
; 509  :     pthread_mutex_unlock(&global_init_lock);
; 510  : #elif defined HAVE_WIN32_THREADS
; 511  :     if (global_init_lock != NULL) {
; 512  : 	LeaveCriticalSection(global_init_lock);

	mov	eax, DWORD PTR _global_init_lock
	push	eax
	call	DWORD PTR __imp__LeaveCriticalSection@4
$LN2@xmlGlobalI:

; 513  :     }
; 514  : #elif defined HAVE_BEOS_THREADS
; 515  :     release_sem(global_init_lock);
; 516  : #endif
; 517  : }

	ret	0
___xmlGlobalInitMutexUnlock ENDP
_TEXT	ENDS
; Function compile flags: /Ogtp
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c
; File c:\program files (x86)\windows kits\10\include\10.0.17763.0\um\winnt.h
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c
;	COMDAT ___xmlGlobalInitMutexLock
_TEXT	SEGMENT
___xmlGlobalInitMutexLock PROC				; COMDAT

; 428  : {

	push	esi
	mov	ecx, OFFSET __14D63317_threads@c
	call	@__CheckForDebuggerJustMyCode@4
	cmp	DWORD PTR _global_init_lock, 0
	jne	SHORT $LN4@xmlGlobalI

; 429  :     /* Make sure the global init lock is initialized and then lock it. */
; 430  : #ifdef HAVE_PTHREAD_H
; 431  :     /* The mutex is statically initialized, so we just lock it. */
; 432  : #ifdef XML_PTHREAD_WEAK
; 433  :     if (pthread_mutex_lock == NULL)
; 434  :         return;
; 435  : #endif /* XML_PTHREAD_WEAK */
; 436  :     pthread_mutex_lock(&global_init_lock);
; 437  : #elif defined HAVE_WIN32_THREADS
; 438  :     LPCRITICAL_SECTION cs;
; 439  : 
; 440  :     /* Create a new critical section */
; 441  :     if (global_init_lock == NULL) {
; 442  :         cs = malloc(sizeof(CRITICAL_SECTION));

	push	24					; 00000018H
	call	DWORD PTR __imp__malloc
	mov	esi, eax
	add	esp, 4

; 443  :         if (cs == NULL) {

	test	esi, esi
	jne	SHORT $LN3@xmlGlobalI

; 444  :             xmlGenericError(xmlGenericErrorContext,

	call	___xmlGenericError
	mov	esi, eax
	call	___xmlGenericErrorContext
	push	OFFSET ??_C@_0CH@DGKHILDB@xmlGlobalInitMutexLock?3?5out?5of?5@
	push	DWORD PTR [eax]
	mov	eax, DWORD PTR [esi]
	call	eax
	add	esp, 8
	pop	esi

; 470  : #elif defined HAVE_BEOS_THREADS
; 471  :     int32 sem;
; 472  : 
; 473  :     /* Allocate a new semaphore */
; 474  :     sem = create_sem(1, "xmlGlobalinitMutex");
; 475  : 
; 476  :     while (global_init_lock == -1) {
; 477  :         if (atomic_add(&global_init_count, 1) == 0) {
; 478  :             global_init_lock = sem;
; 479  :         } else {
; 480  :             snooze(1);
; 481  :             atomic_add(&global_init_count, -1);
; 482  :         }
; 483  :     }
; 484  : 
; 485  :     /* If another thread successfully recorded its critical
; 486  :      * section in the global_init_lock then discard the one
; 487  :      * allocated by this thread. */
; 488  :     if (global_init_lock != sem)
; 489  :         delete_sem(sem);
; 490  : 
; 491  :     /* Acquire the chosen semaphore */
; 492  :     if (acquire_sem(global_init_lock) != B_NO_ERROR) {
; 493  : #ifdef DEBUG_THREADS
; 494  :         xmlGenericError(xmlGenericErrorContext,
; 495  :                         "xmlGlobalInitMutexLock():BeOS:Couldn't acquire semaphore\n");
; 496  : #endif
; 497  :     }
; 498  : #endif
; 499  : }

	ret	0
$LN3@xmlGlobalI:

; 445  :                             "xmlGlobalInitMutexLock: out of memory\n");
; 446  :             return;
; 447  :         }
; 448  :         InitializeCriticalSection(cs);

	push	esi
	call	DWORD PTR __imp__InitializeCriticalSection@4
; File c:\program files (x86)\windows kits\10\include\10.0.17763.0\um\winnt.h

; 6869 :     return (PVOID)InterlockedCompareExchange((LONG volatile *) Destination,

	mov	ecx, esi
	mov	edx, OFFSET _global_init_lock
	xor	eax, eax
	lock	 cmpxchg DWORD PTR [edx], ecx
; File c:\users\dag\documents\_clients\codeproject authors group\windows on arm\libxml2\libxml2-2.9.9\threads.c

; 462  :         if (global_init_lock != cs) {

	cmp	DWORD PTR _global_init_lock, esi
	je	SHORT $LN4@xmlGlobalI

; 463  :             DeleteCriticalSection(cs);

	push	esi
	call	DWORD PTR __imp__DeleteCriticalSection@4

; 464  :             free(cs);

	push	esi
	call	DWORD PTR __imp__free
	add	esp, 4
$LN4@xmlGlobalI:

; 465  :         }
; 466  :     }
; 467  : 
; 468  :     /* Lock the chosen critical section */
; 469  :     EnterCriticalSection(global_init_lock);

	mov	eax, DWORD PTR _global_init_lock
	push	eax
	call	DWORD PTR __imp__EnterCriticalSection@4
	pop	esi

; 470  : #elif defined HAVE_BEOS_THREADS
; 471  :     int32 sem;
; 472  : 
; 473  :     /* Allocate a new semaphore */
; 474  :     sem = create_sem(1, "xmlGlobalinitMutex");
; 475  : 
; 476  :     while (global_init_lock == -1) {
; 477  :         if (atomic_add(&global_init_count, 1) == 0) {
; 478  :             global_init_lock = sem;
; 479  :         } else {
; 480  :             snooze(1);
; 481  :             atomic_add(&global_init_count, -1);
; 482  :         }
; 483  :     }
; 484  : 
; 485  :     /* If another thread successfully recorded its critical
; 486  :      * section in the global_init_lock then discard the one
; 487  :      * allocated by this thread. */
; 488  :     if (global_init_lock != sem)
; 489  :         delete_sem(sem);
; 490  : 
; 491  :     /* Acquire the chosen semaphore */
; 492  :     if (acquire_sem(global_init_lock) != B_NO_ERROR) {
; 493  : #ifdef DEBUG_THREADS
; 494  :         xmlGenericError(xmlGenericErrorContext,
; 495  :                         "xmlGlobalInitMutexLock():BeOS:Couldn't acquire semaphore\n");
; 496  : #endif
; 497  :     }
; 498  : #endif
; 499  : }

	ret	0
___xmlGlobalInitMutexLock ENDP
_TEXT	ENDS
END