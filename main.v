`timescale 1ns / 1ps

module main(
    input [0:3]sw,
    output [0:2]RGB_led_A
    );
    
    comparator cmp(sw[2:3],sw[0:1],RGB_led_A); 
    
endmodule
