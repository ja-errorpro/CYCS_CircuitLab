library verilog;
use verilog.vl_types.all;
entity Counter_and_sel is
    port(
        dout            : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        sel             : in     vl_logic;
        a               : in     vl_logic_vector(3 downto 0);
        b               : in     vl_logic_vector(3 downto 0)
    );
end Counter_and_sel;
