library verilog;
use verilog.vl_types.all;
entity Counter is
    port(
        dout            : in     vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        cnt_out         : out    vl_logic_vector(3 downto 0)
    );
end Counter;
