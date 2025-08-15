/*Problem 1
Q: To find the sum of all the elements in a array using foreach loop.*/

program sum_of_array();
  int unsigned total;
  initial begin
    int unsigned temp_readings[] ={30,28,27,29,31,30,32,33,29,30};
  foreach(temp_readings[idx])
    begin
    total += temp_readings[idx];
    end
    $display("Time=%0t ns => Total Temperature = %0d",$time,total);
  end
endprogram
