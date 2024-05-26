`timescale  1ns/1ps
module tb ;
reg clock,reset,coin5,coin10;
reg [1:0] sel;
wire coin_out,dispense;

top uut(sel,clock,reset,coin5,coin10,coin_out,dispense);

initial begin
    clock=0;
    forever #10 clock=~clock;
end

task resetn;
begin
    reset=0;
    #5 reset=1;
end
endtask

task initialize;
begin
    coin10=0;
    coin5=0;
end
endtask

task COIN_5_IN(input i);
begin
    @(negedge clock)coin5=i;
    @(posedge clock)coin5=0;
end
endtask 

task COIN_10_IN(input j);
begin
    @(negedge clock)coin10=j;
    @(posedge clock)coin10=0;
end
endtask

task select (input [1:0] k);
begin
    sel=k;
end
endtask   


initial begin
    resetn;
    initialize;

    select(0);
    COIN_10_IN(1);
    #10;
    COIN_10_IN(1);
    #10;
    resetn;

    select(1);
    COIN_10_IN(1);
    #10;
    COIN_5_IN(1);
    #10;
    COIN_10_IN(1);
    #10;
    resetn;
    
    select(2);
    COIN_10_IN(1);
    #10;
    COIN_10_IN(1);
    #10;
    COIN_10_IN(1);
    #10;
    resetn;
    select(3);
    COIN_5_IN(1);
    #10;
    COIN_10_IN(1);
    #10;
    COIN_10_IN(1);
    #10;
    COIN_10_IN(1);
    #10;
    resetn;
    #100 $finish; 
end

initial $monitor("Time=%0d,Input_Rs.5=%b,Input_Rs.10=%b,Item.No=%b,Coin_Out=%b,Dispense=%b",$time,coin5,coin10,sel,coin_out,dispense);
endmodule