`timescale 1ns / 1ps

// nexys3MIPSSoC is a MIPS implementation originated from COAD projects
// Copyright (C) 2014  @Wenri, @dtopn, @Speed
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

module clk_div(
	input clk,
	input wire rst,
	input wire SW2,
	output reg[31:0] clkdiv,
	output wire Clk_CPU
    );


always @(posedge clk or posedge rst)begin
	if (rst) begin
		clkdiv <= 0;
	end else begin
		clkdiv <= clkdiv + 1'b1;
	end
end

//assign Clk_CPU = SW2?clkdiv[30]:clkdiv[1];

assign Clk_CPU = clk;

endmodule
