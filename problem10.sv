program restore_registers;
  int registers [5] = '{5,7,9,11,13};
  int snapshot  [5];  

  initial begin
    snapshot = registers;

    $display("Original   = %p", registers);
    
    foreach (registers[i]) begin
      registers[i] = 0;
    end
    $display("After Modification = %p", registers);

    registers = snapshot;
    $display("Restored   = %p", registers);
  end
endprogram
