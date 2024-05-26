module item_A (clock,reset,coin5,coin10,coin_out,dispense);

input clock,reset,coin5,coin10;
output reg coin_out,dispense;

localparam A0 = 3'b000, A5 = 3'b001, A10 = 3'b010, A15 = 3'b011, A20 = 3'b100;

reg [2:0] present,next;

always @(posedge clock or negedge reset) begin

    if (!reset)
    begin
        present <= A0;
    end

    else
    begin
        present <= next;
    end
    
end

always @(*) begin
    next=present;
    coin_out=0;
    dispense=0;

    case (present)

    A0 : begin
         if (coin5) next = A5;
         else if (coin10) next = A10;
         else next = A0;
         
         
    end

    A5 : begin
        if (coin5) next = A10;
        else if (coin10) next= A15;
        else next = A5;
    end

    A10 : begin
        if (coin5)  next = A15; 
        else if (coin10) next = A20; 
        else next = A10;
    end

    A15 : begin
         dispense = 1;
         next = A0;
    end

    A20 : begin
         dispense = 1;
         coin_out = 1;
         next = A0;
    end

    default : begin
        
        coin_out = 0;
        dispense = 0;
        next = A0;
    end
    endcase
    
end

    
endmodule

module item_B (clock,reset,coin5,coin10,coin_out,dispense);

input clock,reset,coin5,coin10;
output reg coin_out,dispense;

localparam B0 = 3'b000, B5 = 3'b001, B10 = 3'b010, B15 = 3'b011, B20 = 3'b100, B25 = 3'b101;

reg [2:0] present,next;

always @(posedge clock or negedge reset) begin

    if (!reset)
    begin
        present <= B0;
    end

    else
    begin
        present <= next;
    end
    
end

always @(*) begin
    next=present;
    coin_out=0;
    dispense=0;

    case (present)

    B0 : begin
         if (coin5) next = B5;
         else if (coin10) next = B10;
         else next = B0;
    end

    B5 : begin
        if (coin5) next = B10;
        else if (coin10) next= B15;
        else next = B5;
    end

    B10 : begin
        if (coin5)  next = B15; 
        else if (coin10) next = B20; 
        else next = B10;
    end

    B15 : begin
          if (coin5)  next = B20; 
          else if (coin10) next = B25; 
           else next = B15;
    end
    B20 : begin
         dispense = 1;
         next = B0;
         
    end

    B25 : begin
        dispense = 1;
        coin_out = 1;
        next = B0;
    end

    default : begin
        next = B0;
        coin_out = 0;
        dispense = 0;
    end
    endcase
    
end

    
endmodule


module item_C (clock,reset,coin5,coin10,coin_out,dispense);

input clock,reset,coin5,coin10;
output reg coin_out,dispense;

localparam C0 = 3'b000, C5 = 3'b001, C10 = 3'b010, C15 = 3'b011, C20 = 3'b100, C25 = 3'b101, C30 = 3'b110;

reg [2:0] present,next;

always @(posedge clock or negedge reset) begin

    if (!reset)
    begin
        present <= C0;
    end

    else
    begin
        present <= next;
    end
    
end

always @(*) begin
    next=present;
    coin_out=0;
    dispense=0;

    case (present)

    C0 : begin
         if (coin5) next = C5;
         else if (coin10) next = C10;
         else next = C0;
    end

    C5 : begin
        if (coin5) next = C10;
        else if (coin10) next= C15;
        else next = C5;
    end

    C10 : begin
        if (coin5)  next = C15; 
        else if (coin10) next = C20; 
        else next = C10;
    end

    C15 : begin
          if (coin5)  next = C20; 
          else if (coin10) next = C25; 
          else next = C15;
    end
    C20 : begin
          if (coin5)  next = C25; 
          else if (coin10) next = C30; 
          else next = C20;
         
    end

    C25 : begin
        dispense = 1;
        next = C0;
    end

    C30 : begin
        dispense = 1;
        coin_out = 1;
        next = C0;
    end

    default : begin
        next = C0;
        coin_out = 0;
        dispense = 0;
    end
    endcase
    
end

    
endmodule

module item_D (clock,reset,coin5,coin10,coin_out,dispense);

input clock,reset,coin5,coin10;
output reg coin_out,dispense;

localparam D0 = 3'b000, D5 = 3'b001, D10 = 3'b010, D15 = 3'b011, D20 = 3'b100, D25 = 3'b101, D30 = 3'b110, D35 = 3'b111;

reg [2:0] present,next;

always @(posedge clock or negedge reset) begin

    if (!reset)
    begin
        present <= D0;
    end

    else
    begin
        present <= next;
    end
    
end

always @(*) begin
    next=present;
    coin_out=0;
    dispense=0;

    case (present)

    D0 : begin
         if (coin5) next = D5;
         else if (coin10) next = D10;
         else next = D0;
    end

    D5 : begin
        if (coin5) next = D10;
        else if (coin10) next= D15;
        else next = D5;
    end

    D10 : begin
        if (coin5)  next = D15; 
        else if (coin10) next = D20; 
        else next = D10;
    end

    D15 : begin
          if (coin5)  next = D20; 
          else if (coin10) next = D25; 
          else next = D15;
    end
    D20 : begin
          if (coin5)  next = D25; 
          else if (coin10) next = D30; 
          else next = D20;
         
    end

    D25 : begin
          if (coin5)  next = D30; 
          else if (coin10) next = D35; 
          else next = D25;
    end

    D30 : begin
        dispense = 1;
        next = D0;
    end

    D35 : begin
        dispense = 1;
        coin_out = 1;
        next = D0;
    end

    default : begin
        next = D0;
        coin_out = 0;
        dispense = 0;
    end
    endcase
    
end

    
endmodule


module top (sel,clock,reset,coin5,coin10,coin_out,dispense);

input [1:0] sel;
input clock,reset,coin5,coin10;
output reg coin_out,dispense;

wire No1,No2,No3,No4,No5,No6,No7,No8;


item_A A(clock,reset,coin5,coin10,No1,No5);
item_B B(clock,reset,coin5,coin10,No2,No6);
item_C C(clock,reset,coin5,coin10,No3,No7);
item_D D(clock,reset,coin5,coin10,No4,No8);

always @(*) begin

    if ( sel == 2'b00)
    begin
        coin_out = No1;
        dispense = No5;
    end

    else if ( sel == 2'b01)
    begin
        coin_out = No2;
        dispense = No6;
    end

    else if (sel == 2'b10)
    begin
        coin_out = No3;
        dispense = No7;
    end

    else if ( sel == 2'b11)
    begin
        coin_out = No4;
        dispense = No8;

    end

    
end


    
endmodule