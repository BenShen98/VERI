library verilog;
use verilog.vl_types.all;
entity divclk is
    generic(
        BIT_SZ          : integer := 16
    );
    port(
        clk_in          : in     vl_logic;
        clk_out         : out    vl_logic;
        k               : in     vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of BIT_SZ : constant is 1;
end divclk;
