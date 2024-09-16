module  RAM128x32
#(
    parameter Data_width = 32, // ~ of bits in word
              Addr_width 7     //~ of address bits
)
(
    input wire clk,
    input wire we ,
    input wire [(Addr_width-1):0] address,
    input wire [(Addr_width-1):0] d,
    output reg [(Addr_width-1):0] q,
);

// declare the RAM variable 
reg [Data_width-1:0] ram[2**Addr_width-1:0];
// variable to ho;d the registered read address
reg[Addr_width-1:0] addr_reg ;

// wirte operation 
always @(posedge clk) begin
    if (we)
    ram[address] <= d;
    // Register the address for reading 
    addr_reg <= address;
end

// Register read operation 
always @(posedge clk) begin
    q <= ram[addr_reg];
end
endmodule