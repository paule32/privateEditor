// ------------------------------------------------
// ResBuilder v.1.0
// (c) 2023 by paule32.jk@gmail.com
//
// THIS FILE WAS AUTOMATICALLY CREATED.
// ------------------------------------------------
unit RF_40;
interface
const
  TByteArray_c64key32: Array [0..1342] of Byte = (
$00, $0C, $63, $36, $34, $6B, $65, $79, $33, $32, $2E, $62, $6D, $70, $1A, $2E, $00, $00, $28, 
$05, $00, $00, $78, $DA, $ED, $9A, $49, $48, $1C, $69, $14, $C7, $D5, $B9, $B8, $A0, $51, $73, $70, 
$83, $E0, $0E, $A2, $26, $6E, $18, $C5, $98, $43, $54, $46, $C4, $B9, $0C, $88, $1E, $5C, $10, $D1, 
$88, $07, $25, $51, $C4, $E8, $80, $CB, $45, $18, $48, $1C, $14, $A2, $A0, $20, $B8, $81, $A0, $88, 
$17, $15, $35, $71, $5F, $E2, $72, $30, $20, $9A, $C4, $68, $50, $22, $EE, $B8, $E2, $0A, $6F, $FC, 
$BF, $4C, $F5, $74, $B7, $D5, $6D, $7A, $98, $9E, $EE, $CE, $54, $E3, $C3, $EE, $AA, $EF, $AB, $7A, 
$BF, $FA, $BE, $B7, $7C, $EF, $AB, $27, $BF, $38, $DE, $37, $E2, $CF, $EF, $D7, $F2, $DB, $B5, $04, 
$FF, $25, $C6, $46, $CE, $46, $3F, $5D, $FF, $FF, $C3, $D7, $C8, $C8, $ED, $FE, $37, $F9, $FB, $43, 
$C2, $1F, $FF, $78, $F2, $F3, $AF, $B9, $46, $1A, $7E, $4C, $94, $7E, $EF, $ED, $ED, $11, $A4, $A6, 
$A6, $86, $02, $02, $02, $C8, $C6, $C6, $86, $BE, $DD, $C8, $70, $C4, $D6, $D6, $96, $82, $82, $82, 
$A8, $A2, $A2, $82, $04, $1E, $48, $64, $64, $24, $F9, $F9, $F9, $51, $65, $65, $25, $75, $76, $76, 
$D2, $F0, $F0, $B0, $41, $09, $74, $7E, $F5, $EA, $15, $B9, $BB, $BB, $53, $44, $44, $04, $33, $F5, 
$F4, $F4, $90, $93, $93, $13, $9F, $9F, $9A, $9A, $A2, $E9, $E9, $69, $9A, $99, $99, $31, $28, $81, 
$CE, $EF, $DE, $BD, $A3, $C1, $C1, $41, $B2, $B0, $B0, $60, $A6, $A8, $A8, $28, $1E, $3F, $43, $63, 
$51, $25, $C5, $C5, $C5, $94, $96, $96, $46, $76, $76, $76, $D4, $DD, $DD, $FD, $C3, $70, $75, $75, 
$75, $91, $87, $87, $07, $19, $1B, $1B, $1B, $E4, $DC, $53, $37, $27, $4D, $4C, $4C, $D8, $9F, $FC, 
$28, $4C, $82, $08, $7E, $52, $E2, $32, $7C, $2E, $F8, $FC, $A1, $A1, $21, $EA, $EB, $EB, $63, $BF, 
$A9, $4F, $02, $9D, $84, $B8, $A4, $29, $17, $62, $C1, $E4, $E4, $24, $1D, $1E, $1E, $D2, $F9, $F9, 
$B9, $5E, $09, $74, $82, $6E, $D0, $51, $53, $AE, $DE, $DE, $5E, $3A, $3A, $3A, $A2, $AB, $AB, $2B, 
$BD, $14, $E8, $06, $1D, $35, $E5, $42, $4C, $D3, $57, $26, $41, $54, $C5, $5D, $89, $4B, $E2, $92, 
$B8, $24, $2E, $89, $4B, $E2, $92, $B8, $24, $2E, $89, $4B, $E2, $92, $B8, $14, $B9, $9A, $9A, $9A, 
$E8, $D1, $A3, $47, $F4, $F0, $E1, $43, $0A, $09, $09, $A1, $CC, $CC, $4C, $DA, $DA, $DA, $52, $68, 
$B3, $B4, $B4, $44, $8E, $8E, $8E, $A2, $3A, $BC, $79, $F3, $86, $62, $62, $62, $B8, $FE, $FA, $E0, 
$C1, $03, $4A, $4E, $4E, $A6, $4F, $9F, $3E, $7D, $57, $5F, $6D, $71, $61, $DD, $EC, $EA, $EA, $4A, 
$B3, $B3, $B3, $BC, $A6, $DB, $DF, $DF, $E7, $3A, $5D, $52, $52, $92, $C2, $7D, $3E, $7E, $FC, $48, 
$77, $EE, $DC, $B9, $71, $FF, $81, $81, $01, $AE, $7D, $61, $AD, $8B, $FE, $07, $07, $07, $FC, $9C, 
$BC, $BD, $BD, $69, $6D, $6D, $4D, $6D, $5F, $6D, $72, $2D, $2F, $2F, $F3, $F3, $BE, $B8, $B8, $90, 
$1D, $9B, $98, $98, $20, $17, $17, $97, $EF, $E2, $42, $9D, $BC, $AA, $AA, $8A, $D7, $BA, $C2, $B1, 
$B3, $B3, $33, $CA, $CE, $CE, $A6, $BC, $BC, $3C, $9D, $71, $5D, $5E, $5E, $2A, $E8, $F4, $FE, $FD, 
$7B, $8A, $8B, $8B, $63, $7D, $6F, $E3, $C2, $F8, $A0, $B6, $FC, $E5, $CB, $17, $51, $BD, $30, $2F, 
$85, $BE, $66, $66, $66, $3C, $CF, $21, $C1, $C1, $C1, $94, $9B, $9B, $CB, $FD, $B5, $69, $5F, $3B, 
$3B, $3B, $54, $54, $54, $C4, $B6, $71, $F7, $EE, $5D, $8A, $8D, $8D, $A5, $85, $85, $85, $5B, $B9, 
$56, $56, $56, $58, $5F, $F9, $B1, $16, $64, $6E, $6E, $4E, $66, $53, $42, $5F, $70, $40, $76, $77, 
$77, $29, $35, $35, $95, $0A, $0A, $0A, $B4, $3A, $5E, $E1, $E1, $E1, $F4, $F8, $F1, $63, $AA, $AF, 
$AF, $E7, $79, $79, $7C, $7C, $CC, $C7, $6F, $E3, $82, $7E, $A6, $A6, $A6, $B4, $B1, $B1, $21, $EA, 
$4B, $BC, $BC, $BC, $54, $F6, $1D, $19, $19, $21, $1F, $1F, $1F, $AD, $71, $AD, $AF, $AF, $F3, $5C, 
$FA, $FA, $F5, $2B, $DB, $05, $78, $E0, $3B, $94, $E7, $88, $98, $6E, $68, $8B, $7D, $B5, $C6, $C6, 
$C6, $1B, $7A, $E5, $E7, $E7, $53, $7A, $7A, $BA, $CA, $BE, $F0, $53, $6E, $6E, $6E, $5A, $E3, $02, 
$8B, $BD, $BD, $3D, $FB, $45, $FC, $3E, $3D, $3D, $A5, $94, $94, $14, $7A, $F1, $E2, $C5, $77, $F9, 
$8D, $F6, $F6, $76, $F2, $F4, $F4, $A4, $B1, $B1, $31, $19, $6B, $6B, $6B, $2B, $39, $3B, $3B, $CB, 
$E6, $B2, $72, $5F, $B4, $79, $FE, $FC, $F9, $0D, $9F, $FB, $6F, $DB, $17, $6A, $91, $F0, $13, $A1, 
$A1, $A1, $FC, $FC, $C1, $B5, $BD, $BD, $CD, $E7, $C2, $C2, $C2, $D8, $D6, $FD, $FD, $FD, $15, $6C, 
$5F, $D0, $09, $3E, $A7, $A3, $A3, $83, $FB, $FB, $FA, $FA, $B2, $8D, $C6, $C7, $C7, $F3, $1E, $81, 
$60, $77, $CA, $7E, $23, $30, $30, $90, $DB, $AC, $AE, $AE, $6A, $95, $0B, $BA, $A1, $66, $27, $D8, 
$F5, $C9, $C9, $89, $CC, $BE, $84, $63, $42, $6C, $12, $BE, $C3, $06, $55, $F5, $C7, $39, $79, $5F, 
$82, $EF, $F2, $7D, $85, $36, $CA, $36, $2C, $E5, $51, $FF, $5F, $2E, $55, $B9, $DB, $DB, $B7, $6F, 
$79, $AF, $1A, $BE, $5C, $A8, $2D, $17, $16, $16, $B2, $6D, $60, $7F, $1E, $76, $57, $57, $57, $A7, 
$F6, $3A, $98, $9F, $88, $1F, $F7, $EE, $DD, $FB, $CF, $B9, $C4, $FC, $1C, $EC, $01, $7A, $BF, $7C, 
$F9, $52, $66, $03, $59, $59, $59, $EC, $4F, $90, $0F, $C3, $3E, $3E, $7C, $F8, $C0, $6D, $10, $F3, 
$54, $5D, $07, $DC, $F0, $25, $88, $F5, $FA, $C0, $D5, $D0, $D0, $C0, $31, $53, $88, $61, $F8, $6F, 
$6D, $6D, $4D, $9F, $3F, $7F, $56, $F0, $D5, $6D, $6D, $6D, $EC, $43, $C5, $AE, $83, $1C, $06, $F9, 
$30, $E2, $80, $3E, $70, $81, $01, $F1, $08, $3A, $CB, $CF, $31, $2B, $2B, $AB, $1B, $FE, $6B, $7E, 
$7E, $9E, $F7, $E6, $C5, $AE, $83, $F8, $F4, $EC, $D9, $33, $5A, $5C, $5C, $D4, $19, $97, $7C, $6C, 
$41, $FC, $82, $7E, $39, $39, $39, $FC, $0E, $88, $BA, $98, $8C, $E3, $82, $CE, $F2, $6D, $90, $1B, 
$62, $AC, $36, $37, $37, $15, $DA, $E8, $62, $BC, $E4, $63, $0B, $F2, $BD, $A7, $4F, $9F, $F2, $FA, 
$F0, $9F, $70, $61, $8D, $59, $5B, $5B, $CB, $E3, $AB, $6B, $2E, $E5, $EB, $62, $CF, $50, $58, $83, 
$69, $C2, $85, $F9, $0B, $1F, $88, $7C, $4C, $B9, $8D, $3E, $F8, $C3, $D2, $D2, $52, $8A, $8E, $8E, 
$D6, $88, $CB, $D2, $D2, $92, $D7, $C9, $C8, $D5, $C5, $DA, $E8, $D2, $BE, $20, $88, $4F, $09, $09, 
$09, $7C, $4E, $13, $2E, $AC, $59, $32, $32, $32, $14, $72, $28, $5D, $71, $89, $E5, $6E, $CA, $F9, 
$9B, $D0, $46, $F9, $DE, $F2, $C7, $85, $EF, $C8, $2D, $55, $B5, $D1, $36, $17, $F6, $A4, $D5, $AD, 
$C1, $75, $2D, $D0, $4D, $DD, $BE, $39, $62, $69, $7F, $7F, $FF, $8D, $73, $A3, $A3, $A3, $34, $3E, 
$3E, $CE, $EB, $47, $7D, $63, $C2, $D8, $42, $37, $E8, $A8, $AC, $37, $58, $C0, $04, $3B, $29, $2F, 
$2F, $17, $E5, $C6, $BB, $1F, $68, $87, $E7, $A2, $4F, $82, $FA, $01, $74, $13, $D3, $B9, $AC, $AC, 
$8C, $99, $5A, $5A, $5A, $C8, $C1, $C1, $81, $EB, $81, $AA, $DE, $0F, $D3, $47, $11, $D3, $B5, $A4, 
$A4, $84, $59, $C0, $84, $35, $2F, $F2, $37, $D4, $3D, $5F, $BF, $7E, $2D, $3A, $27, $F5, $5D, $B0, 
$AE, $A8, $AE, $AE, $E6, $B5, $05, $58, $C0, $84, $3C, $08, $75, $19, $BC, $23, $9B, $98, $98, $C8, 
$B9, $8D, $B9, $B9, $B9, $41, $09, $6A, $5A, $A8, $C9, $35, $37, $37, $33, $0B, $98, $FE, $04, $E9, 
$FC, $4E, $59, 0 );
implementation
end.
