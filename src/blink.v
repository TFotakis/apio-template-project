
module blink (
	input clk,
	output led_red,
	output led_green,
	output led_blue
);

//-- Modify this value for changing the blink frequency
localparam N = 2;  //-- N<=21 Fast, N>=23 Slow

reg [N:0] counter = 0;
always @(posedge clk) counter <= counter + 1;

assign led_red = counter[N];
assign led_green = counter[N - 1];
assign led_blue = counter[N - 2];

endmodule
