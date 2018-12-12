library verilog;
use verilog.vl_types.all;
entity clktick_16 is
    generic(
        N_BIT           : integer := 16
    );
    port(
        clkin           : in     vl_logic;
        enable          : in     vl_logic;
        N               : in     vl_logic_vector;
        tick            : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N_BIT : constant is 1;
end clktick_16;
