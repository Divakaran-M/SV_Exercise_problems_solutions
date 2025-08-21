/* Problem 4
Q: To check if the array is sorted  */
program sorted_array();
  int unsigned array[12]; 

  // Function to check if array is sorted
  function automatic bit is_sorted(input int unsigned arr[]);
    int i;
    for (i = 0; i < $size(arr) - 1; i++) begin
      if (arr[i] > arr[i+1]) begin
        return 0; // Not sorted
      end
    end
    return 1; // Sorted
  endfunction

  initial begin
    array = '{10,12,12,15,20,22,22,25,30,31,33,35};

    if (is_sorted(array))
      $display("Sorted:TRUE");
    else
      $display("Sorted:FALSE");
  end
endprogram
/* Output:
 Sorted:TRUE*/
