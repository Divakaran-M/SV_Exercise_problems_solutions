/*Problem 12 
Q: Enqueue operation using .push_back with for loop*/

program queue_example;
  int id_queue[$];  
  initial begin
    for (int i = 1; i <= 15; i++) begin
      id_queue.push_back(i);
      $display("Enqueue %0d - Queue size:%0d - %p ", i, id_queue.size(),id_queue);
    end
  end

endprogram
