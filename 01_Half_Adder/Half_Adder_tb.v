// Code your testbench here
// or browse Examples
module testbench;

reg A, B;
wire Sum, Carry;

// Instantiate the Half Adder
half_adder uut (
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
);

// Generate VCD file for EPWave
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);
end

// Apply test cases
initial begin
    $display("A B | Sum Carry");
    $monitor("%b %b |  %b     %b", A, B, Sum, Carry);

    A = 0; B = 0;
    #10;

    A = 0; B = 1;
    #10;

    A = 1; B = 0;
    #10;

    A = 1; B = 1;
    #10;

    $finish;
end