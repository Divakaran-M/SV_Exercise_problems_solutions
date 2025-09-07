/* Problem : 33
Q : To use .try_get() function in mailbox*/

program interrupt_handler;

  mailbox #(string) mbx;
  string interrupt;

  initial begin
    mbx = new();

  
    if (!mbx.try_get(interrupt))
      $display("No interrupt");


    mbx.put("UART_RX");

 
    if (mbx.try_get(interrupt))
      $display("Interrupt Received: %s", interrupt);
  end

endprogram
/*Output:
No interrupt
Interrupt Received: UART_RX*/
