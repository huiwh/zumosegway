function plant = get_tf()

  % Load needed packages                      
  pkg load control
  
  # Consants (context)
  load_physical_constants
  
  % Create the system for the plant
  plant = tf([-K_s], [l 0 -g]);

endfunction