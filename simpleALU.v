module ALU (
    input [2:0] Op_code,
    input [31:0] A, B,
    output reg [31:0] Y
);
always @(*) begin
    case (Op_code)
    3'b000: Y = A; // pass through A
    3'b001: Y = A + B; // Add
    3'b010: Y = A - B; // subtract
    3'b011: Y = A & B; // bitwise AND
    3'b100: Y = A | B; // Bitwise OR  
    3'b101: Y = A + 1; // Increment A
    3'b110: Y = A - 1; // Decrement A
    3'b111: Y = B; // pass through B
    defult:Y = 32'b0;   // default case  (should never occur with 3-bit opcode)