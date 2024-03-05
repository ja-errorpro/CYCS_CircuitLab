library verilog;
use verilog.vl_types.all;
entity freq_div_test is
    generic(
        td              : integer := 10000;
        td_h            : vl_notype
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of td : constant is 1;
    attribute mti_svvh_generic_type of td_h : constant is 3;
end freq_div_test;
