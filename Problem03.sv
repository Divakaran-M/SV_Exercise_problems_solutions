/* Problem 3
Q: Find the maximum number in the array with its index
*/
program max();
  
  int unsigned error_count[15];
  int unsigned index_queue[$];
  initial begin
   int unsigned temp;
    temp = 0;
    error_count = '{2,5,3,6,1,0,4,5,10,2,1,0,2,3,4};
    foreach(error_count[i])begin
     if(temp<error_count[i])begin
        temp = error_count[i];
      end
    end
       foreach(error_count[i]) begin
      if (error_count[i] == temp) begin
        index_queue.push_back(i);
      end
       end
    $display("%0d found at Subsystem Index %0d",temp,index_queue[0]);
  end
endprogram
/* Output:
10 found at Subsystem Index 8*/
