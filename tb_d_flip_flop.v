`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 28.07.2023 08:14:00
// Design Name: 
// Module Name: tb_d_flip_flop
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_d_flip_flop;
    reg clk;
    reg d;
    wire q;
    wire q_bar;
    
    d_flip_flop DUT(.clk(clk),
                    .d(d),
                    .q(q),
                    .q_bar(q_bar)
                    );
    
        initial begin
            clk = 0;
           #5 d = 1;
           #10 d = 0;
           #5 d = 0;
           #10 d = 1;
           #5 d = 0;
           #10 d = 1;
           #5 d = 0;
           #10 d = 1; 
        end
        
        always #5 
            clk = ~clk;

    

endmodule
