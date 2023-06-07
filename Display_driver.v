`timescale 1ns / 1ps

module Display_driver(
    input        clk_i,
    input        rst_i,
    input  [3:0] thousands,
    input  [3:0] hundreds,
    input  [3:0] tens,
    input  [3:0] units,
    output [3:0] led7_an_o,
    output [7:0] led7_seg_o    
    );
    
    localparam LEFT      = 2'b00;
    localparam MID_LEFT  = 2'b01;
    localparam MID_RIGHT = 2'b10;
    localparam RIGHT     = 2'b11;
    reg  [1:0] state     = LEFT;
    reg  [3:0] led7_an   = 0;
    reg  [7:0] led7_seg  = 0;
    integer counter      = 0;
    wire [7:0] seg1, seg2, seg3, seg4;
    
    always @(posedge clk_i or posedge rst_i)
    begin
        if(rst_i)
        begin
            counter  = 1'b0;
            state    <= LEFT;
            led7_seg <= 8'b00000000;
            led7_an  <= 4'b0000;
        end
        
        else
        begin
            if(counter == 10000)
            begin
                case (state)
                    LEFT: begin
                            led7_seg <= seg1;
                            led7_an  <= 4'b0111;
                            state    <= MID_LEFT;
                        end
                    MID_LEFT: begin
                            led7_seg <= seg2;
                            led7_an  <= 4'b1011;
                            state    <= MID_RIGHT;
                        end
                    MID_RIGHT: begin
                            led7_seg <= seg3;
                            led7_an  <= 4'b1101;
                            state    <= RIGHT;
                        end
                    RIGHT: begin
                            led7_seg <= seg4;
                            led7_an  <= 4'b1110;
                            state    <= LEFT;
                        end
                endcase
                counter = 0;
            end           
            counter = counter + 1;
        end
    end 
       
    Seven_seg_decoder Display1(thousands, seg1);
    Seven_seg_decoder Display2(hundreds, seg2);
    Seven_seg_decoder Display3(tens, seg3);
    Seven_seg_decoder Display4(units, seg4);
    
    assign led7_seg_o = led7_seg;
    assign led7_an_o  = led7_an;
endmodule
