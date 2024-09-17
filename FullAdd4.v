module FullAdd4(                 	
    input [3:0] A,
    input [3:0] B,
    input Cin,			
    output wire [3:0]Sum,
    output wire Cout);
            	          	
wire [4:0]C;
assign C[0]=Cin;

genvar i;
generate 
	 for (i=0;i<4;i=i+1) begin
:full_adder_loop FullAdder FA(

		.A(A[i]),
		.B(B[i]),
		.Cin(C[i]),
		.Sum(Sum[i]),
		.Cout(C[i+1])
	);
end 
endgenerate
assign Cout =C[4]; // last carry becomes Cout 
endmodule 
module FullAdder (

input A,
input B,
input Cin,
output Sum,
output Cout
);


assign Sum = A^ B^Cin;
assign Cout = (A&B)|(Cin &(A^B));

endmodule   