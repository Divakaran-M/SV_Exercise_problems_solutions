/* Problem : 36
Scenario: 
An audio playback module receives packet IDs in a mailbox and must process them in order. 
Sample Input: 
send: 1, 2, 3 
Expected Output: 
Playing Packet: 1 
Playing Packet: 2 
Playing Packet: 3 
Interview Twist: Interviewer may ask them to verify FIFO playback order with a self-checking queue 
in addiƟon to mailbox.*/

program mailbox_problems;
  mailbox #(int) mbx;   
  int queue1[$];    
int packet[3] = '{1,2,3};
  initial begin
int pkt;
  mbx = new();
    foreach (packet[i]) begin
      $display("Send: %0d", packet[i]);
      mbx.put(packet[i]);           
      queue1.push_back(packet[i]);  
    end

      
        forever begin
          mbx.get(pkt);
          $display("Playing Packet: %0d", pkt);
          if (pkt !=queue1.pop_front())
            $display("Order mismatch! Got %0d", pkt);
      end
  end
endprogram
/* Output :
KERNEL: Send: 1
# KERNEL: Send: 2
# KERNEL: Send: 3
# KERNEL: Playing Packet: 1
# KERNEL: Playing Packet: 2
# KERNEL: Playing Packet: 3*/
