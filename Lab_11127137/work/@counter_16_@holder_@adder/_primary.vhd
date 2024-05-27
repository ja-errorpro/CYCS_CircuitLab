library verilog;
use verilog.vl_types.all;
entity Counter_16_Holder_Adder is
    port(
        a               : in     vl_logic_vector(2 downto 0);
        b               : in     vl_logic_vector(2 downto 0);
        clk             : in     vl_logic;
        sel             : in     vl_logic_vector(1 downto 0);
        rst             : in     vl_logic;
        dout            : out    vl_logic_vector(3 downto 0)
    );
end Counter_16_Holder_Adder;
