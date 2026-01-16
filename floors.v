module floors

#(parameter FLOORS = 4,
FLOOR_BITS = 2)

(input wire CLK,
input wire RESET,
input wire [(FLOOR_BITS -1):0] CURRENT_FLOOR_IN,
input wire HALTED,
input wire [(FLOORS -1):0] FLOOR_REQUEST,

output wire [(FLOOR_BITS-1):0] CURRENT_FLOOR_OUT,
output wire [(FLOORS-1):0] DESTINATIONS,
output reg [(FLOOR_BITS - 1):0] CLEAR_FLOOR_BUTTON);

//reset


reg[(FLOOR_BITS-1):0] floor;

assign CURRENT_FLOOR_OUT = floor;

assign DESTINATIONS = FLOOR_REQUEST;

always @ (posedge HALTED) begin
floor = CURRENT_FLOOR_IN;

end

always @ (negedge HALTED) begin







end
endmodule
