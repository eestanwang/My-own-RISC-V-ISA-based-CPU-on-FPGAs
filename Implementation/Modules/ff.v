module ff #(
    parameter NUMBER_OF_BITS = 32
) (
    input wire clk,
    input wire rst,
    input wire [NUMBER_OF_BITS-1:0] d,
    output reg [NUMBER_OF_BITS-1:0] q
);

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      q <= 0;
    end else begin
      q <= d;
    end
  end

endmodule
