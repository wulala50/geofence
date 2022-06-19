module dadda(A,B,Y);

input [9:0]A,B;
output [19:0]Y; //B*A=Y
    
wire PP	[9:0][9:0] ;
wire [1:0]sum1,c1;
wire [7:0]sum21,c21;
wire [5:0]sum22,c22;
wire [3:0]sum23,c23;
wire [11:0]sum31,c31;
wire [9:0] sum32,c32;
wire [13:0]sum41,c41;
wire [15:0]sum51,c51;
wire [1:17]cf;
//produce  partial  product
assign PP[0][0]=A[0]&B[0];
assign PP[0][1]=A[0]&B[1];
assign PP[0][2]=A[0]&B[2];
assign PP[0][3]=A[0]&B[3];
assign PP[0][4]=A[0]&B[4];
assign PP[0][5]=A[0]&B[5];
assign PP[0][6]=A[0]&B[6];
assign PP[0][7]=A[0]&B[7];
assign PP[0][8]=A[0]&B[8];
assign PP[0][9]=A[0]&B[9];

assign PP[1][0]=A[1]&B[0];
assign PP[1][1]=A[1]&B[1];
assign PP[1][2]=A[1]&B[2];
assign PP[1][3]=A[1]&B[3];
assign PP[1][4]=A[1]&B[4];
assign PP[1][5]=A[1]&B[5];
assign PP[1][6]=A[1]&B[6];
assign PP[1][7]=A[1]&B[7];
assign PP[1][8]=A[1]&B[8];
assign PP[1][9]=A[1]&B[9];

assign PP[2][0]=A[2]&B[0];
assign PP[2][1]=A[2]&B[1];
assign PP[2][2]=A[2]&B[2];
assign PP[2][3]=A[2]&B[3];
assign PP[2][4]=A[2]&B[4];
assign PP[2][5]=A[2]&B[5];
assign PP[2][6]=A[2]&B[6];
assign PP[2][7]=A[2]&B[7];
assign PP[2][8]=A[2]&B[8];
assign PP[2][9]=A[2]&B[9];

assign PP[3][0]=A[3]&B[0];
assign PP[3][1]=A[3]&B[1];
assign PP[3][2]=A[3]&B[2];
assign PP[3][3]=A[3]&B[3];
assign PP[3][4]=A[3]&B[4];
assign PP[3][5]=A[3]&B[5];
assign PP[3][6]=A[3]&B[6];
assign PP[3][7]=A[3]&B[7];
assign PP[3][8]=A[3]&B[8];
assign PP[3][9]=A[3]&B[9];

assign PP[4][0]=A[4]&B[0];
assign PP[4][1]=A[4]&B[1];
assign PP[4][2]=A[4]&B[2];
assign PP[4][3]=A[4]&B[3];
assign PP[4][4]=A[4]&B[4];
assign PP[4][5]=A[4]&B[5];
assign PP[4][6]=A[4]&B[6];
assign PP[4][7]=A[4]&B[7];
assign PP[4][8]=A[4]&B[8];
assign PP[4][9]=A[4]&B[9];

assign PP[5][0]=A[5]&B[0];
assign PP[5][1]=A[5]&B[1];
assign PP[5][2]=A[5]&B[2];
assign PP[5][3]=A[5]&B[3];
assign PP[5][4]=A[5]&B[4];
assign PP[5][5]=A[5]&B[5];
assign PP[5][6]=A[5]&B[6];
assign PP[5][7]=A[5]&B[7];
assign PP[5][8]=A[5]&B[8];
assign PP[5][9]=A[5]&B[9];

assign PP[6][0]=A[6]&B[0];
assign PP[6][1]=A[6]&B[1];
assign PP[6][2]=A[6]&B[2];
assign PP[6][3]=A[6]&B[3];
assign PP[6][4]=A[6]&B[4];
assign PP[6][5]=A[6]&B[5];
assign PP[6][6]=A[6]&B[6];
assign PP[6][7]=A[6]&B[7];
assign PP[6][8]=A[6]&B[8];
assign PP[6][9]=A[6]&B[9];

assign PP[7][0]=A[7]&B[0];
assign PP[7][1]=A[7]&B[1];
assign PP[7][2]=A[7]&B[2];
assign PP[7][3]=A[7]&B[3];
assign PP[7][4]=A[7]&B[4];
assign PP[7][5]=A[7]&B[5];
assign PP[7][6]=A[7]&B[6];
assign PP[7][7]=A[7]&B[7];
assign PP[7][8]=A[7]&B[8];
assign PP[7][9]=A[7]&B[9];

