module L3Register (q, data, clk, reset, enable);
	input [31:0] data ;
	input clk, reset, enable; 
	output  reg [31:0] q; 
	//-------------Code Starts Here--------- 
	always @ ( posedge clk or posedge reset) 
		if (reset==1'b1) begin 
			q <= 32'h00000000; 
		end 
		else if (enable) begin 
			q <= data; 
		end
endmodule
