/* 三目运算符写法
module mux2_1(
    input a,
    input b,
    input sel,
    output out
);

assign out = sel?b:a;

endmodule*/

//if-else写法
module mux2_1(
    input a,
    input b,
    input sel,
    output reg out
);
always @(*) begin
    if(sel)
        out <= b;
    else 
        out <= a;
end


endmodule
