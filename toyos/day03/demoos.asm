; BOOT_INFO
CYLS	EQU		0x0ff0			; 设定启动区
LEDS	EQU		0x0ff1
VMODE	EQU		0x0ff2			; 颜色数目和位数信息
SCRNX	EQU		0x0ff4			; 分辨率的X
SCRNY	EQU		0x0ff6			; 分辨率的Y
VRAM	EQU		0x0ff8			; 图像缓冲区的开始地址

		ORG		0xc200			; 程序装载到的内存地址
		MOV		AL,0x13			;VGA显卡，320*200*8位彩色
		MOV 	AH,0X00
		INT		0x10
		MOV		BYTE [VMODE],8	; 记录画面模式
		MOV		WORD [SCRNX],320
		MOV		WORD [SCRNY],200
		MOV		DWORD [VRAM],0x000a0000
; 用BIOS取得键盘上各种LED指示灯的状态
		MOV		AH,0x02
		INT		0x16 			; keyboard BIOS
		MOV		[LEDS],AL
fin:
		HLT
		JMP		fin
