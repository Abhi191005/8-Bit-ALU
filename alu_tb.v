module alu_tb;

reg  [7:0] a, b;
reg  [2:0] sel;
wire [7:0] result;

alu uut (
    .a(a), .b(b), .sel(sel), .result(result)
);

initial begin
    a = 8'h0A; b = 8'h03;

    sel = 3'b000; #10; // ADD
    sel = 3'b001; #10; // SUB
    sel = 3'b010; #10; // AND
    sel = 3'b011; #10; // OR
    sel = 3'b100; #10; // XOR
    sel = 3'b101; #10; // NOT A
    sel = 3'b110; #10; // A << 1
    sel = 3'b111; #10; // A >> 1

    $finish;
end

endmodule
