//Written By Luke Storry
//Part of the RootExtractors Project
program Babylonian;
var   Num,x:Real; //Num is  input, x is estimate
         dp:Byte; //decimal places to print the output to
begin
  Writeln('Root Extractor using the Babylonian method.') ;
  Writeln('Written by Luke Storry'); Writeln;Writeln;
  Write('Please enter a number:  ');
  Readln(Num);
  Write('Please enter how many decimal places:  ');
  Readln(dp);
  x:=Num/2; //sets up the estimate variable
  Repeat
    x:=((x+(Num/x))/2); //set the new x as the average of x and Num/x
    Writeln(x:8:dp);
  until abs(Num-x*x)<1/exp(10*ln(dp)); //keep going until accurate to 10^-dp
  Writeln('The square root of ',Num:1:dp,' is ',x:1:dp); //ouput
  Readln;
end.
