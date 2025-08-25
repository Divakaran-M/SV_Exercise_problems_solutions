/* Problem : 28
Q : Retrive the associative array values using first,next,last*/

program assoc_arr;
  int assoc [int];
int address;
  initial begin
    assoc[10] = 100; 
    assoc[14] = 150;
    assoc[28] = 200;

    if (assoc.first(address)) begin
      do begin
        $display("Reg[0x%0d] = %0d", address, assoc[address]);
      end while (assoc.next(address));
   end

  end
endprogram
/* Output:
Reg[0x10] = 100
Reg[0x14] = 150
Reg[0x28] = 200*/
