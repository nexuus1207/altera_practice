module adder4(
    input [3:0] input_a,//被加数
    input [3:0] input_b,//加数
    input input_c,//来自低位的进位信号
    output reg[3:0] out_d,//相加结果
    output reg out_c//进位信号
);

always @(input_a,input_b,input_c) begin
    {out_c,out_d} <= input_a+input_b+input_c;
end


endmodule