assign PP[8][0]=A[8]&B[0];
assign PP[8][1]=A[8]&B[1];
assign PP[8][2]=A[8]&B[2];
assign PP[8][3]=A[8]&B[3];
assign PP[8][4]=A[8]&B[4];
assign PP[8][5]=A[8]&B[5];
assign PP[8][6]=A[8]&B[6];
assign PP[8][7]=A[8]&B[7];
assign PP[8][8]=A[8]&B[8];
assign PP[8][9]=A[8]&B[9];

assign PP[9][0]=A[9]&B[0];
assign PP[9][1]=A[9]&B[1];
assign PP[9][2]=A[9]&B[2];
assign PP[9][3]=A[9]&B[3];
assign PP[9][4]=A[9]&B[4];
assign PP[9][5]=A[9]&B[5];
assign PP[9][6]=A[9]&B[6];
assign PP[9][7]=A[9]&B[7];
assign PP[9][8]=A[9]&B[8];
assign PP[9][9]=A[9]&B[9];

//stage1 d=9
HA ha11(PP[0][9],PP[1][8],sum1[0],c1[0]);
HA ha12(PP[1][9],PP[2][8],sum1[1],c1[1]); 

//stage2 d=6
HA ha21(PP[0][6],PP[1][5],sum21[0],c21[0]);
FA fa21_0(PP[0][7],PP[1][6],PP[2][5],sum21[1],c21[1]);
FA fa21_1(PP[0][8],PP[1][7],PP[2][6],sum21[2],c21[2]);
FA fa21_2(sum1[0],PP[2][7],PP[3][6],sum21[3],c21[3]);
FA fa21_3(sum1[1],PP[3][7],PP[4][6],sum21[4],c21[4]);
FA fa21_4(PP[2][9],PP[3][8],PP[4][7],sum21[5],c21[5]);
FA fa21_5(PP[3][9],PP[4][8],PP[5][7],sum21[6],c21[6]);
FA fa21_6(PP[4][9],PP[5][8],PP[6][7],sum21[7],c21[7]);

HA ha22(PP[3][4],PP[4][3],sum22[0],c22[0]);
FA fa22_1(PP[3][5],PP[4][4],PP[5][3],sum22[1],c22[1]);
FA fa22_2(PP[4][5],PP[5][4],PP[6][3],sum22[2],c22[2]);
FA fa22_3(PP[5][5],PP[6][4],PP[7][3],sum22[3],c22[3]);
FA fa22_4(PP[5][6],PP[6][5],PP[7][4],sum22[4],c22[4]);
FA fa22_5(PP[6][6],PP[7][5],PP[8][4],sum22[5],c22[5]);

HA ha23(PP[6][2],PP[7][1],sum23[0],c23[0]);
FA fa23_1(PP[7][2],PP[8][1],PP[9][0],sum23[1],c23[1]);
FA fa23_2(PP[8][2],PP[9][1],c1[0],sum23[2],c23[2]);
FA fa23_3(PP[8][3],PP[9][2],c1[1],sum23[3],c23[3]);

//stage3 d=4
HA ha31(PP[0][4],PP[1][3],sum31[0],c31[0]);
FA fa31_0(PP[0][5],PP[1][4],PP[2][3],sum31[1],c31[1]);
FA fa31_1(sum21[0],PP[2][4],PP[3][3],sum31[2],c31[2]);
FA fa31_2(sum21[1],sum22[0],PP[5][2],sum31[3],c31[3]);
FA fa31_3(sum21[2],sum22[1],sum23[0],sum31[4],c31[4]);
FA fa31_4(sum21[3],sum22[2],sum23[1],sum31[5],c31[5]);
FA fa31_5(sum21[4],sum22[3],sum23[2],sum31[6],c31[6]);
FA fa31_6(sum21[5],sum22[4],sum23[3],sum31[7],c31[7]);
FA fa31_7(sum21[6],sum22[5],PP[9][3],sum31[8],c31[8]);
FA fa31_8(sum21[7],PP[7][6],PP[8][5],sum31[9],c31[9]);
FA fa31_9(PP[5][9],PP[6][8],PP[7][7],sum31[10],c31[10]);
FA fa31_10(PP[6][9],PP[7][8],PP[8][7],sum31[11],c31[11]);

HA ha32(PP[3][2],PP[4][1],sum32[0],c32[0]);
FA fa32_0(PP[4][2],PP[5][1],PP[6][0],sum32[1],c32[1]);
FA fa32_1(PP[6][1],PP[7][0],c21[0],sum32[2],c32[2]);
FA fa32_2(PP[8][0],c21[1],c22[0],sum32[3],c32[3]);
FA fa32_3(c23[0],c21[2],c22[1],sum32[4],c32[4]);
FA fa32_4(c23[1],c21[3],c22[2],sum32[5],c32[5]);
FA fa32_5(c23[2],c21[4],c22[3],sum32[6],c32[6]);
FA fa32_6(c23[3],c21[5],c22[4],sum32[7],c32[7]);
FA fa32_7(PP[9][4],c21[6],c22[5],sum32[8],c32[8]);
FA fa32_8(PP[8][6],PP[9][5],c21[7],sum32[9],c32[9]);
//stage4 d=3

