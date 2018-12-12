library verilog;
use verilog.vl_types.all;
entity add3_ge5 is
    port(
        w               : in     vl_logic_vector(3 downto 0);
        a               : out    vl_logic_vector(3 downto 0)
    );
end add3_ge5;
