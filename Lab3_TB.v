module Lab3_TB ();

	reg [31:0] wd;
	reg [4:0] ra1,ra2,wa;
	reg Clk, WE, RST;
	wire [31:0] rd1,rd2;
	LAB_3 mut (rd1,rd2,ra1,ra2,wa,wd,Clk,WE,RST);
	
	initial begin
	wd = 32'b0;
	ra1 = 5'd30;
	ra2 = 5'd0;
	wa= 5'd31;
	WE = 1'b0;
	Clk = 1'b1;
	RST = 1'b0; //rst starts at 0 to clear
	end
	
	always begin
	#5
	Clk = 1'b1;
	#5
	Clk= 1'b0;
	wd = $random; //write a random value to input, advance address, and pulse the clock.
	wa= wa+5'd1;
	ra1=ra1+5'd1;
	ra2=ra2+5'd1;
	end
	
	
	initial begin
		#5
		RST=1'b1; //pulse RST to clear
		#5
		RST=1'b0; 
		#5
		WE = 1'b1; //@ t=15, set WE to 1 to start writing
		#315 //after writing to every value, clear enable to read from them
		WE = 1'b0;
		#320 //after reading from every value, stop the clock.
		$stop;
	end

endmodule
