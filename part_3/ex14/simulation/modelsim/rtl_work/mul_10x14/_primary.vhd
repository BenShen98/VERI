library verilog;
use verilog.vl_types.all;
entity mul_10x14 is
    port(
        dataa           : in     vl_logic_vector(9 downto 0);
        result          : out    vl_logic_vector(23 downto 0)
    );
end mul_10x14;
