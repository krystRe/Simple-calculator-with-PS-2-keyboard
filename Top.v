`timescale 1ns / 1ps
module Top(
    input        clk_i,
    input        rst_i,
    input        ps2_clk_i,
    input        ps2_data_i,
    output [3:0] led7_an_o,
    output [7:0] led7_seg_o  
    );
    wire [7:0] output_data;
    wire [3:0] data;
    wire [3:0] thousands;
    wire [3:0] hundreds;
    wire [3:0] tens;
    wire [3:0] units;
    wire       data_recived; 
    
    Reciver        odbiornik    (.clk_i(clk_i), .rst_i(rst_i), .ps2_clk_i(ps2_clk_i), .ps2_data_i(ps2_data_i), .output_data(output_data), .data_recived(data_recived));
    Key_decoder    Key_decoder  (.data(output_data), .output_data(data));
    Decoder        decoder      (.rst_i(rst_i), .data(data), .thousands(thousands), .hundreds(hundreds), .tens(tens), .units(units), .flag_recived(data_recived));
    Display_driver display      (.clk_i(clk_i), .rst_i(rst_i), .thousands(thousands), .hundreds(hundreds), .tens(tens), .units(units), .led7_an_o(led7_an_o), .led7_seg_o(led7_seg_o));
endmodule
