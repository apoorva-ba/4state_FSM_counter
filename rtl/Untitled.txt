module counter_fsm(
    input clk,
    input rst,
    output reg [1:0] state
);

parameter S0 = 2'b00,
          S1 = 2'b01,
          S2 = 2'b10,
          S3 = 2'b11;

always @(posedge clk) begin
    if (rst)
        state <= S0;
    else begin
        case(state)
            S0: state <= S1;
            S1: state <= S2;
            S2: state <= S3;
            S3: state <= S0;
            default: state <= S0;
        endcase
    end
end

endmodule