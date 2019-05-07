example	DCD		0x0010070f
numones	FILL		4
		
		adr		r0, example
		adr		r1, numones
		mov		r3, #0 ;this will always be zero
		mov		r2, r0
rep
		movs		r2, r2, lsr #1
		adc		r1, r1, r3 ;adds r1 with zero plus carry bit
		cmp		r2, #0
		bne		rep
