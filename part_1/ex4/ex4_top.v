module ex4_top(
	SW[9:0],
	HEX0[6:0],
	HEX1[6:0],
	HEX2[6:0],
	HEX3[6:0]
	);
	
	input SW [9:0];
	output HEX0[6:0];
	output HEX1[6:0];
	output HEX2[6:0];
	output HEX3[6:0];

	wire [3:0]	w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12;
	wire [3:0]	a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12;
	
	ge5_add3 A1 (w1,a1);
	ge5_add3 A2 (w2,a2);
	ge5_add3 A3 (w3,a3);
	ge5_add3 A4 (w4,a4);
	ge5_add3 A5 (w5,a5);
	ge5_add3 A6 (w6,a6);
	ge5_add3 A7 (w7,a7);
	ge5_add3 A8 (w8,a8);
	ge5_add3 A9 (w9,a9);
	ge5_add3 A10 (w10,a10);
	ge5_add3 A11 (w11,a11);
	ge5_add3 A12 (w12,a12);
	
	
	//Level 1
	assign w1={ 1'b0,SW[9:7] };
	
	//Level 2
	assign  w2 = {a1[2:0], SW[6]};

	//Level 3
	assign  w3 = {a2[2:0], SW[5]};
	
	//Level 4
	assign  w4 = {1'b0, a1[3], a2[3], a3[3]};
	assign  w5 = {a3[2:0], SW[4]};
	
	//Level 5
	assign  w6 = {a4[2:0], a5[3]};
	assign  w7 = {a5[2:0], SW[3]};
	
	//Level 6
	assign w8 = {a6[2:0],a7[3]};
	assign w9 = {a7[2:0],SW[2]};
	
	//level 7
	assign w10 = {1'b0,a4[3],a6[3],a8[3]};
	assign w11 = {a8[2:0],a9[3]};
	assign w12 = {a9[2:0],SW[1]};
	
	//level 8
	assign HEX3={3'b000,a10[3]};
	assign HEX2={a10[2:0],a11[3]};
	assign HEX1={a11[2:0],a12[3]};
	assign HEX0={a12[2:0],SW[0]};

endmodule


