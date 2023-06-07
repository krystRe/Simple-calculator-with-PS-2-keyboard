`timescale 1ns / 1ps

module Decoder(
    input         rst_i,
    input         flag_recived,
    input   [3:0] data,
    output  [3:0] thousands,
    output  [3:0] hundreds,
    output  [3:0] tens,
    output  [3:0] units
    );
    reg        break_flag   = 0;
    reg [15:0] data_recived = 0;
    reg [15:0] buffer       = 0;
    reg [3:0]  sign         = 0;
    reg        calculate    = 0;
    integer    wynik        = 0;
    
    always @ (posedge flag_recived or posedge rst_i) 
    begin
        if (rst_i)
            break_flag <= 0;
        else 
        begin
            if (data == 14) 
                break_flag <= 1;
            else
                break_flag <= 0;
        end
    end
  
    always @(posedge flag_recived or posedge rst_i)
    begin
        if(rst_i)
        begin
            data_recived <= 0;
            buffer       <= 0;
            sign         <= 0;
            calculate    <= 0;
            wynik        <= 0;
        end
        else 
        begin
            if(data >= 0 && data <= 9 && data_recived[15:12] == 0 && break_flag == 0)
            begin
                data_recived[3:0]   <= data;
                data_recived[7:4]   <= data_recived[3:0];
                data_recived[11:8]  <= data_recived[7:4];
                data_recived[15:12] <= data_recived[11:8];
            end
            else if((data == 10 || data == 11) && calculate == 0 && break_flag == 0)
            begin
                sign         <= data;
                buffer       <= data_recived[15:12]*1000 + data_recived[11:8]*100 + data_recived[7:4]*10 + data_recived[3:0];
                data_recived <= 0;
            end
            else if(data == 12 && sign != 0 && calculate == 0 && break_flag == 0)
            begin
                calculate <= 1;
                if(sign == 10)
                begin
                    wynik <= buffer + data_recived[15:12]*1000 + data_recived[11:8]*100 + data_recived[7:4]*10 + data_recived[3:0];
                end
                else if(sign == 11)
                begin
                    wynik <= buffer - ((data_recived[15:12])*1000 + (data_recived[11:8])*100 + (data_recived[7:4])*10 + data_recived[3:0]);
                end
            end
            else if(data == 13 && break_flag == 0)
            begin
                sign         <= 0;
                buffer       <= 0;
                data_recived <= 0;
                wynik        <= 0;
                calculate    <= 0;
            end
        end 
    end
    assign thousands = (calculate == 0) ? data_recived[15:12] : ((wynik>9999) ? 10 : (wynik < 0 ? 10 : (wynik % 10000)/1000));
    assign hundreds  = (calculate == 0) ? data_recived[11:8]  : ((wynik>9999) ? 10 : (wynik < 0 ? 10 : (wynik % 1000)/100));
    assign tens      = (calculate == 0) ? data_recived[7:4]   : ((wynik>9999) ? 10 : (wynik < 0 ? 10 : (wynik % 100)/10));
    assign units     = (calculate == 0) ? data_recived[3:0]   : ((wynik>9999) ? 10 : (wynik < 0 ? 10 : (wynik % 10)));
endmodule
