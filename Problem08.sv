/* Problem 8
Q: Sum only those values that are at even indices and above a threshold. */

program sum();
    initial begin
      int unsigned array[12];
	int unsigned total;
    array = '{90,50,110,30,130,90,140,70,200,10,255,60} ;
      for(int i=0;i<$size(array);i++)begin
        if(i%2==0 && array[i]>100)begin
          total+=array[i];
        end
      end
  $display("Sum of Even indices greater than 100 = %0d",total);
  end
endprogram
/* Output:
Sum of Even indices greater than 100 = 835*/
/* Note : But in pdf the output is 635 which is wrong, even indices greater than 100 --> 110+130+140+200+255 = 835*/
