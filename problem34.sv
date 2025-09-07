/* Problem : 34
Q: testbech sends a command and waits up to 10ns for a response in a mailbox.*/

program mailbox_problems;
  mailbox #(string) mbx;
  string ack;
 initial begin
    mbx = new();
  $display("[%0t] Command Sent", $time);
#5 mbx.put("ACK");
    fork
      begin
        mbx.get(ack); 
        $display("[%0t] Response: %s", $time, ack);
      end
      begin
        #10;
        if (ack == "")
          $display("[%0t] Timeout! No Response", $time);
      end
    join_any
    disable fork;  // kill the other fork
  end
endprogram
/* Output:
[0] Command Sent
[5] Response: ACK*/
