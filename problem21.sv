// Problem 21
// Use associative array to display sensor values
program assoc_array_exercises();
  int assoc_arr[string];
initial begin
  assoc_arr["Temp"]     = 15;
  assoc_arr["Pressure"] = -2;
  assoc_arr["Humidity"] = 7;
  foreach (assoc_arr[sensor]) begin
      $display("%s Calibration: %0d mV", sensor, assoc_arr[sensor]);
end
end
endprogram 
