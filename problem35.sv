/* Problem : 35
Q: Simulation components send log messages asynchronously to a central logger through a mailbox.*/

program mailbox_problems;
  mailbox #(string) mbx;  
string msg;
  initial begin
    mbx = new();
$display("Send : init complete");
  #10 mbx.put("Init complete");
 $display("Send : Data processed");
 #20 mbx.put("Data processed");
   
  forever begin
   mbx.get(msg); 
  $display("LOG: %s", msg);
   end
  end
endprogram
/* Output:
Send : init complete
Send : Data processed
LOG: Init complete
LOG: Data processed*/
