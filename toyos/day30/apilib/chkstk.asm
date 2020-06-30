[BITS 32]

		GLOBAL	___chkstk_ms

[SECTION .text]

___chkstk_ms:
		ADD		EAX,-4
		SUB		ESP,EAX
		JMP		DWORD [ESP+EAX]		; RET‚Ì‘ã‚í‚è
