`timescale 1ns / 1ps

module comparator(
    input[0:1]A, input[0:1]B,
    output [0:2]RGB
    );
    
    assign RGB[1] = (~A[1]) & ~A[0] & (~B[1]) & (~B[0])|(~A[1]) & A[0] & (~B[1]) & B[0]|A[1] & A[0] & B[1] & B[0]|A[1] & (~A[0]) & B[1] & (~B[0]);
    assign RGB[2] = A[0] & ~B[1] & ~B[0] | A[1]& ~B[1] | A[1]& A[0] & ~B[0];
    assign RGB[0] = ~A[1] & B[1] | ~A[0] & B[1] & B[0] | ~A[1] & ~A[0] & B[0];  
    
endmodule
