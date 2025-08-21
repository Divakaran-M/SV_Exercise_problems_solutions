
/* Problem 2
Q : Reversal of array using for loop */

program array_reversal();
initial begin  
  int unsigned arr[8];
  arr = '{100,101,102,103,104,105,106,107};
  for(int i=0,int j=$size(arr)-1;i<j;i++,j--)begin
    automatic int t = arr[i];
    arr[i] = arr[j];
    arr[j] = t;
  end
  $display("Reversed : %p",arr);
  
end
endprogram
/* Output:
Reversed : '{107, 106, 105, 104, 103, 102, 101, 100}*/
