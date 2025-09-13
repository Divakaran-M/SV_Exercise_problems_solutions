/* Problem : 38
Scenario: 
A supervisor task keeps reading from a mailbox unƟl there are no more commands.
Sample Input: 
Commands: START, RUN, STOP 
Expected Output: 
Processing: START 
Processing: RUN 
Processing: STOP 
Interview Twist: Expect use of .try_get() inside a while loop without blocking, and knowing when to 
break.*/

program mailbox_problems;
  mailbox #(string) mbx;
  initial begin
string cmd;
    mbx = new();
    mbx.put("START");
    mbx.put("RUN");
    mbx.put("STOP");
    while (mbx.try_get(cmd)) begin
      $display("Processing: %s", cmd);
    end
  end
endprogram
/* Output:
KERNEL: Processing: START
# KERNEL: Processing: RUN
# KERNEL: Processing: STOP*/
