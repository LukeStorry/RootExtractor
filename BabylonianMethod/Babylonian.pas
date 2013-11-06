//Written By Luke Storry
//Part of the RootExtractors Project
program Babylonian;
var   S,x,e:Integer ; //S is the input, x the best estimate, and e the error
begin
  Writeln('Root Extractor using the Babylonian method.') ;
  Writeln('Written by Luke Storry'); Writeln;Writeln;
  Writeln('Please enter a number');
  Readln(S)
  x:=S/2 //sets up the estimate variable
  Repeat

  until (x^2 - S)^2 < 0.001; //keep going untill estimate is accurate
  Writeln('The square root of ',S,' is ',x);
end.
