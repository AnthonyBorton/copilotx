maxTerms    equ 15000	; number of terms of the series to calculate


        digits	    equ (maxTerms*209+1673)/1000	


	cntDigits   equ 6	; number of digits for counter

        org     100h            ; this is a DOS com file

main:	

	mov	ax,'00'		; initialize to all ASCII zeroes
	mov	di,counter		; including the counter
	mov	cx,digits+cntDigits/2	; two bytes at a time
	cld			; initialize from low to high memory
	rep	stosw		; write the data
	inc	ax		; make sure ASCII zero is in al
	mov	[num1 + digits - 1],al ; last digit is one
	mov	[num2 + digits - 1],al ; 
	mov	[counter + cntDigits - 1],al

	jmp	.bottom		; done with initialization, so begin

.top
	; add num1 to num2
	mov	di,num1+digits-1
	mov	si,num2+digits-1
	mov	cx,digits	; 
	call	AddNumbers	; num2 += num1
	mov	bp,num2		;
	call	PrintLine	;
	dec	dword [term]	; decrement loop counter
	jz	.done		;

	; add num2 to num1
	mov	di,num2+digits-1
	mov	si,num1+digits-1
	mov	cx,digits	;
	call	AddNumbers	; num1 += num2
.bottom
	mov	bp,num1		;
	call	PrintLine	;
	dec	dword [term]	; decrement loop counter
	jnz	.top		;
.done
	call	CRLF		; finish off with CRLF
	mov	ax,4c00h	; terminate
	int	21h		;



PrintLine:
	mov	dx,eol		; print combined CRLF and msg1
	mov	cx,msg1len+eollen   ; 
	call	PrintString	;

	mov	di,counter	; print counter
	mov	cx,cntDigits	;
	call	PrintNumericString

	call	IncrementCount	; also increment the counter

	mov	dx,msg2		; print msg2
	mov	cx,msg2len	;
	call	PrintString	;
	
	mov	di,bp		; recall address of number
	mov	cx,digits	;
	; deliberately fall through to PrintNumericString


PrintNumericString:
	; first scan for the first non-zero byte
	mov	al,'0'		; look for ASCII zero
	cld			; scan from MSD to LSD
	repe	scasb		;
	mov	dx,di		; points to one byte after
	dec	dx		; back up one character
	inc	cx		;
	; deliberately fall through to PrintString


PrintString:
	mov	bx, 1		; write to stdout
	mov     ah, 040h        ; write to file handle
	int	21h		; ignore return value
	ret			;


AddNumbers:
	std			; go from LSB to MSB
	clc			;
	pushf			; save carry flag
.top
	mov	ax,0f0fh	; convert from ASCII BCD to BCD
	and  	al,[si]		; get next digit of number2 in al
	and	ah,[di]		; get next digit of number1 in ah
	popf			; recall carry flag
	adc	al,ah		; add these digits
	aaa			; convert to BCD
	pushf			;
	add	al,'0'		; convert back to ASCII BCD digit
	stosb			; save it and increment both counters
	dec	si		;
	loop	.top		; keep going until we've got them all
	popf			; recall carry flag
	ret			;


IncrementCount:
	mov	cx,cntDigits	;
	mov	di,counter+cntDigits-1
	std			; go from LSB to MSB
	stc			; this is our increment
	pushf			; save carry flag
.top
	mov	ax,000fh	; convert from ASCII BCD to BCD
	and	al,[di]		; get next digit of counter in al
	popf			; recall carry flag
	adc	al,ah		; add these digits
	aaa			; convert to BCD
	pushf			;
	add	al,'0'		; convert back to ASCII BCD digit
	stosb			; save and increment counter
	loop	.top		;
	popf			; recall carry flag
	ret			;
	

CRLF:	mov	dx,eol		;
	mov	cx,eollen	;
	jmp	PrintString	;


eol	db  13,10		; DOS-style end of line
eollen	equ $ - eol

msg1	db  'Fibonacci('	;
msg1len	equ $ - msg1

msg2	db  '): '		;
msg2len	equ $ - msg2

term dd maxTerms		;

counter:			;
num1 equ counter+cntDigits	;
num2 equ num1+digits		;
		