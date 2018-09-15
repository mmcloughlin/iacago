#include "textflag.h"
#include "iaca.h"

// func add(x, y float64) float64
TEXT ·add(SB),NOSPLIT,$0
	MOVSD x+0(FP), X0
	MOVSD y+8(FP), X1
	IACA_START
	ADDSD X1, X0
	IACA_END
	MOVSD X0, ret+16(FP)
	RET
