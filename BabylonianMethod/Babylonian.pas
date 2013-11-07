//Written By Luke Storry
//Part of the RootExtractors Project
program Babylonian;
var   Num,x:Real;   //input,estimate
       dp,i:Byte;   //decimal points for output, counter
          r:String; //repeat or not (y/n)
begin
  Writeln('Root Extractor using the Babylonian method.') ;
  Writeln('Written by Luke Storry');
  Repeat
    Writeln;Writeln;
    Write('Please enter a real number:  ');
    Readln(Num);
    Write('Please enter how many decimal places should be calculated:  ');
    Readln(dp);
    If (dp>15) then begin
        Writeln('Sorry, the maximum decimal places is 15.'); //Pascal's limit?
        dp:=15;
        end;
    x:=Num; i:=1;  //sets up the estimate and counter variables
    Repeat
      x:=((x+(Num/x))/2); //set the new x as the average of x and Num/x
   // Writeln(x:8:dp+3);  //output all estimates for testing (also interesting)
      i:=i+1;             //increment iteration counter. stops at 256
    Until(x*x-Num < 1/exp(10*ln(dp+1)))OR(i=0); //accurate to 10^-dp or 3000 repeats

    Write('The square root of that is ',x:1:dp);
    if (i=0) then Writeln(', operation timed out.')
             else Writeln(', to ',dp,'dp.');
    Write('Would you like to know another root? (y/n)   ');
    Readln(r);
    While NOT((r='n')OR(r='y')) do  begin
       Write('Please enter y or n:  '); //validate input as either 'y' or 'n'
       Readln(r);
       end;
  Until r='n'; //keep finding roots until user says 'n'
  Readln;
end.
