library verilog;
use verilog.vl_types.all;
entity freq_div is
    port(
        rst             : in     vl_logic;
        clk             : in     vl_logic;
        clk_div         : out    vl_logic;
        clk_div6        : out    vl_logic
    );
end freq_div;
