module decoder3_8(
    input[2:0] in,  //3个输入
    output reg [7:0] out    //8个输出
);

always @(*) begin
    case(in)
        3'd0 : out = (8'b00000001);
        3'd1 : out = (8'b00000010);
        3'd2 : out = (8'b00000100);
        3'd3 : out = (8'b00001000);
        3'd4 : out = (8'b00010000);
        3'd5 : out = (8'b00100000);
        3'd6 : out = (8'b01000000);
        3'd7 : out = (8'b10000000);
    endcase
end

endmodule