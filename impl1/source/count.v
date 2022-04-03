// Lattice Diamond Version (64-bit) 3.12.0.240.2
// Ubuntu 20.04.4 LTS
//--------------------------
// Licence: MIT - See below 
//--------------------------
// First counter project
// purpose:
// - implementation 
// - simulation via integrated modelsim
//-------------------------------------------------------------
module first_counter(
 clock,
 reset,
 counter_out
 );
 input clock;
 input reset; 

 output [31:0] counter_out;

 wire clock;
 wire reset;

 reg [31:0] counter_out;

 always @ ( posedge clock)
 begin : COUNTER

   if (reset == 1'b1) 
   begin
     counter_out <= #1 32'b0000;
   end
   else
   begin
     counter_out <= #1 counter_out + 1;
   end
 end

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
