`timescale 1ns / 1ps
module Key_decoder(
    input      [7:0] data,
    output reg [3:0] output_data
    );
    
    always @(data)
    begin
        case(data [7:0])
            8'b01000101: output_data <= 4'b0000;         //0
            8'b00010110: output_data <= 4'b0001;         //1
            8'b00011110: output_data <= 4'b0010;         //2
            8'b00100110: output_data <= 4'b0011;         //3
            8'b00100101: output_data <= 4'b0100;         //4
            8'b00101110: output_data <= 4'b0101;         //5
            8'b00110110: output_data  <= 4'b0110;        //6
            8'b00111101: output_data  <= 4'b0111;        //7
            8'b00111110: output_data  <= 4'b1000;        //8
            8'b01000110: output_data  <= 4'b1001;        //9
            8'b01111001: output_data  <= 4'b1010;        //+
            8'b01111011: output_data  <= 4'b1011;        //-
            8'b01010101: output_data  <= 4'b1100;        //=
            8'b01110110: output_data  <= 4'b1101;        //esc
            8'b11110000: output_data  <= 4'b1110;        //break
            default:     output_data  <= 4'b1111;        //odebrany klawisz nie jest dozwolony
        endcase
    end
endmodule
