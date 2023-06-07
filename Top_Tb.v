`timescale 1ns / 1ps

module Top_Tb();

reg clk_tb;
reg rst_tb;
reg PS_clk;
reg PS_data;
wire [3:0] Led;
wire [7:0] Seg;

Top UUT(clk_tb, rst_tb, PS_clk, PS_data, Led, Seg);

always
    #5 clk_tb = ~clk_tb;

initial
    begin
        clk_tb = 0;
        rst_tb = 1;
        #5
        rst_tb = 0;
        PS_data = 0;            
        PS_clk = 1;             // bit startu
        #10
        PS_clk = 0;             
        #10
        PS_clk = 1;             // bit 0
        PS_data = 0;
        #10                     
        PS_clk = 0;
        #10                     
        PS_clk = 1;             //bit 1
        PS_data = 1;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 2
        PS_data = 1;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 3
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 4
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 5
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 6
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 7
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit parzystosci
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit stopu
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        
        #40
        PS_data = 0;            //bit startu
        #10
        PS_clk = 0;             
        #10
        PS_clk = 1;             //bit 0
        PS_data = 0;
        #10                     
        PS_clk = 0;
        #10                     
        PS_clk = 1;             //bit 1
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 2
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 0;            //bit 3
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 4 
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 5
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;         
        PS_data = 1;            //bit 6
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 7
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit parzystosci
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //stop
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
                     
        #40
        PS_data = 0;            // bit startu
        #10
        PS_clk = 0;             
        #10
        PS_clk = 1;             // bit 0
        PS_data = 0;
        #10                     
        PS_clk = 0;
        #10                     
        PS_clk = 1;             //bit 1
        PS_data = 1;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 2
        PS_data = 1;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 3
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 4
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 5
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 6
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 7
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit parzystosci
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit stopu
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        
        
        // znak
        #50
        PS_data = 0;            // bit startu
        #10
        PS_clk = 0;             
        #10
        PS_clk = 1;             // bit 0
        PS_data = 1;
        #10                     
        PS_clk = 0;
        #10                     
        PS_clk = 1;             //bit 1
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 2
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 3
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 4
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 5
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 6
        PS_data = 1;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 7
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit parzystosci
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit stopu
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        
        #40
        PS_data = 0;            //bit startu
        #10
        PS_clk = 0;             
        #10
        PS_clk = 1;             //bit 0
        PS_data = 0;
        #10                     
        PS_clk = 0;
        #10                     
        PS_clk = 1;             //bit 1
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 2
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 0;            //bit 3
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 4 
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 5
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;         
        PS_data = 1;            //bit 6
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 7
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit parzystosci
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //stop
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
                     
        #40
        PS_data = 0;            // bit startu
        #10
        PS_clk = 0;             
        #10
        PS_clk = 1;             // bit 0
        PS_data = 1;
        #10                     
        PS_clk = 0;
        #10                     
        PS_clk = 1;             //bit 1
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 2
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 3
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 4
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 5
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 6
        PS_data = 1;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 7
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit parzystosci
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit stopu
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        
        // druga liczba
        PS_data = 0;            
        PS_clk = 1;             // bit startu
        #10
        PS_clk = 0;             
        #10
        PS_clk = 1;             // bit 0
        PS_data = 1;
        #10                     
        PS_clk = 0;
        #10                     
        PS_clk = 1;             //bit 1
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 2
        PS_data = 1;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 3
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 4
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 5
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 6
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 7
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit parzystosci
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit stopu
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        
        #40
        PS_data = 0;            //bit startu
        #10
        PS_clk = 0;             
        #10
        PS_clk = 1;             //bit 0
        PS_data = 0;
        #10                     
        PS_clk = 0;
        #10                     
        PS_clk = 1;             //bit 1
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 2
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 0;            //bit 3
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 4 
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 5
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;         
        PS_data = 1;            //bit 6
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 7
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit parzystosci
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //stop
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
                     
        #40
        PS_data = 0;            // bit startu
        #10
        PS_clk = 0;             
        #10
        PS_clk = 1;             // bit 0
        PS_data = 1;
        #10                     
        PS_clk = 0;
        #10                     
        PS_clk = 1;             //bit 1
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 2
        PS_data = 1;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 3
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 4
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 5
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 6
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 7
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit parzystosci
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit stopu
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        
        // oblicz 
        PS_data = 0;            
        PS_clk = 1;             // bit startu
        #10
        PS_clk = 0;             
        #10
        PS_clk = 1;             // bit 0
        PS_data = 1;
        #10                     
        PS_clk = 0;
        #10                     
        PS_clk = 1;             //bit 1
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 2
        PS_data = 1;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 0;            //bit 3
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 4
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 0;            //bit 5
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 6
        PS_data = 1;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 7
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit parzystosci
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit stopu
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        
        #40
        PS_data = 0;            //bit startu
        #10
        PS_clk = 0;             
        #10
        PS_clk = 1;             //bit 0
        PS_data = 0;
        #10                     
        PS_clk = 0;
        #10                     
        PS_clk = 1;             //bit 1
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 2
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 0;            //bit 3
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 4 
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 5
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;         
        PS_data = 1;            //bit 6
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 7
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit parzystosci
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //stop
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
                     
        #40
        PS_data = 0;            // bit startu
        #10
        PS_clk = 0;             
        #10
        PS_clk = 1;             // bit 0
        PS_data = 1;
        #10                     
        PS_clk = 0;
        #10                     
        PS_clk = 1;             //bit 1
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 2
        PS_data = 1;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 0;            //bit 3
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit 4
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 0;            //bit 5
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 6
        PS_data = 1;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit 7
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;             //bit parzystosci
        PS_data = 0;
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
        PS_data = 1;            //bit stopu
        #10
        PS_clk = 0;
        #10
        PS_clk = 1;
    end
endmodule
