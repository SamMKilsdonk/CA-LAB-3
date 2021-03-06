module L3Decoder (Y31, Y30, Y29, Y28, Y27, Y26, Y25, Y24, Y23, Y22, Y21, Y20, Y19, Y18, Y17, Y16, Y15, Y14, Y13, Y12, Y11, Y10, Y9, Y8, Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0, s, en); 
	output reg Y31, Y30, Y29, Y28, Y27, Y26, Y25, Y24, Y23, Y22, Y21, Y20, Y19, Y18, Y17, Y16, Y15, Y14, Y13, Y12, Y11, Y10, Y9, Y8, Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0; 
	input [4:0] s;
	input en; 
	always @(s or en)   begin 
		if (en == 1'b1) 
			case ( s ) 
				5'd0 : {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00000001;
				5'd1 : {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00000002;
				5'd2 : {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00000004;
				5'd3 : {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00000008; 
				5'd4 : {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00000010;
				5'd5 : {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00000020;
				5'd6 : {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00000040;
				5'd7 : {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00000080;
				5'd8 : {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00000100;
				5'd9 : {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00000200;
				5'd10: {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00000400;
				5'd11: {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00000800;
				5'd12: {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00001000;
				5'd13: {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00002000;
				5'd14: {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00004000;
				5'd15: {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00008000;
				5'd16: {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00010000;
				5'd17: {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00020000;
				5'd18: {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00040000;
				5'd19: {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00080000;
				5'd20: {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00100000;
				5'd21: {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00200000;
				5'd22: {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00400000;
				5'd23: {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00800000;
				5'd24: {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h01000000;
				5'd25: {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h02000000;
				5'd26: {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h04000000;
				5'd27: {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h08000000;
				5'd28: {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h10000000;
				5'd29: {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h20000000;
				5'd30: {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h40000000;
				5'd31: {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h80000000;
				default: {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'hxxxxxxxx; 
			endcase 
		if (en == 1'b0) {Y31,Y30,Y29,Y28,Y27,Y26,Y25,Y24,Y23,Y22,Y21,Y20,Y19,Y18,Y17,Y16,Y15,Y14,Y13,Y12,Y11,Y10,Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2,Y1,Y0} = 32'h00000000; 
	end 
endmodule
