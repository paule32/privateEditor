
(* lexical analyzer template (TP Lex V3.0), V1.0 3-2-91 AG *)

(* global definitions: *)
unit dBaseDSL;

interface
var
  yylineno: Integer;
  ch: Char;
  
implementation



function yylex : Integer;

procedure yyaction ( yyruleno : Integer );
  (* local definitions: *)

begin
  (* actions: *)
  case yyruleno of
  1:
             begin inc(yylineno); end;
  2:
             begin end;
  3:
             begin inc(yylineno); end;

  4:
         begin
         while true do
         begin
           ch := get_char;
           if (ch = #10) or (ch = #0) then
           break;
         end;
         inc(yylineno); end;
  5:
         begin
         while true do
         begin
           ch := get_char;
           if ch = #0 then
           yyerror('Error: unterminated comment.') else
           if ch = #10 then
           begin
             inc(yylineno);
             break;
           end;
         end; end;
  6:
         begin
         while true do
         begin
           ch := get_char;
           if ch = #0  then
           yyerror('Error: unterminated comment.') else
           if ch = #10 then
           begin
             inc(yylineno);
             break;
           end;
         end; end;

  end;
end(*yyaction*);

(* DFA table: *)

type YYTRec = record
                cc : set of Char;
                s  : Integer;
              end;

const

yynmarks   = 9;
yynmatches = 9;
yyntrans   = 15;
yynstates  = 11;

yyk : array [1..yynmarks] of Integer = (
  { 0: }
  2,
  { 1: }
  2,
  { 2: }
  2,
  { 3: }
  1,
  3,
  { 4: }
  { 5: }
  { 6: }
  { 7: }
  1,
  { 8: }
  4,
  { 9: }
  5,
  { 10: }
  6
);

yym : array [1..yynmatches] of Integer = (
{ 0: }
  2,
{ 1: }
  2,
{ 2: }
  2,
{ 3: }
  1,
  3,
{ 4: }
{ 5: }
{ 6: }
{ 7: }
  1,
{ 8: }
  4,
{ 9: }
  5,
{ 10: }
  6
);

yyt : array [1..yyntrans] of YYTrec = (
{ 0: }
  ( cc: [ #9,' ' ]; s: 2),
  ( cc: [ #10 ]; s: 3),
  ( cc: [ '&' ]; s: 6),
  ( cc: [ '*' ]; s: 5),
  ( cc: [ '/' ]; s: 4),
{ 1: }
  ( cc: [ #9,' ' ]; s: 2),
  ( cc: [ #10 ]; s: 3),
  ( cc: [ '&' ]; s: 6),
  ( cc: [ '*' ]; s: 5),
  ( cc: [ '/' ]; s: 4),
{ 2: }
  ( cc: [ #9,' ' ]; s: 2),
  ( cc: [ #10 ]; s: 7),
{ 3: }
{ 4: }
  ( cc: [ '/' ]; s: 8),
{ 5: }
  ( cc: [ '*' ]; s: 9),
{ 6: }
  ( cc: [ '&' ]; s: 10)
{ 7: }
{ 8: }
{ 9: }
{ 10: }
);

yykl : array [0..yynstates-1] of Integer = (
{ 0: } 1,
{ 1: } 2,
{ 2: } 3,
{ 3: } 4,
{ 4: } 6,
{ 5: } 6,
{ 6: } 6,
{ 7: } 6,
{ 8: } 7,
{ 9: } 8,
{ 10: } 9
);

yykh : array [0..yynstates-1] of Integer = (
{ 0: } 1,
{ 1: } 2,
{ 2: } 3,
{ 3: } 5,
{ 4: } 5,
{ 5: } 5,
{ 6: } 5,
{ 7: } 6,
{ 8: } 7,
{ 9: } 8,
{ 10: } 9
);

yyml : array [0..yynstates-1] of Integer = (
{ 0: } 1,
{ 1: } 2,
{ 2: } 3,
{ 3: } 4,
{ 4: } 6,
{ 5: } 6,
{ 6: } 6,
{ 7: } 6,
{ 8: } 7,
{ 9: } 8,
{ 10: } 9
);

yymh : array [0..yynstates-1] of Integer = (
{ 0: } 1,
{ 1: } 2,
{ 2: } 3,
{ 3: } 5,
{ 4: } 5,
{ 5: } 5,
{ 6: } 5,
{ 7: } 6,
{ 8: } 7,
{ 9: } 8,
{ 10: } 9
);

yytl : array [0..yynstates-1] of Integer = (
{ 0: } 1,
{ 1: } 6,
{ 2: } 11,
{ 3: } 13,
{ 4: } 13,
{ 5: } 14,
{ 6: } 15,
{ 7: } 16,
{ 8: } 16,
{ 9: } 16,
{ 10: } 16
);

yyth : array [0..yynstates-1] of Integer = (
{ 0: } 5,
{ 1: } 10,
{ 2: } 12,
{ 3: } 12,
{ 4: } 13,
{ 5: } 14,
{ 6: } 15,
{ 7: } 15,
{ 8: } 15,
{ 9: } 15,
{ 10: } 15
);


var yyn : Integer;

label start, scan, action;

begin

start:

  (* initialize: *)

  yynew;

scan:

  (* mark positions and matches: *)

  for yyn := yykl[yystate] to     yykh[yystate] do yymark(yyk[yyn]);
  for yyn := yymh[yystate] downto yyml[yystate] do yymatch(yym[yyn]);

  if yytl[yystate]>yyth[yystate] then goto action; (* dead state *)

  (* get next character: *)

  yyscan;

  (* determine action: *)

  yyn := yytl[yystate];
  while (yyn<=yyth[yystate]) and not (yyactchar in yyt[yyn].cc) do inc(yyn);
  if yyn>yyth[yystate] then goto action;
    (* no transition on yyactchar in this state *)

  (* switch to new state: *)

  yystate := yyt[yyn].s;

  goto scan;

action:

  (* execute action: *)

  if yyfind(yyrule) then
    begin
      yyaction(yyrule);
      if yyreject then goto action;
    end
  else if not yydefault and yywrap() then
    begin
      yyclear;
      return(0);
    end;

  if not yydone then goto start;

  yylex := yyretval;

end(*yylex*);


