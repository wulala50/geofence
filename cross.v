module Cross(Ax,Ay,Bx,By,Tx,Ty,Sx,Sy,IO);
input [9:0]Ax,Ay,Bx,By,Tx,Ty,Sx,Sy;
output IO;
//positive:0 negative:1
wire[9:0] vectorXx,vectorXy,vectorYx,vectorYy;
wire signXx,signXy,signYx,signYy;
wire[19:0] productA,productB;
wire signA,signB;

assign vectorXx=(Tx>Ax)?Tx-Ax:Ax-Tx;
assign signXx=(Tx>Ax)?1'b0:1'b1;

assign vectorXy=(Ty>Ay)?Ty-Ay:Ay-Ty;
assign signXy=(Ty>Ay)?1'b0:1'b1;

assign vectorYx=(Sx>Bx)?Sx-Bx:Bx-Sx;
assign signYx=(Sx>Bx)?1'b0:1'b1;

assign vectorYy=(Sy>By)?Sy-By:By-Sy;
assign signYy=(Sy>By)?1'b0:1'b1;
//assign productA=vectorXx*vectorYy;
dadda D0(vectorXx,vectorYy,productA);
assign signA=signXx^signYy;
//assign productB=vectorYx*vectorXy;
dadda D1(vectorXy,vectorYx,productB);
assign signB=signYx^signXy;

assign IO=(signA&signB)?((productB>productA)?1'b0:1'b1):(signA)?1'b1:(signB)?1'b0:(productA>productB)?1'b0:1'b1;





endmodule