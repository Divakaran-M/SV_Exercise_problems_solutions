/* Problem 7
Q: Swap every adjacent(pair) elements in a array */

program pair_swap();
  int unsigned array[8];
  
  initial begin
    array = '{1,2,3,4,5,6,7,8};
    for(int i=0,int j=1;i<$size(array)-1 && j<$size(array);i+=2,j+=2)begin
      if(i<j)begin
    automatic int t = array[i];
    array[i] = array[j];
    array[j] = t;
      end
  end
    $display("Pair Reversed : %p",array);
  end
endprogram
/* Output:
Pair Reversed : '{2, 1, 4, 3, 6, 5, 8, 7}*/
