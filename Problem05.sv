/* Problem 5
Q: Find number of even elements in the array */

program even();
  int unsigned array[];
  int unsigned queue[$];
  initial begin
    array ='{101,102,103,104,105,106,107,108,109,110,202,203,204,205,206,305,306,307,308};
    queue = array.find(even) with (even%2 == 0);
    $display("Even count : %0d",queue.size());
  end
endprogram
