module LAB_3 (rd1,rd2,ra1,ra2,wa,wd,Clk,WE,rst);
	input [31:0] wd;
	input [4:0] ra1,ra2,wa;
	input Clk, WE, rst;
	output [31:0] rd1,rd2;

	//internal wires for dec outputs and reg enables
	wire Y31, Y30, Y29, Y28, Y27, Y26, Y25, Y24, Y23, Y22, Y21, Y20, Y19, Y18, Y17, Y16, Y15, Y14, Y13, Y12, Y11, Y10, Y9, Y8, Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0; 
	
	//internal wires for reg outputs and mux inputs, each 32 bits wide
	wire [31:0] Q31, Q30, Q29, Q28, Q27, Q26, Q25, Q24, Q23, Q22, Q21, Q20, Q19, Q18, Q17, Q16, Q15, Q14, Q13, Q12, Q11, Q10, Q9, Q8, Q7, Q6, Q5, Q4, Q3, Q2, Q1, Q0; 

	//decoder outputs to Y wires, takes in wa for s, and we for its EN
	L3Decoder dec(Y31, Y30, Y29, Y28, Y27, Y26, Y25, Y24, Y23, Y22, Y21, Y20, Y19, Y18, Y17, Y16, Y15, Y14, Y13, Y12, Y11, Y10, Y9, Y8, Y7, Y6, Y5, Y4, Y3, Y2, Y1, Y0, 
					  wa,WE);
	
	//reg x0 is allways zero, this is hardcoded
	assign Q0 = 32'h00000000;
	//remaining registers, appropriate Q wire is output, appropriate Y wire is enable
	L3Register r1 (Q1 , wd,Clk,rst,Y1);
	L3Register r2 (Q2 , wd,Clk,rst,Y2);
	L3Register r3 (Q3 , wd,Clk,rst,Y3);
	L3Register r4 (Q4 , wd,Clk,rst,Y4);
	L3Register r5 (Q5 , wd,Clk,rst,Y5);
	L3Register r6 (Q6 , wd,Clk,rst,Y6);
	L3Register r7 (Q7 , wd,Clk,rst,Y7);
	L3Register r8 (Q8 , wd,Clk,rst,Y8);
	L3Register r9 (Q9 , wd,Clk,rst,Y9);
	L3Register r10(Q10, wd,Clk,rst,Y10);
	L3Register r11(Q11, wd,Clk,rst,Y11);
	L3Register r12(Q12, wd,Clk,rst,Y12);
	L3Register r13(Q13, wd,Clk,rst,Y13);
	L3Register r14(Q14, wd,Clk,rst,Y14);
	L3Register r15(Q15, wd,Clk,rst,Y15);
	L3Register r16(Q16, wd,Clk,rst,Y16);
	L3Register r17(Q17, wd,Clk,rst,Y17);
	L3Register r18(Q18, wd,Clk,rst,Y18);
	L3Register r19(Q19, wd,Clk,rst,Y19);
	L3Register r20(Q20, wd,Clk,rst,Y20);
	L3Register r21(Q21, wd,Clk,rst,Y21);
	L3Register r22(Q22, wd,Clk,rst,Y22);
	L3Register r23(Q23, wd,Clk,rst,Y23);
	L3Register r24(Q24, wd,Clk,rst,Y24);
	L3Register r25(Q25, wd,Clk,rst,Y25);
	L3Register r26(Q26, wd,Clk,rst,Y26);
	L3Register r27(Q27, wd,Clk,rst,Y27);
	L3Register r28(Q28, wd,Clk,rst,Y28);
	L3Register r29(Q29, wd,Clk,rst,Y29);
	L3Register r30(Q30, wd,Clk,rst,Y30);
	L3Register r31(Q31, wd,Clk,rst,Y31);
	
	//Muxes, takes in all Q wires as data inputs, use ra1 for rd1, ra2 for rd2.
	L3MUX mux1 (rd1, ra1, Q31, Q30, Q29, Q28, Q27, Q26, Q25, Q24, Q23, Q22, Q21, Q20, Q19, Q18, Q17, Q16, Q15, Q14, Q13, Q12, Q11, Q10, Q9, Q8, Q7, Q6, Q5, Q4, Q3, Q2, Q1, Q0);
	L3MUX mux2 (rd2, ra2, Q31, Q30, Q29, Q28, Q27, Q26, Q25, Q24, Q23, Q22, Q21, Q20, Q19, Q18, Q17, Q16, Q15, Q14, Q13, Q12, Q11, Q10, Q9, Q8, Q7, Q6, Q5, Q4, Q3, Q2, Q1, Q0);
	
endmodule
