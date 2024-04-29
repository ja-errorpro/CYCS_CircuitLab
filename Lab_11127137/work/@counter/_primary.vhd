library verilog;
use verilog.vl_types.all;
entity Counter is
    port(
        dout            : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic
    );
end Counter;
