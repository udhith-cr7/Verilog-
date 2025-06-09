module top_module ( 
    input [15:0] a, b,    // Four BCD digits (each 4-bit)
    input cin,            // Initial carry-in
    output cout,          // Final carry-out
    output [15:0] sum     // 4-digit BCD result
);

    wire [3:0] c;         // Internal carry wires between each digit

    // Instantiate 4 BCD full adders
    bcd_fadd fa0 (
        .a(a[3:0]),
        .b(b[3:0]),
        .cin(cin),
        .sum(sum[3:0]),
        .cout(c[0])
    );

    bcd_fadd fa1 (
        .a(a[7:4]),
        .b(b[7:4]),
        .cin(c[0]),
        .sum(sum[7:4]),
        .cout(c[1])
    );

    bcd_fadd fa2 (
        .a(a[11:8]),
        .b(b[11:8]),
        .cin(c[1]),
        .sum(sum[11:8]),
        .cout(c[2])
    );

    bcd_fadd fa3 (
        .a(a[15:12]),
        .b(b[15:12]),
        .cin(c[2]),
        .sum(sum[15:12]),
        .cout(cout)
    );

endmodule
