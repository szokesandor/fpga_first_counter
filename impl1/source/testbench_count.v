// Lattice Diamond Version (64-bit) 3.12.0.240.2
// Ubuntu 20.04.4 LTS
//--------------------------
// Licence: MIT - See below 
//--------------------------
// Testbench for: first counter project
// purpose:
// - implementation 
// - simulation via integrated modelsim
//-------------------------------------------------------------
include "count.v";

module first_counter_tb();

 reg clock, reset;
 wire [31:0] count_out;
 initial begin
  $display("time\t clk reset counter");
  $monitor("%g %b %b %x", $time, clock, reset, count_out);
  clock = 1;
  reset = 0;
  #5 reset = 1;
  #10 reset = 0;
  #100 $finish;
 end

 always begin
  #5 clock = ~clock;
 end

 first_counter U_counter(
 clock,
 reset,
 count_out
 );
endmodule
///////////////////////////////////////////////////////////////////////////////
// The MIT License (MIT)                                                     //
//                                                                           //
// Copyright (c) 2022, SZŐKE, Sándor
//                                                                           //
// Permission is hereby granted, free of charge, to any person obtaining a   //
// copy of this software and associated documentation files (the "Software") //
// to deal in the Software without restriction, including without limitation // 
// the rights to use, copy, modify, merge, publish, distribute, sublicense,  //
// and/or sell copies of the Software, and to permit persons to whom the     //
// Software is furnished to do so, subject to the following conditions:      //
//                                                                           //
// The above copyright notice and this permission notice shall be included   // 
// in all copies or substantial portions of the Software.                    //
//                                                                           //
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS   //
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF                //
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.    //
// IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY      //
// CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT //
// OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR  //
// THE USE OR OTHER DEALINGS IN THE SOFTWARE.                                //
///////////////////////////////////////////////////////////////////////////////
