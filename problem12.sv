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
/* Output:
Enqueue 1 - Queue size:1 - '{1} 
Enqueue 2 - Queue size:2 - '{1, 2} 
Enqueue 3 - Queue size:3 - '{1, 2, 3} 
Enqueue 4 - Queue size:4 - '{1, 2, 3, 4} 
Enqueue 5 - Queue size:5 - '{1, 2, 3, 4, 5} 
Enqueue 6 - Queue size:6 - '{1, 2, 3, 4, 5, 6} 
Enqueue 7 - Queue size:7 - '{1, 2, 3, 4, 5, 6, 7} 
Enqueue 8 - Queue size:8 - '{1, 2, 3, 4, 5, 6, 7, 8} 
Enqueue 9 - Queue size:9 - '{1, 2, 3, 4, 5, 6, 7, 8, 9} 
Enqueue 10 - Queue size:10 - '{1, 2, 3, 4, 5, 6, 7, 8, 9, 10} 
Enqueue 11 - Queue size:11 - '{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11} 
Enqueue 12 - Queue size:12 - '{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12} 
Enqueue 13 - Queue size:13 - '{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13} 
Enqueue 14 - Queue size:14 - '{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14} 
Enqueue 15 - Queue size:15 - '{1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15} */
