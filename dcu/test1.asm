; ------------------------------------
; (c) 2023 by Jens Kallup - paule32
; all rights reserved.
; ------------------------------------
section .code
global _start
_start:
  finit  ; init FPU stack
  fld dword [float_1]
  ret

section .text

section .data
variable dd 3.14
float_1  dd 3
