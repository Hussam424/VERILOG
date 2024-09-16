module LS161a(
    input [3:0] D,        // Parallel Input
    input CLK,            // Clock
    input CLR_n,          // Active Low Asynchronous Reset
    input LOAD_n,         // Enable Parallel Input
    input ENP,            // Count Enable Parallel
    input ENT,            // Count Enable Trickle
    output  reg [3:0]Q,        // Parallel Output 	
    output RCO            // Ripple Carry Output (Terminal Count)
); 
   // Ripple Carry Output logic
    assign RCO = ENT & (&Q);

    // Main logic
    always @(posedge CLK or negedge CLR_n) begin
        if (!CLR_n) begin
            // Asynchronous reset
            Q <= 4'b0000;
        end else if (!LOAD_n) begin
            // Load parallel input
            Q <= D;
        end else if (ENT && ENP) begin
            // Increment counter
            Q <= Q + 1;
        end
    end

endmodule