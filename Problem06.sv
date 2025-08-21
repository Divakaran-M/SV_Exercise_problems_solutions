/* Problem 6
Q: Replace all negative values in a array to zero */

program non_Negative();
  int array[7];
  initial begin
    array = '{-1,0,12,-5,100,-9,7};
    for(int i =0 ; i<$size(array)-1;i++)begin
      if(array[i]<0)begin
        array[i] = 0;
      end
    end
    $display("Sanitized Codes:%p",array);
  end
endprogram
/* Output:
Sanitized Codes:'{0, 0, 12, 0, 100, 0, 7}*/
