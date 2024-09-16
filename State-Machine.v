module FDM (
    input In1,
    input RST,
    input CLK,
    output regOut1
);

// State encoding
localparam [1:0]
A = 2'b00;
B = 2'b01;
C = 2'b10;
// State register 
reg [1:0] current_state, next_state;

//state register 
always@(posedge CLK or posedge RST) begin
    if (RST)
    current_state <=  A; // Reset to state A
    else
    current_state <= next_state;
end

//Next State logic and output logic
always@(*) begin
    case (current_state)
    A: begin
        if (In1 == 0) begin
            next_state = A;
            Out1 = 0;
        end else begin 
            next_state = B ;
            Out1 = 0 ;
        end 
    end
    B: begin 
        if (In1 == 1) begin 
        next_state = B ;
        Out1 = 0 ;
        end else begin
            next_state = C;
            Out1 = 0 ;
        end
    end
    C: begin 
        if (In1 == 0) begin
            next_state = C ;
            Out1 = 1 ;
        end else begin
            next_state = A ;
            Out1 = 1;
        end
    end
    default : begin
        next_state = A ; 
        Out1 = 0 ;
    end 
endcase
end 
endmodule

