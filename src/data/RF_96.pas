// ------------------------------------------------
// ResBuilder v.1.0
// (c) 2023 by paule32.jk@gmail.com
//
// THIS FILE WAS AUTOMATICALLY CREATED.
// ------------------------------------------------
unit RF_96;
interface
const
  TByteArray_setup: Array [0..2708] of Byte = (
$00, $09, $73, $65, $74, $75, $70, $2E, $62, $6D, $70, $1A, $17, $00, $00, $81, $0A, $00, $00, 
$78, $DA, $BD, $98, $7B, $70, $54, $D5, $1D, $C7, $69, $3B, $B5, $14, $5B, $3B, $D3, $E9, $FB, $8F, 
$B6, $53, $C7, $D7, $4C, $AB, $8C, $AD, $63, $8D, $88, $10, $8C, $E6, $8D, $06, $10, $01, $03, $82, 
$89, $A8, $F8, $E8, $28, $22, $88, $C6, $C8, $38, $23, $55, $81, $F0, $1C, $0B, $A9, $96, $00, $82, 
$0A, $04, $8D, $18, $08, $09, $10, $F2, $20, $9B, $6C, $92, $4D, $D8, $F7, $FB, $FD, $7E, $EF, $26, 
$D9, $64, $73, $F7, $DB, $DF, $EF, $26, $9B, $22, $A4, $4A, $0C, $BA, $93, $EF, $9C, $9C, $73, $EF, 
$DE, $FB, $B9, $DF, $DF, $EF, $FC, $CE, $B9, $9B, $59, $F0, $BB, $5F, $4F, $11, $3F, $6F, $93, $5E, 
$25, $DD, $38, $AA, $EF, $4D, $F9, $E3, $94, $1F, $50, $5B, $F1, $AB, $29, $53, $AE, $BF, $75, $44, 
$FF, $FB, $20, $FD, $27, $76, $32, $1F, $28, $7A, $71, $CA, $04, $3F, $DF, $BF, $A4, $0F, $E0, $3C, 
$2B, $95, $4A, $8D, $29, $3D, $76, $B1, $2E, $3E, $3E, $DE, $39, $E9, $B1, $FF, $F7, $FD, $6F, $A2, 
$70, $38, $DC, $D9, $DE, $DE, $AE, $6F, $69, $69, $31, $4A, $24, $12, $BD, $C1, $60, $90, $9B, $CD, 
$E6, $0B, $2C, $93, $C9, $24, $37, $1A, $F4, $1A, $B3, $5E, $AF, $67, $59, $0C, $06, $BD, $C3, $62, 
$D1, $7B, $5D, $4E, $7D, $D0, $EF, $D7, $87, $02, $01, $52, $90, $FA, $2E, $BD, $56, $AD, $D1, $B5, 
$B6, $B6, $1A, $34, $1A, $8D, $32, $99, $4C, $B6, $4D, $86, $89, $9F, $4F, $2A, $95, $EA, $16, $2E, 
$5C, $98, $CC, $CA, $CA, $4A, $3D, $BE, $62, $85, $F0, $59, $F5, $D1, $44, $5D, $6D, $ED, $00, $AB, 
$F6, $F8, $E7, $89, $C3, $07, $F6, $26, $3F, $FA, $F7, $2E, $A1, $7A, $EF, $FB, $C2, $99, $CF, $8E, 
$09, $5D, $CD, $4D, $82, $5C, $DA, $29, $E8, $95, $4A, $C1, $A0, $56, $53, $AB, $12, $54, $32, $99, 
$70, $68, $FF, $BE, $E1, $9C, $DC, $1C, $A1, $B4, $B4, $74, $B0, $B9, $B9, $D9, $38, $19, $EF, $F8, 
$BB, $FC, $8C, $B9, $B9, $B9, $C2, $AC, $59, $B3, $52, $4F, $AD, $5C, $99, $6A, $3E, $7B, $16, $64, 
$20, $BA, $48, $ED, $AD, $AD, $38, $76, $68, $3F, $0E, $ED, $DE, $81, $FA, $23, $9F, $A0, $F7, $7C, 
$13, $F4, $F2, $0B, $E2, $31, $99, $54, $2A, $9E, $D7, $D3, $21, $85, $5E, $A5, $C2, $C7, $87, $3E, 
$44, $E6, $9C, $CC, $D4, $3D, $99, $33, $B1, $72, $D5, $CA, $84, $D1, $6A, $92, $07, $23, $A1, $AE, 
$60, $24, $D8, $95, $48, $24, $DA, $27, $CB, $D5, $D2, $D8, $88, $AE, $8E, $0E, $51, $1D, $E7, $CF, 
$A3, $F6, $E8, $E1, $11, $A6, $D6, $26, $D8, $75, $1A, $B8, $4C, $E6, $B1, $E3, $ED, $74, $BC, $A7, 
$B3, $13, $7A, $B5, $5A, $E4, $BA, $2B, $3F, $03, $B7, $AD, $9D, $8D, $BF, $6D, $C8, $46, $C1, $BB, 
$8B, $93, $85, $EF, $2E, $49, $CE, $DD, $B2, $34, $79, $F0, $8B, $8F, $9C, $93, $E5, $6A, $25, $AE, 
$6E, $F2, $42, $F4, $43, $22, $41, $53, $5D, $1D, $7A, $46, $99, $C2, $2E, $37, $DC, $66, $AB, $E8, 
$17, $9F, $C3, $5C, $BD, $9D, $5D, $63, $7E, $DD, $FD, $F0, $4C, $DC, $B8, $A3, $08, $D7, $55, $16, 
$60, $EA, $9E, $3C, $5C, $B3, $27, $17, $B7, $1E, $5C, $8E, $F7, $8E, $EE, $F1, $5D, $2D, $BF, $BA, 
$49, $52, $E2, $EA, $6E, $6B, $85, $5D, $4B, $4C, $4E, $37, $42, $2E, $2F, $8C, $6A, $0D, $3A, $DA, 
$DA, $C6, $FC, $92, $75, $4A, $A1, $55, $2A, $45, $AE, $19, $8F, $CC, $C2, $0D, $BB, $E7, $E3, $A7, 
$07, $E6, $62, $EA, $FE, $02, $FC, $70, $5F, $3E, $A6, $57, $3F, $81, $9D, $47, $DE, $F3, $5F, $4D, 
$BF, $D8, $17, $ED, $05, $F9, $18, $93, $CB, $68, $86, $B2, $AB, $5B, $CC, $3B, $E6, $96, $50, $DB, 
$29, $69, $83, $42, $D6, $8D, $83, $07, $AA, $70, $4F, $F1, $1C, $5C, $5F, $35, $1F, $D7, $56, $CF, 
$C7, $8F, $AB, $E7, $E1, $9A, $EA, $22, $4C, $3F, $FE, $34, $B6, $7E, $B2, $2B, $90, $1C, $4E, $B6, 
$A5, $35, $2C, $0C, $B7, $4D, $96, $CB, $A4, $D6, $8E, $30, $19, $CC, $30, $28, $54, $50, $5D, $B8, 
$00, $29, $F9, $C5, $3C, $07, $3F, $3D, $80, $97, $F7, $AC, $C3, $EB, $FB, $36, $A0, $64, $F3, $53, 
$B8, $E3, $B5, $7C, $5C, $7F, $6C, $31, $A6, $D5, $3D, $82, $69, $27, $1F, $C1, $8F, $4E, $2E, $C4, 
$AD, $0D, $AB, $F0, $E4, $FB, $6B, $FA, $8F, $B6, $D6, $38, $AA, $5B, $6A, $EC, $D5, $4D, $35, $F6, 
$D3, $92, $33, $A6, $C9, $CC, $47, $8E, $A3, $56, $AE, $A0, $DC, $32, $88, $BE, $E9, $54, $4A, $E8, 
$D4, $2A, $28, $7A, $64, $14, $47, $09, $DE, $DA, $B7, $11, $33, $AA, $4A, $70, $DB, $91, $12, $DC, 
$70, $B8, $18, $7F, $FE, $A2, $14, $BF, $3F, $B3, $02, $D3, $5A, $8A, $71, $6D, $CB, $52, $4C, $3B, 
$F7, $28, $7E, $73, $7A, $39, $6E, $AA, $79, $0C, $37, $1D, $5A, $84, $5B, $FE, $B3, $00, $7F, $D9, 
$FD, $30, $96, $BE, $5D, $9A, $98, $08, $D7, $BC, $79, $45, $A9, $B7, $37, $BE, $85, $8A, $CD, $9B, 
$51, $B1, $69, $13, $B6, $90, $B6, $57, $54, $60, $E7, $B6, $6D, $62, $BB, $6B, $FB, $F6, $11, $ED, 
$D8, $8E, $6D, $5B, $B7, $A0, $F4, $9F, $4F, $23, $E7, $D8, $8B, $C8, $3A, $B5, $0E, $19, $67, $57, 
$E3, $A6, $C6, $55, $F8, $6D, $4B, $29, $AE, $ED, $22, $B6, $6E, $92, $F4, $31, $91, $6D, $6A, $ED, 
$C3, $98, $7A, $A4, $08, $D7, $54, $E5, $E3, $E7, $95, $73, $F1, $C4, $D6, $67, $07, $26, $C2, $B5, 
$EA, $A9, $27, $29, $67, $5A, $D0, $2B, $93, $7D, $AD, $A4, $D2, $76, $6C, $FC, $F0, $1D, $91, $2B, 
$AF, $FE, $35, $64, $35, $97, $61, $8E, $B4, $1C, $33, $BB, $CB, $70, $A7, $B2, $0C, $37, $AB, $57, 
$E3, $0F, $BD, $CF, $E1, $17, $CD, $CB, $F1, $B3, $13, $8B, $70, $DD, $D1, $F9, $F8, $49, $55, $21, 
$7E, $59, $F9, $10, $4A, $2B, $9E, $99, $10, $57, $D9, $AB, $EB, $D1, $17, $8D, $60, $78, $70, $70, 
$1C, $25, $BE, $D4, $EF, $8F, $47, $B1, $B7, $A1, $0A, $85, $D5, $6B, $F0, $60, $7D, $39, $B2, $5B, 
$CA, $91, $25, $7D, $03, $B3, $65, $E5, $98, $21, $2F, $47, $86, $FC, $75, $DC, $21, $7B, $05, $B7, 
$4B, $5E, $C2, $2D, $8D, $CF, $E2, $E6, $CF, $57, $E2, $4F, $87, $8A, $71, $C3, $BE, $62, $2C, $79, 
$A7, $64, $C8, $1F, $F0, $77, $0B, $29, $A1, $ED, $4A, $B9, $E2, $91, $30, $86, $06, $06, $30, $D8, 
$DF, $FF, $95, $8A, $46, $42, $A8, $3C, $FE, $2F, $DC, $5B, $B9, $02, $79, $1F, $FD, $03, $D9, $D5, 
$2F, $20, $FF, $E4, $3A, $E4, $B4, $8F, $B0, $CD, $EC, $7E, $1D, $77, $B6, $AF, $C5, $AC, $F3, $EB, 
$71, $67, $CD, $D3, $B8, $7D, $FF, $32, $4C, $7F, $7F, $31, $A6, $57, $2E, $C6, $FC, $37, $8B, $05, 
$5A, $6A, $69, $59, $75, $F5, $08, $C2, $E5, $6C, $E3, $FA, $45, $5C, $17, $FB, $92, $4C, $A4, $DB, 
$C4, $97, $FA, $CC, $AE, $33, $6B, $F0, $59, $CB, $A7, $A8, $69, $AB, $C1, $81, $BA, $FD, $98, $BD, 
$AE, $10, $D9, $B5, $2F, $23, $AB, $B5, $0C, $B3, $5B, $5F, $C3, $DF, $9B, $D7, $60, $EE, $B9, $0D, 
$C8, $DE, $BA, $14, $5B, $6B, $AB, $B0, $ED, $44, $15, $76, $9F, $F8, $00, $35, $8D, $87, $11, $F0, 
$59, $05, $AD, $56, $E3, $0F, $04, $02, $B2, $2B, $F2, $2B, $1C, $42, $A2, $AF, $0F, $FD, $B1, $98, 
$A8, $81, $78, $7C, $4C, $23, $63, $F1, $B1, $63, $AC, $58, $24, $22, $8E, $B9, $1C, $36, $64, $97, 
$E4, $E2, $01, $CA, $B7, $07, $9A, $CA, $90, $D9, $B8, $1E, $19, $0D, $AB, $F1, $50, $E3, $06, $3C, 
$B6, $F3, $79, $C8, $2C, $56, $A8, $6D, $26, $38, $1C, $2A, $78, $9C, $2A, $44, $02, $46, $44, $82, 
$9E, $94, $5A, $AD, $76, $F6, $F7, $F7, $4B, $AF, $24, $8E, $C9, $C4, $80, $E8, $C7, $B8, $A2, $18, 
$5E, $A6, $81, $04, $DC, $0E, $27, $EE, $5F, $96, $8D, $B9, $1F, $BF, $84, $BC, $53, $34, $0F, $6A, 
$D7, $E2, $DE, $E3, $AB, $F1, $60, $43, $39, $96, $EF, $7A, $1E, $72, $9B, $0D, $56, $BB, $0E, $5E, 
$62, $0A, $F9, $F4, $88, $F9, $DD, $88, $7A, $43, $F0, $B9, $BD, $43, $26, $A3, $49, $4B, $2C, $6D, 
$5F, $17, $C7, $2B, $E5, $1A, $BC, $88, $CB, $E3, $72, $22, $AB, $F8, $7E, $2C, $F8, $70, $0D, $E6, 
$9D, $7A, $03, $05, $C7, $D7, $23, $AF, $E6, $15, $2C, $3E, $F9, $26, $1E, $DF, $F9, $1C, $8C, $76, 
$3D, $3C, $0E, $25, $7C, $2E, $1D, $42, $1E, $07, $31, $85, $11, $72, $87, $10, $F1, $47, $60, $D0, 
$1B, $82, $B1, $58, $AC, $F3, $AB, $FD, $1A, $89, $E3, $C5, $F1, $4B, $C7, $70, $E0, $92, $B8, $A6, 
$C5, $7C, $6E, $87, $03, $F7, $2D, $B8, $0F, $7F, $7D, $61, $0E, $EE, $2A, $CB, $47, $FE, $3B, $4B, 
$50, $B8, $69, $29, $E6, $6E, $5E, $86, $F2, $0F, $5E, $85, $C3, $46, $4C, $4E, $1D, $7C, $E4, $6B, 
$D8, $13, $46, $C4, $1B, $21, $3E, $F2, $CB, $E1, $03, $E5, $D8, $10, $ED, $41, $95, $97, $72, $E5, 
$E7, $E7, $0B, $B9, $39, $39, $63, $75, $42, $18, $1A, $BA, $4C, $9C, $EB, $62, $3B, $DE, $18, $B5, 
$EC, $57, $5E, $41, $0E, $32, $66, $64, $20, $3B, $37, $1B, $4D, $CD, $CD, $30, $59, $2D, $50, $D2, 
$FA, $60, $D2, $F5, $C2, $EB, $D0, $C3, $6B, $73, $22, $E0, $0A, $20, $16, $8C, $22, $1E, $8A, $21, 
$1A, $8E, $22, $14, $0A, $C1, $EF, $F7, $0B, $2A, $95, $CA, $3A, $3C, $3C, $B2, $6E, $A6, $B9, $96, 
$15, $17, $0B, $BB, $B6, $EF, $C0, $DA, $17, $9F, $87, $49, $DE, $01, $BB, $5A, $76, $99, $6C, $AA, 
$D1, $76, $BC, $31, $6A, $E5, $92, $46, $E4, $E5, $13, $57, $46, $06, $C8, $7F, $B4, $50, $7D, $B6, 
$39, $ED, $70, $39, $29, $AF, $0C, $5A, $38, $2D, $0E, $62, $F3, $22, $EC, $0F, $83, $F2, $1C, $FD, 
$03, $FD, $E8, $A3, $B8, $C4, $C9, $6F, $DA, $CB, $C3, $E7, $F3, $F9, $D3, $FB, $C7, $34, $57, $F1, 
$A3, $4B, $84, $2D, $EF, $6E, $42, $C9, $C2, $5C, $1C, $2C, $5B, $80, $BD, $2F, $CC, $1E, $47, $99, 
$5F, $31, $96, $89, $CA, $D5, $05, $C8, $27, $9F, $32, $32, $EE, $46, $61, $61, $61, $4A, $26, $93, 
$25, $3C, $1E, $37, $71, $39, $E0, $74, $3A, $61, $A6, $BD, $88, $C7, $ED, $41, $30, $14, $44, $34, 
$1A, $15, $59, $58, $41, $F2, $8B, $45, $BE, $45, $68, $7C, $6C, $5E, $F6, $F6, $F6, $6A, $78, $4F, 
$BE, $78, $D1, $A2, $64, $E9, $92, $F9, $C3, $DB, $9E, $C9, $13, $2A, $56, $DE, $3F, $9C, $D6, $E6, 
$92, $59, $C2, $A6, $E5, $77, $63, $D3, $8A, $11, $6D, $5E, $31, $63, $5C, $6D, $7C, $32, $0F, $45, 
$45, $0F, $B1, $84, $D2, $27, $4A, $07, $BD, $1E, $8F, $36, $14, $0A, $C6, $9C, $94, $4F, $0E, $CA, 
$3D, $7A, $9F, $11, $F9, $02, $7E, $3F, $C7, $0D, $5E, $AF, $17, $1E, $8F, $07, $54, $5B, $E1, $76, 
$BB, $59, $71, $1A, $1B, $AB, $65, $83, $83, $83, $12, $9B, $CD, $D6, $4B, $F5, $57, $21, $4A, $AF, 
$53, $18, $74, $5A, $E5, $A8, $14, $AD, $CD, $E7, $1C, $F5, $75, $27, $84, $86, $BA, $13, $60, $9D, 
$A9, $AF, $C3, $D9, $D3, $F5, $A4, $06, $34, $92, $1A, $4E, $9D, $C0, $69, $1E, $6B, $A8, $C7, $B9, 
$C6, $B3, $50, $28, $E4, $1E, $87, $DD, $AE, $A0, $77, $A2, $CE, $70, $38, $14, $48, $73, $19, $8D, 
$46, $D8, $6D, $76, $91, $81, $59, $78, $CC, $6E, $B7, $C3, $6A, $B5, $82, $EE, $CF, $FD, $38, $C5, 
$52, $76, $A5, $7B, $47, $8B, $C5, $A2, $A3, $EF, $25, $F9, $3A, $CE, $D1, $67, $F3, $D0, $B3, $FA, 
$47, $9F, $9B, $AF, $4D, $E7, $8C, $3D, $77, $24, $1C, $EA, $EF, $EB, $8B, $DB, $E2, $B1, $98, $93, 
$FA, $49, $BE, $2F, $8B, $EA, $A7, $78, $5E, $9A, $85, $DE, $03, $45, $B1, $8F, $34, $17, $F9, $5A, 
$5F, $8A, $E3, $D7, $89, $98, $54, $1E, $B7, $7B, $C8, $EB, $F3, $89, $31, $A0, $39, $2D, $8A, $73, 
$23, $44, $62, $16, $03, $5D, $DF, $45, $AD, $93, $72, $C9, $3D, $92, $4F, $29, $F2, $29, $65, $23, 
$06, $F6, $82, $EF, $4D, $EF, $95, $E2, $FD, $99, $85, $BD, $A3, $D7, $51, $E8, $74, $3A, $71, $DC, 
$40, $7D, $5A, $90, $42, $13, $79, $6F, $A2, $7C, $EC, $A2, $67, $E9, $63, $0E, $AA, $7D, $E2, $1C, 
$E2, $F9, $C4, $6D, $98, $D6, $20, $8B, $D7, $03, $2D, $D5, $08, $8D, $49, $07, $A7, $C3, $02, $A7, 
$DD, $26, $7A, $C2, $72, $D8, $1D, $22, $87, $56, $AB, $15, $BD, $62, $46, $EE, $33, $13, $FB, $47, 
$B5, $01, $4A, $85, $82, $8F, $0B, $C4, $6C, $9F, $C8, $3B, $00, $AF, $F7, $36, $8B, $C5, $1B, $0C, 
$06, $53, $11, $E2, $60, $1E, $CA, $49, $0C, $52, $DD, $F2, $C5, $FB, $A0, $0F, $06, $A1, $F5, $B8, 
$60, $B1, $AA, $E9, $9D, $44, $0E, $23, $79, $C3, $0C, $2C, $F6, $87, $BD, $62, $1E, $97, $D3, $25, 
$C6, $9A, $FF, $67, $BF, $D8, $2B, $E6, $52, $2B, $15, $7C, $6E, $92, $C6, $54, $13, $7D, $FF, $A5, 
$67, $57, $93, $6F, $49, $AE, $81, $A2, $67, $E4, $57, $88, $64, $0E, $47, $A0, $A5, $F8, $1A, $DC, 
$E4, $8F, $45, $09, $33, $BD, $CB, $E9, $54, $5A, $D1, $0F, $BE, $37, $E7, $11, $CF, $41, $8E, $35, 
$E7, $22, $E5, $B5, $D8, $E7, $F1, $34, $1B, $73, $93, $C2, $14, $83, $8E, $89, $72, $D1, $DC, $92, 
$D0, $BD, $02, $EC, $57, $90, $6B, $20, $F9, $64, $8B, $44, $A1, $F5, $07, $60, $A0, $1A, $65, $B5, 
$6B, $45, $2E, $8B, $D6, $00, $B3, $D6, $2C, $C6, $8F, $6B, $00, $E7, $24, $F3, $F0, $F3, $F0, $77, 
$43, $E4, $2D, $8F, $F3, $1C, $4A, $E7, $BC, $CB, $E9, $14, $88, $53, $F3, $4D, $7F, $33, $A0, $EB, 
$F6, $D2, $7D, $86, $5C, $74, $7D, $2B, $31, $19, $E8, $5E, $5A, $9A, $97, $26, $A7, $09, $36, $2B, 
$31, $19, $94, $30, $A8, $75, $30, $69, $4C, $E4, $89, $4B, $E4, $61, $16, $F6, $57, $AC, $EF, $24, 
$EE, $53, $7E, $8B, $73, $84, $F3, $8F, $E3, $AA, $D5, $68, $BD, $F4, $DC, $ED, $DF, $94, $8B, $F3, 
$CC, $EF, $F7, $E9, $DD, $A1, $60, $52, $8C, $1F, $DD, $57, $EF, $A2, $F9, $66, $D7, $C0, $6A, $A2, 
$BC, $D2, $50, $FC, $14, $7A, $F2, $8B, $F6, $58, $36, $87, $58, $37, $79, $BE, $F2, $3A, $33, $44, 
$B9, $C8, $F9, $38, $40, $FB, $11, $91, $6D, $B4, $AE, $5A, $2D, $96, $08, $E5, $6B, $F7, $64, $7F, 
$93, $A2, $EB, $B7, $53, $ED, $B2, $78, $42, $A1, $61, $9E, $87, $A2, $57, $16, $05, $AC, $46, $39, 
$0C, $2A, $CA, $15, $25, $C5, $51, $67, $26, $FF, $6C, $A2, $27, $EC, $0D, $AF, $39, $CC, $C3, $E2, 
$39, $C3, $7D, $F6, $90, $FC, $A2, $2D, $65, $44, $7E, $B5, $7E, $33, $E3, $5C, $A3, $E7, $D5, $51, 
$8E, $D0, $FA, $47, $7E, $99, $D9, $2B, $A5, $E8, $15, $73, $71, $1C, $CD, $66, $8B, $98, $43, $5C, 
$7F, $D9, $1F, $F6, $8C, $59, $98, $89, $FE, $4F, $51, $3E, $05, $D9, $A7, $8B, $F7, $82, $57, $43, 
$7C, $BD, $BE, $78, $BC, $C7, $6E, $B3, $79, $3D, $2E, $C7, $90, $59, $AF, $4F, $99, $34, $46, $E2, 
$33, $C1, $64, $18, $A9, $9D, $5C, $0F, $38, $C7, $A9, $BE, $8C, $AC, $CF, $C1, $A0, $E0, $F7, $F9, 
$FB, $89, $D7, $4C, $75, $A6, $E3, $6A, $F2, $5C, $2A, $DE, $2F, $51, $EE, $AA, $68, $FE, $BB, $7C, 
$7E, $7F, $94, $7C, $48, $18, $0D, $C6, $21, $9A, $67, $5C, $8F, $92, $54, $1F, $06, $89, $A7, $3F, 
$16, $8D, $06, $ED, $0E, $87, $25, $1A, $8B, $75, $7F, $9B, $3C, $E3, $29, $DE, $D7, $D7, $49, $F5, 
$40, $4E, $31, $56, $D1, $3A, $A5, $21, $56, $35, $C5, $50, $41, $B1, $EB, $19, $A6, $D8, $7F, $D7, 
$3C, $DF, $86, $FE, $0B, $13, $DB, $35, $46, 0 );
implementation
end.