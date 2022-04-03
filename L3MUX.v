module L3MUX(out, s, i31, i30, i29, i28, i27, i26, i25, i24, i23, i22, i21, i20, i19, i18, i17, i16, i15, i14, i13, i12, i11, i10, i9, i8, i7, i6, i5, i4, i3, i2, i1, i0);
   input [31:0] i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, i21, i22, i23, i24, i25, i26, i27, i28, i29, i30, i31;
   input [4:0] s;
   output reg [31:0] out;
 
	always @(s or i0 or i1 or i2 or i3 or i4 or i5 or i6 or i7 or i8 or i9 or i10 or i11 or i12 or i13 or i14 or i15 or i16 or i17 or i18 or i19 or i20 or i21 or i22 or i23 or i24 or i25 or i26 or i27 or i28 or i29 or i30 or i31)
	begin
		case (s)
			5'd0  : out = i0;
			5'd1  : out = i1;
			5'd2  : out = i2;
			5'd3  : out = i3;
			5'd4  : out = i4;
			5'd5  : out = i5;
			5'd6  : out = i6;
			5'd7  : out = i7;
			5'd8  : out = i8;
			5'd9  : out = i9;
			5'd10 : out = i10;
			5'd11 : out = i11;
			5'd12 : out = i12;
			5'd13 : out = i13;
			5'd14 : out = i14;
			5'd15 : out = i15;
			5'd16 : out = i16;
			5'd17 : out = i17;
			5'd18 : out = i18;
			5'd19 : out = i19;
			5'd20 : out = i20;
			5'd21 : out = i21;
			5'd22 : out = i22;
			5'd23 : out = i23;
			5'd24 : out = i24;
			5'd25 : out = i25;
			5'd26 : out = i26;
			5'd27 : out = i27;
			5'd28 : out = i28;
			5'd29 : out = i29;
			5'd30 : out = i30;
			5'd31 : out = i31; 
			default : out = 32'hxxxxxxx;
		endcase
	end
endmodule
