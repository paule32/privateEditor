Import_Descriptor:
istruc IMAGE_IMPORT_DESCRIPTOR
    at IMAGE_IMPORT_DESCRIPTOR.OriginalFirstThunk, dd kernel32.dll_hintnames - IMAGEBASE
    at IMAGE_IMPORT_DESCRIPTOR.Name1,              dd kernel32.dll - IMAGEBASE
    at IMAGE_IMPORT_DESCRIPTOR.FirstThunk,         dd kernel32.dll_iat - IMAGEBASE
iend
istruc IMAGE_IMPORT_DESCRIPTOR
    at IMAGE_IMPORT_DESCRIPTOR.OriginalFirstThunk, dd msvcrt.dll_hintnames - IMAGEBASE
    at IMAGE_IMPORT_DESCRIPTOR.Name1,              dd msvcrt.dll - IMAGEBASE
    at IMAGE_IMPORT_DESCRIPTOR.FirstThunk,         dd msvcrt.dll_iat - IMAGEBASE
iend
istruc IMAGE_IMPORT_DESCRIPTOR
iend
_d

kernel32.dll_hintnames:
    dd hnExitProcess - IMAGEBASE
    dd 0
msvcrt.dll_hintnames:
    dd hnprintf - IMAGEBASE
    dd 0
_d

hnExitProcess _IMAGE_IMPORT_BY_NAME 'ExitProcess'
hnprintf      _IMAGE_IMPORT_BY_NAME 'printf'

_d

ImportAddressTable:
kernel32.dll_iat:
__imp__ExitProcess:
    dd hnExitProcess - IMAGEBASE
    dd 0

msvcrt.dll_iat:
__imp__printf:
    dd hnprintf - IMAGEBASE
    dd 0
_d
IAT_size equ $ - ImportAddressTable

kernel32.dll db 'kernel32.dll', 0
msvcrt.dll db 'msvcrt.dll', 0
_d

DIRECTORY_ENTRY_IMPORT_SIZE equ $ - Import_Descriptor
SECTION1VS equ $ - Section1Start

align FILEALIGN,db 0

SECTION1SIZE   EQU $ - Section1Start
SECTION2OFFSET equ $ - Section1Start + SECTION1OFFSET
