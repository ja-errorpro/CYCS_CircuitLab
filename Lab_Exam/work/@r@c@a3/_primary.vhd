library verilog;
use verilog.vl_types.all;
entity RCA3 is
    port(
        a               : in     vl_logic_vector(2 downto 0);
        b               : in     vl_logic_vector(2 downto 0);
        cout            : out    vl_logic;
        s               : out    vl_logic_vector(2 downto 0)
    );
end RCA3;
