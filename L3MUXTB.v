module L3MUXTB ();
	reg[31:0] i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i30,i31;
	reg[4:0] s;
	wire [31:0]o;
	L3MUX uut (o,s,i31, i30, i29, i28, i27, i26, i25, i24, i23, i22, i21, i20, i19, i18, i17, i16, i15, i14, i13, i12, i11, i10, i9, i8, i7, i6, i5, i4, i3, i2, i1, i0);
	
	initial begin
		i0=32'd0;
		i1=32'd1;
		i2=32'd2;
		i3=32'd3;
		i4=32'd4;
		i5=32'd5;
		i6=32'd6;
		i7=32'd7;
		i8=32'd8;
		i9=32'd9;
		i10=32'd10;
		i11=32'd11;
		i12=32'd12;
		i13=32'd13;
		i14=32'd14;
		i15=32'd15;
		i16=32'd16;
		i17=32'd17;
		i18=32'd18;
		i19=32'd19;
		i20=32'd20;
		i21=32'd21;
		i22=32'd22;
		i23=32'd23;
		i24=32'd24;
		i25=32'd25;
		i26=32'd26;
		i27=32'd27;
		i28=32'd28;
		i29=32'd29;
		i30=32'd30;
		i31=32'd31;
		s=5'b00000;
		end
	always begin
		#10
		s<=s+5'b00001;
	end
	initial begin
		#320 $stop;
	end
endmodule
