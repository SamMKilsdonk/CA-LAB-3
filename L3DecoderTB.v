module L3DecoderTB ();  
	wire Y31, Y30, Y29, Y28, Y27, Y26, Y25, Y24, Y23, Y22, Y21, Y20, Y19, Y18, Y17, Y16, Y15, Y14, Y13, Y12, Y11, Y10, Y9, Y8, Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0; 
	reg [4:0] s;
	reg en; 
	// Instantiate the Decoder (named DUT {device under test}) 
	L3Decoder  DUT(Y31, Y30, Y29, Y28, Y27, Y26, Y25, Y24, Y23, Y22, Y21, Y20, Y19, Y18, Y17, Y16, Y15, Y14, Y13, Y12, Y11, Y10, Y9, Y8, Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0, 
						s, en); 
	
	initial begin
		s = 5'b00000;
		en = 1'b0;
		end
	always begin
		#10
		s <=s+5'b00001;
	end
	
	initial begin
		#320
		en <=1'b1;
		#320
		$stop;
	end
endmodule
