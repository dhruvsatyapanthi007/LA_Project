`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:30:00 10/05/2016 
// Design Name: 
// Module Name:    Inverse_Matrix 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Inverse_Matrix(mat[0][5],mat[0][6],mat[0][7],mat[0][8],mat[0][9],mat[1][5],mat[1][6],mat[1][7],mat[1][8],mat[1][9],mat[2][5],mat[2][6],mat[2][7],mat[2][8],mat[2][9],mat[3][5],mat[3][6],mat[3][7],mat[3][8],mat[3][9],mat[4][5],mat[4][6],mat[4][7],mat[4][8],mat[4][9]);

reg clk,i;

output reg[7:0] mat[0:4][0:9];

initial
	begin
			mat[0][0] = in[0][0];
			mat[0][1] = in[0][1];
			mat[0][2] = in[0][2];
			mat[0][3] = in[0][3];
			mat[0][4] = in[0][4];
			mat[1][0] = in[1][0];
			mat[1][1] = in[1][1];
			mat[1][2] = in[1][2];
			mat[1][3] = in[1][3];
			mat[1][4] = in[1][4];
			mat[2][0] = in[2][0];
			mat[2][1] = in[2][1];
			mat[2][2] = in[2][2];
			mat[2][3] = in[2][3];
			mat[2][4] = in[2][4];
			mat[3][0] = in[3][0];
			mat[3][1] = in[3][1];
			mat[3][2] = in[3][2];
			mat[3][3] = in[3][3];
			mat[3][4] = in[3][4];
			mat[4][0] = in[4][0];
			mat[4][1] = in[4][1];
			mat[4][2] = in[4][2];
			mat[4][3] = in[4][3];
			mat[4][4] = in[4][4];
			
			mat[0][5] = 1;
			mat[0][6] = 0;
			mat[0][7] = 0;
			mat[0][8] = 0;
			mat[0][9] = 0;
			mat[1][5] = 0;
			mat[1][6] = 1;
			mat[1][7] = 0;
			mat[1][8] = 0;
			mat[1][9] = 0;
			mat[2][5] = 0;
			mat[2][6] = 0;
			mat[2][7] = 1;
			mat[2][8] = 0;
			mat[2][9] = 0;
			mat[3][5] = 0;
			mat[3][6] = 0;
			mat[3][7] = 1;
			mat[3][8] = 0;
			mat[3][9] = 0;
			mat[4][5] = 0;
			mat[4][6] = 0;
			mat[4][7] = 0;
			mat[4][8] = 0;
			mat[4][9] = 1;		
			clk = 0;
			i=0;
			#100;
			i=1;
			#100;
			i=2;
			#100;
			i=3;
			#100;
			i=4;
			#100;
			i=5;
			#100;
			i=6;
			#100;
			i=7;
			#100;
			i=8;
			#100;
			i=9;
			#100;
	end
			always #100 clk = ~clk;
			always@(posedge clk)
			begin
			if(mat[i][i]==0&&i<=4)
				begin
				mat[i][0]=(i==0)?(mat[1][i]+mat[2][i]+mat[3][i]+mat[4][i]):((i==1)?(mat[2][i]+mat[3][i]+mat[4][i]):((i==2)?(mat[3][i]+mat[4][i]):(mat[4][i])));
				mat[i][1]=(i==0)?(mat[1][i]+mat[2][i]+mat[3][i]+mat[4][i]):((i==1)?(mat[2][i]+mat[3][i]+mat[4][i]):((i==2)?(mat[3][i]+mat[4][i]):(mat[4][i])));
				mat[i][2]=(i==0)?(mat[1][i]+mat[2][i]+mat[3][i]+mat[4][i]):((i==1)?(mat[2][i]+mat[3][i]+mat[4][i]):((i==2)?(mat[3][i]+mat[4][i]):(mat[4][i])));
				mat[i][3]=(i==0)?(mat[1][i]+mat[2][i]+mat[3][i]+mat[4][i]):((i==1)?(mat[2][i]+mat[3][i]+mat[4][i]):((i==2)?(mat[3][i]+mat[4][i]):(mat[4][i])));
				mat[i][4]=(i==0)?(mat[1][i]+mat[2][i]+mat[3][i]+mat[4][i]):((i==1)?(mat[2][i]+mat[3][i]+mat[4][i]):((i==2)?(mat[3][i]+mat[4][i]):(mat[4][i])));
				end
			mat[0][0]=(i==0)?(mat[0][0]):((i==1)?(mat[0][0]*mat[1][1]-mat[0][1]*mat[1][0]):((i==2)?(mat[0][0]*mat[2][2]-mat[0][2]*mat[2][0]):((i==3)?(mat[0][0]*mat[3][3]-mat[0][3]*mat[3][0]):(mat[0][0]*mat[4][4]-mat[0][4]*mat[4][0]))));			
			mat[0][1]=(i==0)?(mat[0][1]):((i==1)?(mat[0][1]*mat[1][1]-mat[0][1]*mat[1][1]):((i==2)?(mat[0][1]*mat[2][2]-mat[0][2]*mat[2][1]):((i==3)?(mat[0][1]*mat[3][3]-mat[0][3]*mat[3][1]):(mat[0][1]*mat[4][4]-mat[0][4]*mat[4][1]))));			
			mat[0][2]=(i==0)?(mat[0][2]):((i==1)?(mat[0][2]*mat[1][1]-mat[0][1]*mat[1][2]):((i==2)?(mat[0][2]*mat[2][2]-mat[0][2]*mat[2][2]):((i==3)?(mat[0][2]*mat[3][3]-mat[0][3]*mat[3][2]):(mat[0][2]*mat[4][4]-mat[0][4]*mat[4][2]))));			
			mat[0][3]=(i==0)?(mat[0][3]):((i==1)?(mat[0][3]*mat[1][1]-mat[0][1]*mat[1][3]):((i==2)?(mat[0][3]*mat[2][2]-mat[0][2]*mat[2][3]):((i==3)?(mat[0][3]*mat[3][3]-mat[0][3]*mat[3][3]):(mat[0][3]*mat[4][4]-mat[0][4]*mat[4][3]))));			
			mat[0][4]=(i==0)?(mat[0][4]):((i==1)?(mat[0][4]*mat[1][1]-mat[0][1]*mat[1][4]):((i==2)?(mat[0][4]*mat[2][2]-mat[0][2]*mat[2][4]):((i==3)?(mat[0][4]*mat[3][3]-mat[0][3]*mat[3][4]):(mat[0][4]*mat[4][4]-mat[0][4]*mat[4][4]))));			
			mat[0][5]=(i==0)?(mat[0][5]):((i==1)?(mat[0][5]*mat[1][1]-mat[0][1]*mat[1][5]):((i==2)?(mat[0][5]*mat[2][2]-mat[0][2]*mat[2][5]):((i==3)?(mat[0][5]*mat[3][3]-mat[0][3]*mat[3][5]):(mat[0][5]*mat[4][4]-mat[0][4]*mat[4][5]))));			
			mat[0][6]=(i==0)?(mat[0][6]):((i==1)?(mat[0][6]*mat[1][1]-mat[0][1]*mat[1][6]):((i==2)?(mat[0][6]*mat[2][2]-mat[0][2]*mat[2][6]):((i==3)?(mat[0][6]*mat[3][3]-mat[0][3]*mat[3][6]):(mat[0][6]*mat[4][4]-mat[0][4]*mat[4][6]))));			
			mat[0][7]=(i==0)?(mat[0][7]):((i==1)?(mat[0][7]*mat[1][1]-mat[0][1]*mat[1][7]):((i==2)?(mat[0][7]*mat[2][2]-mat[0][2]*mat[2][7]):((i==3)?(mat[0][7]*mat[3][3]-mat[0][3]*mat[3][7]):(mat[0][7]*mat[4][4]-mat[0][4]*mat[4][7]))));			
			mat[0][8]=(i==0)?(mat[0][8]):((i==1)?(mat[0][8]*mat[1][1]-mat[0][1]*mat[1][8]):((i==2)?(mat[0][8]*mat[2][2]-mat[0][2]*mat[2][8]):((i==3)?(mat[0][8]*mat[3][3]-mat[0][3]*mat[3][8]):(mat[0][8]*mat[4][4]-mat[0][4]*mat[4][8]))));			
			mat[0][9]=(i==0)?(mat[0][9]):((i==1)?(mat[0][9]*mat[1][1]-mat[0][1]*mat[1][9]):((i==2)?(mat[0][9]*mat[2][2]-mat[0][2]*mat[2][9]):((i==3)?(mat[0][9]*mat[3][3]-mat[0][3]*mat[3][9]):(mat[0][9]*mat[4][4]-mat[0][4]*mat[4][9]))));
			mat[1][0]=(i==1)?(mat[1][0]):((i==0)?(mat[1][0]*mat[0][0]-mat[1][0]*mat[0][0]):((i==2)?(mat[1][0]*mat[2][2]-mat[1][2]*mat[2][0]):((i==3)?(mat[1][0]*mat[3][3]-mat[1][3]*mat[3][0]):(mat[1][0]*mat[4][4]-mat[1][4]*mat[4][0]))));			
			mat[1][1]=(i==1)?(mat[1][1]):((i==0)?(mat[1][1]*mat[0][0]-mat[1][0]*mat[0][1]):((i==2)?(mat[1][1]*mat[2][2]-mat[0][2]*mat[2][1]):((i==3)?(mat[1][1]*mat[3][3]-mat[1][3]*mat[3][1]):(mat[1][1]*mat[4][4]-mat[1][4]*mat[4][1]))));			
			mat[1][2]=(i==1)?(mat[1][2]):((i==0)?(mat[1][2]*mat[0][0]-mat[1][0]*mat[0][2]):((i==2)?(mat[1][2]*mat[2][2]-mat[0][2]*mat[2][2]):((i==3)?(mat[1][2]*mat[3][3]-mat[1][3]*mat[3][2]):(mat[1][2]*mat[4][4]-mat[1][4]*mat[4][2]))));			
			mat[1][3]=(i==1)?(mat[1][3]):((i==0)?(mat[1][3]*mat[0][0]-mat[1][0]*mat[0][3]):((i==2)?(mat[1][3]*mat[2][2]-mat[0][2]*mat[2][3]):((i==3)?(mat[1][3]*mat[3][3]-mat[1][3]*mat[3][3]):(mat[1][3]*mat[4][4]-mat[1][4]*mat[4][3]))));			
			mat[1][4]=(i==1)?(mat[1][4]):((i==0)?(mat[1][4]*mat[0][0]-mat[1][0]*mat[0][4]):((i==2)?(mat[1][4]*mat[2][2]-mat[0][2]*mat[2][4]):((i==3)?(mat[1][4]*mat[3][3]-mat[1][3]*mat[3][4]):(mat[1][4]*mat[4][4]-mat[1][4]*mat[4][4]))));			
			mat[1][5]=(i==1)?(mat[1][5]):((i==0)?(mat[1][5]*mat[0][0]-mat[1][0]*mat[0][5]):((i==2)?(mat[1][5]*mat[2][2]-mat[0][2]*mat[2][5]):((i==3)?(mat[1][5]*mat[3][3]-mat[1][3]*mat[3][5]):(mat[1][5]*mat[4][4]-mat[1][4]*mat[4][5]))));			
			mat[1][6]=(i==1)?(mat[1][6]):((i==0)?(mat[1][6]*mat[0][0]-mat[1][0]*mat[0][6]):((i==2)?(mat[1][6]*mat[2][2]-mat[0][2]*mat[2][6]):((i==3)?(mat[1][6]*mat[3][3]-mat[1][3]*mat[3][6]):(mat[1][6]*mat[4][4]-mat[1][4]*mat[4][6]))));			
			mat[1][7]=(i==1)?(mat[1][7]):((i==0)?(mat[1][7]*mat[0][0]-mat[1][0]*mat[0][7]):((i==2)?(mat[1][7]*mat[2][2]-mat[0][2]*mat[2][7]):((i==3)?(mat[1][7]*mat[3][3]-mat[1][3]*mat[3][7]):(mat[1][7]*mat[4][4]-mat[1][4]*mat[4][7]))));			
			mat[1][8]=(i==1)?(mat[1][8]):((i==0)?(mat[1][8]*mat[0][0]-mat[1][0]*mat[0][8]):((i==2)?(mat[1][8]*mat[2][2]-mat[0][2]*mat[2][8]):((i==3)?(mat[1][8]*mat[3][3]-mat[1][3]*mat[3][8]):(mat[1][8]*mat[4][4]-mat[1][4]*mat[4][8]))));			
			mat[1][9]=(i==1)?(mat[1][9]):((i==0)?(mat[1][9]*mat[0][0]-mat[1][0]*mat[0][9]):((i==2)?(mat[1][9]*mat[2][2]-mat[0][2]*mat[2][9]):((i==3)?(mat[1][9]*mat[3][3]-mat[1][3]*mat[3][9]):(mat[1][9]*mat[4][4]-mat[1][4]*mat[4][9]))));			
			mat[2][0]=(i==2)?(mat[2][0]):((i==0)?(mat[2][0]*mat[0][0]-mat[2][0]*mat[0][0]):((i==1)?(mat[2][0]*mat[1][1]-mat[2][1]*mat[1][0]):((i==3)?(mat[2][0]*mat[3][3]-mat[2][3]*mat[3][0]):(mat[2][0]*mat[4][4]-mat[2][4]*mat[4][0]))));			
			mat[2][1]=(i==2)?(mat[2][1]):((i==0)?(mat[2][1]*mat[0][0]-mat[2][0]*mat[0][1]):((i==1)?(mat[2][1]*mat[1][1]-mat[2][1]*mat[1][1]):((i==3)?(mat[2][1]*mat[3][3]-mat[2][3]*mat[3][1]):(mat[2][1]*mat[4][4]-mat[2][4]*mat[4][1]))));			
			mat[2][2]=(i==2)?(mat[2][2]):((i==0)?(mat[2][2]*mat[0][0]-mat[2][0]*mat[0][2]):((i==1)?(mat[2][2]*mat[1][1]-mat[2][1]*mat[1][2]):((i==3)?(mat[2][2]*mat[3][3]-mat[2][3]*mat[3][2]):(mat[2][2]*mat[4][4]-mat[2][4]*mat[4][2]))));			
			mat[2][3]=(i==2)?(mat[2][3]):((i==0)?(mat[2][3]*mat[0][0]-mat[2][0]*mat[0][3]):((i==1)?(mat[2][3]*mat[1][1]-mat[2][1]*mat[1][3]):((i==3)?(mat[2][3]*mat[3][3]-mat[2][3]*mat[3][3]):(mat[2][3]*mat[4][4]-mat[2][4]*mat[4][3]))));			
			mat[2][4]=(i==2)?(mat[2][4]):((i==0)?(mat[2][4]*mat[0][0]-mat[2][0]*mat[0][4]):((i==1)?(mat[2][4]*mat[1][1]-mat[2][1]*mat[1][4]):((i==3)?(mat[2][4]*mat[3][3]-mat[2][3]*mat[3][4]):(mat[2][4]*mat[4][4]-mat[2][4]*mat[4][4]))));			
			mat[2][5]=(i==2)?(mat[2][5]):((i==0)?(mat[2][5]*mat[0][0]-mat[2][0]*mat[0][5]):((i==1)?(mat[2][5]*mat[1][1]-mat[2][1]*mat[1][5]):((i==3)?(mat[2][5]*mat[3][3]-mat[2][3]*mat[3][5]):(mat[2][5]*mat[4][4]-mat[2][4]*mat[4][5]))));			
			mat[2][6]=(i==2)?(mat[2][6]):((i==0)?(mat[2][6]*mat[0][0]-mat[2][0]*mat[0][6]):((i==1)?(mat[2][6]*mat[1][1]-mat[2][1]*mat[1][6]):((i==3)?(mat[2][6]*mat[3][3]-mat[2][3]*mat[3][6]):(mat[2][6]*mat[4][4]-mat[2][4]*mat[4][6]))));			
			mat[2][7]=(i==2)?(mat[2][7]):((i==0)?(mat[2][7]*mat[0][0]-mat[2][0]*mat[0][7]):((i==1)?(mat[2][7]*mat[1][1]-mat[2][1]*mat[1][7]):((i==3)?(mat[2][7]*mat[3][3]-mat[2][3]*mat[3][7]):(mat[2][7]*mat[4][4]-mat[2][4]*mat[4][7]))));			
			mat[2][8]=(i==2)?(mat[2][8]):((i==0)?(mat[2][8]*mat[0][0]-mat[2][0]*mat[0][8]):((i==1)?(mat[2][8]*mat[1][1]-mat[2][1]*mat[1][8]):((i==3)?(mat[2][8]*mat[3][3]-mat[2][3]*mat[3][8]):(mat[2][8]*mat[4][4]-mat[2][4]*mat[4][8]))));			
			mat[2][9]=(i==2)?(mat[2][9]):((i==0)?(mat[2][9]*mat[0][0]-mat[2][0]*mat[0][9]):((i==1)?(mat[2][9]*mat[1][1]-mat[2][1]*mat[1][9]):((i==3)?(mat[2][9]*mat[3][3]-mat[2][3]*mat[3][9]):(mat[2][9]*mat[4][4]-mat[2][4]*mat[4][9]))));			
			mat[3][0]=(i==3)?(mat[3][0]):((i==0)?(mat[3][0]*mat[0][0]-mat[3][0]*mat[0][0]):((i==1)?(mat[3][0]*mat[1][1]-mat[3][1]*mat[1][0]):((i==2)?(mat[3][0]*mat[2][2]-mat[3][2]*mat[2][0]):(mat[3][0]*mat[4][4]-mat[3][4]*mat[4][0]))));			
			mat[3][1]=(i==3)?(mat[3][1]):((i==0)?(mat[3][1]*mat[0][0]-mat[3][0]*mat[0][1]):((i==1)?(mat[3][1]*mat[1][1]-mat[3][1]*mat[1][1]):((i==2)?(mat[3][1]*mat[2][2]-mat[3][2]*mat[2][1]):(mat[3][1]*mat[4][4]-mat[3][4]*mat[4][1]))));			
			mat[3][2]=(i==3)?(mat[3][2]):((i==0)?(mat[3][2]*mat[0][0]-mat[3][0]*mat[0][2]):((i==1)?(mat[3][2]*mat[1][1]-mat[3][1]*mat[1][2]):((i==2)?(mat[3][2]*mat[2][2]-mat[3][2]*mat[2][2]):(mat[3][2]*mat[4][4]-mat[3][4]*mat[4][2]))));			
			mat[3][3]=(i==3)?(mat[3][3]):((i==0)?(mat[3][3]*mat[0][0]-mat[3][0]*mat[0][3]):((i==1)?(mat[3][3]*mat[1][1]-mat[3][1]*mat[1][3]):((i==2)?(mat[3][3]*mat[2][2]-mat[3][2]*mat[2][3]):(mat[3][3]*mat[4][4]-mat[3][4]*mat[4][3]))));			
			mat[3][4]=(i==3)?(mat[3][4]):((i==0)?(mat[3][4]*mat[0][0]-mat[3][0]*mat[0][4]):((i==1)?(mat[3][4]*mat[1][1]-mat[3][1]*mat[1][4]):((i==2)?(mat[3][4]*mat[2][2]-mat[3][2]*mat[2][4]):(mat[3][4]*mat[4][4]-mat[3][4]*mat[4][4]))));			
			mat[3][5]=(i==3)?(mat[3][5]):((i==0)?(mat[3][5]*mat[0][0]-mat[3][0]*mat[0][5]):((i==1)?(mat[3][5]*mat[1][1]-mat[3][1]*mat[1][5]):((i==2)?(mat[3][5]*mat[2][2]-mat[3][2]*mat[2][5]):(mat[3][5]*mat[4][4]-mat[3][4]*mat[4][5]))));			
			mat[3][6]=(i==3)?(mat[3][6]):((i==0)?(mat[3][6]*mat[0][0]-mat[3][0]*mat[0][6]):((i==1)?(mat[3][6]*mat[1][1]-mat[3][1]*mat[1][6]):((i==2)?(mat[3][6]*mat[2][2]-mat[3][2]*mat[2][6]):(mat[3][6]*mat[4][4]-mat[3][4]*mat[4][6]))));			
			mat[3][7]=(i==3)?(mat[3][7]):((i==0)?(mat[3][7]*mat[0][0]-mat[3][0]*mat[0][7]):((i==1)?(mat[3][7]*mat[1][1]-mat[3][1]*mat[1][7]):((i==2)?(mat[3][7]*mat[2][2]-mat[3][2]*mat[2][7]):(mat[3][7]*mat[4][4]-mat[3][4]*mat[4][7]))));			
			mat[3][8]=(i==3)?(mat[3][8]):((i==0)?(mat[3][8]*mat[0][0]-mat[3][0]*mat[0][8]):((i==1)?(mat[3][8]*mat[1][1]-mat[3][1]*mat[1][8]):((i==2)?(mat[3][8]*mat[2][2]-mat[3][2]*mat[2][8]):(mat[3][8]*mat[4][4]-mat[3][4]*mat[4][8]))));			
			mat[3][9]=(i==3)?(mat[3][9]):((i==0)?(mat[3][9]*mat[0][0]-mat[3][0]*mat[0][9]):((i==1)?(mat[3][9]*mat[1][1]-mat[3][1]*mat[1][9]):((i==2)?(mat[3][9]*mat[2][2]-mat[3][2]*mat[2][9]):(mat[3][9]*mat[4][4]-mat[3][4]*mat[4][9]))));			
			mat[4][0]=(i==4)?(mat[4][0]):((i==0)?(mat[4][0]*mat[0][0]-mat[4][0]*mat[0][0]):((i==1)?(mat[4][0]*mat[1][1]-mat[4][1]*mat[1][0]):((i==2)?(mat[4][0]*mat[2][2]-mat[4][2]*mat[2][0]):(mat[4][0]*mat[3][3]-mat[4][4]*mat[3][0]))));			
			mat[4][1]=(i==4)?(mat[4][1]):((i==0)?(mat[4][1]*mat[0][0]-mat[4][0]*mat[0][1]):((i==1)?(mat[4][1]*mat[1][1]-mat[4][1]*mat[1][1]):((i==2)?(mat[4][1]*mat[2][2]-mat[4][2]*mat[2][1]):(mat[4][1]*mat[3][3]-mat[4][4]*mat[3][1]))));			
			mat[4][2]=(i==4)?(mat[4][2]):((i==0)?(mat[4][2]*mat[0][0]-mat[4][0]*mat[0][2]):((i==1)?(mat[4][2]*mat[1][1]-mat[4][1]*mat[1][2]):((i==2)?(mat[4][2]*mat[2][2]-mat[4][2]*mat[2][2]):(mat[4][2]*mat[3][3]-mat[4][4]*mat[3][2]))));			
			mat[4][3]=(i==4)?(mat[4][3]):((i==0)?(mat[4][3]*mat[0][0]-mat[4][0]*mat[0][3]):((i==1)?(mat[4][3]*mat[1][1]-mat[4][1]*mat[1][3]):((i==2)?(mat[4][3]*mat[2][2]-mat[4][2]*mat[2][3]):(mat[4][3]*mat[3][3]-mat[4][4]*mat[3][3]))));			
			mat[4][4]=(i==4)?(mat[4][4]):((i==0)?(mat[4][4]*mat[0][0]-mat[4][0]*mat[0][4]):((i==1)?(mat[4][4]*mat[1][1]-mat[4][1]*mat[1][4]):((i==2)?(mat[4][4]*mat[2][2]-mat[4][2]*mat[2][4]):(mat[4][4]*mat[3][3]-mat[4][4]*mat[3][4]))));			
			mat[4][5]=(i==4)?(mat[4][5]):((i==0)?(mat[4][5]*mat[0][0]-mat[4][0]*mat[0][5]):((i==1)?(mat[4][5]*mat[1][1]-mat[4][1]*mat[1][5]):((i==2)?(mat[4][5]*mat[2][2]-mat[4][2]*mat[2][5]):(mat[4][5]*mat[3][3]-mat[4][4]*mat[3][5]))));			
			mat[4][6]=(i==4)?(mat[4][6]):((i==0)?(mat[4][6]*mat[0][0]-mat[4][0]*mat[0][6]):((i==1)?(mat[4][6]*mat[1][1]-mat[4][1]*mat[1][6]):((i==2)?(mat[4][6]*mat[2][2]-mat[4][2]*mat[2][6]):(mat[4][6]*mat[3][3]-mat[4][4]*mat[3][6]))));			
			mat[4][7]=(i==4)?(mat[4][7]):((i==0)?(mat[4][7]*mat[0][0]-mat[4][0]*mat[0][7]):((i==1)?(mat[4][7]*mat[1][1]-mat[4][1]*mat[1][7]):((i==2)?(mat[4][7]*mat[2][2]-mat[4][2]*mat[2][7]):(mat[4][7]*mat[3][3]-mat[4][4]*mat[3][7]))));			
			mat[4][8]=(i==4)?(mat[4][8]):((i==0)?(mat[4][8]*mat[0][0]-mat[4][0]*mat[0][8]):((i==1)?(mat[4][8]*mat[1][1]-mat[4][1]*mat[1][8]):((i==2)?(mat[4][8]*mat[2][2]-mat[4][2]*mat[2][8]):(mat[4][8]*mat[3][3]-mat[4][4]*mat[3][8]))));			
			mat[4][9]=(i==4)?(mat[4][9]):((i==0)?(mat[4][9]*mat[0][0]-mat[4][0]*mat[0][9]):((i==1)?(mat[4][9]*mat[1][1]-mat[4][1]*mat[1][9]):((i==2)?(mat[4][9]*mat[2][2]-mat[4][2]*mat[2][9]):(mat[4][9]*mat[3][3]-mat[4][4]*mat[3][9]))));				
			end
endmodule
