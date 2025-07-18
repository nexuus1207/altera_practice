/*
    以500ms为间隔切换亮灭状态
*/

module LED_blink(
    input clk,
    input rst_n,
    output reg out
	 //output reg out1
);

parameter PERIOD = 25_000_000;//以500ms为时间尺度
reg[24:0] cnt;//时钟计数


//cnt计数逻辑
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        cnt <= 0;
    end
    else if(cnt == PERIOD -1)
        cnt <= 0;
    else
        cnt <= cnt + 1'd1;
end

//led闪烁逻辑
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        out <= 1'd1;
		  //out1 <= 1'd0;
    end
    else if(cnt == PERIOD -1)
	 out <= ~out;
    else 
        out <= out;
end




endmodule