HA ha41(PP[0][3],PP[1][2],sum41[0],c41[0]);
FA fa41_0(sum31[0],PP[2][2],PP[3][1],sum41[1],c41[1]);
FA fa41_1(sum31[1],sum32[0],PP[5][0],sum41[2],c41[2]);
FA fa41_2(sum31[2],sum32[1],c31[1],sum41[3],c41[3]);
FA fa41_3(sum31[3],sum32[2],c31[2],sum41[4],c41[4]);
FA fa41_4(sum31[4],sum32[3],c31[3],sum41[5],c41[5]);
FA fa41_5(sum31[5],sum32[4],c31[4],sum41[6],c41[6]);
FA fa41_6(sum31[6],sum32[5],c31[5],sum41[7],c41[7]);
FA fa41_7(sum31[7],sum32[6],c31[6],sum41[8],c41[8]);
FA fa41_8(sum31[8],sum32[7],c31[7],sum41[9],c41[9]);
FA fa41_9(sum31[9],sum32[8],c31[8],sum41[10],c41[10]);
FA fa41_10(sum31[10],sum32[9],c31[9],sum41[11],c41[11]);
FA fa41_11(sum31[11],PP[9][6],c31[10],sum41[12],c41[12]);
FA fa41_12(PP[7][9],PP[8][8],PP[9][7],sum41[13],c41[13]);

//stage5 d=2

HA ha51(PP[0][2],PP[1][1],sum51[0],c51[0]);
FA fa51_0(sum41[0],PP[2][1],PP[3][0],sum51[1],c51[1]);
FA fa51_1(sum41[1],c41[0],PP[4][0],sum51[2],c51[2]);
FA fa51_2(sum41[2],c41[1],c31[0],sum51[3],c51[3]);
FA fa51_3(sum41[3],c32[0],c41[2],sum51[4],c51[4]);
FA fa51_4(sum41[4],c32[1],c41[3],sum51[5],c51[5]);
FA fa51_5(sum41[5],c32[2],c41[4],sum51[6],c51[6]);
FA fa51_6(sum41[6],c32[3],c41[5],sum51[7],c51[7]);
FA fa51_7(sum41[7],c32[4],c41[6],sum51[8],c51[8]);
FA fa51_8(sum41[8],c32[5],c41[7],sum51[9],c51[9]);
FA fa51_9(sum41[9],c32[6],c41[8],sum51[10],c51[10]);
FA fa51_10(sum41[10],c32[7],c41[9],sum51[11],c51[11]);
FA fa51_11(sum41[11],c32[8],c41[10],sum51[12],c51[12]);
FA fa51_12(sum41[12],c32[9],c41[11],sum51[13],c51[13]);
FA fa51_13(sum41[13],c31[11],c41[12],sum51[14],c51[14]);
FA fa51_14(PP[8][9],PP[9][8],c41[13],sum51[15],c51[15]);

//final stage add
assign Y[0]=PP[0][0];
HA hafinal(PP[0][1],PP[1][0],Y[1],cf[1]);
FA fafinal1(sum51[0],PP[2][0],cf[1],Y[2],cf[2]);
FA fafinal2(sum51[1],c51[0],cf[2],Y[3],cf[3]);
FA fafinal3(sum51[2],c51[1],cf[3],Y[4],cf[4]);
FA fafinal4(sum51[3],c51[2],cf[4],Y[5],cf[5]);
FA fafinal5(sum51[4],c51[3],cf[5],Y[6],cf[6]);
FA fafinal6(sum51[5],c51[4],cf[6],Y[7],cf[7]);
FA fafinal7(sum51[6],c51[5],cf[7],Y[8],cf[8]);
FA fafinal8(sum51[7],c51[6],cf[8],Y[9],cf[9]);
FA fafinal9(sum51[8],c51[7],cf[9],Y[10],cf[10]);
FA fafinal10(sum51[9],c51[8],cf[10],Y[11],cf[11]);
FA fafinal11(sum51[10],c51[9],cf[11],Y[12],cf[12]);
FA fafinal12(sum51[11],c51[10],cf[12],Y[13],cf[13]);
FA fafinal13(sum51[12],c51[11],cf[13],Y[14],cf[14]);
FA fafinal14(sum51[13],c51[12],cf[14],Y[15],cf[15]);
FA fafinal15(sum51[14],c51[13],cf[15],Y[16],cf[16]);
FA fafinal16(sum51[15],c51[14],cf[16],Y[17],cf[17]);
FA fafinal17(PP[9][9],c51[15],cf[17],Y[18],Y[19]);

endmodule

