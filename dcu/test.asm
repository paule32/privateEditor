; ------------------------------------
; (c) 2023 by Jens Kallup - paule32
; all rights reserved.
; ------------------------------------
section .code
global _start
_start:
  finit  ; init FPU stack
  fld dword [variable]
  ret

section .text

section .data
variable dd 3.14
