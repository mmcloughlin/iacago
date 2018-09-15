# iacago

[Intel
IACA](https://software.intel.com/en-us/articles/intel-architecture-code-analyzer)
Markers for Golang Assembly.

## Getting Started

1. Copy [iaca.h](iaca.h) to a suitable place in your environment.
2. `#include "iaca.h"` in the header of your Go assembly
3. Use the `IACA_START` and `IACA_END` macros to define the region you want to
   analyze

## Example

[embedmd]:# (example/add_amd64.s)
```s
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
```

See [example directory](example/) for a complete working example.

