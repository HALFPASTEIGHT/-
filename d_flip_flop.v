//module d_flip_flop (d,clk,rst,q);
//	input wire d;
//	input wire clk;
//	input wire rst;
//	output reg q;
//
//	always @(posedge clk or posedge rst)
//	begin if(rst)  begin
//						q <= 0;//异步清0
//						end 
//					   
//			else begin 
//					if(d)begin 
//							q <= 1; //同步置1
//							end 
//							
//	end 
//endmodule 	
					
	
	
module d_flip_flop (d, clk, rst, q);
  input wire d;
  input wire clk;
  input wire rst;
  output reg q;

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      q <= 0; // 异步清0
    end
    else begin
      q <= (d) ? 1 : q; // 同步置1
    end
  end
endmodule	