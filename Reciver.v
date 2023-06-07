`timescale 1ns / 1ps
module Reciver(
    input            clk_i,
    input            rst_i,
    input            ps2_clk_i,
    input            ps2_data_i,
    output reg [7:0] output_data,
    output reg       data_recived
    );
    reg [3:0]  bit_counter = 0;
    reg [10:0] data;
    
    always @(negedge ps2_clk_i or posedge rst_i)
    if(rst_i)
    begin
        bit_counter <= 0;
        data        <= 0;
        output_data <= 0;
    end
    else
    begin
        data[bit_counter] <= ps2_data_i;
        bit_counter       <= bit_counter +1;
        
        if(bit_counter == 10)
        begin
            bit_counter <= 0;
            output_data <= data[8:1];
            data        <= 0;
        end
    end
    
    always @(posedge clk_i or posedge rst_i)
    begin
        if (rst_i) 
            data_recived <= 1;
        else 
        begin
            if (bit_counter == 10)
                data_recived <= 1;
            else if (bit_counter < 10)    
                data_recived <= 0;
        end
    end
endmodule
