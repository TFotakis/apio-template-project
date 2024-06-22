`timescale 1ns/1ns
`include "src/blink.v"

module blink_tb;
	reg clk = 0;
	wire led_red;
	wire led_green;
	wire led_blue;

	blink uut(
		clk,
		led_red,
		led_green,
		led_blue
	);

	always begin
		clk = ~clk;
		#10;
	end

	initial begin
		$dumpfile("blink_tb.vcd");
		$dumpvars(0, blink_tb);

		#1000;

		$display("Test complete.");
		$finish;
	end

endmodule
