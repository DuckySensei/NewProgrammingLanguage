                                                                                                
%{
#include <stdio.h>
#include <stdlib.h>
#include "gvlogo.tab.h"

extern void yyerror(const char* s);                                                                                                         
%}

%%

"penup"                 {return PENUP;}                                                                                                     
"pendown"               {return PENDOWN;}                                                                                                   
"print"                 {return PRINT;}                                                                                                     
"save"                  {return SAVE;}                                                                                                      
"change_color"          {return CHANGE_COLOR;}                                                                                              
"color"                 {return COLOR;}                                                                                                     
"clear"                 {return CLEAR;}                                                                                                     
"turn"                  {return TURN;}                                                                                                      
"move"                  {return MOVE;}                                                                                                      
[ \t\r\n]                       ;                                                                                                           
.                       { yyerror("Lexing Syntax error.\n"); }                                                                              

%%

