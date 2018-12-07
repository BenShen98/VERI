library verilog;
use verilog.vl_types.all;
entity bin2bcd_16 is
    port(
        B               : in     vl_logic_vector(15 downto 0);
        BCD_0           : out    vl_logic_vector(3 downto 0);
        BCD_1           : out    vl_logic_vector(3 downto 0);
        BCD_2           : out    vl_logic_vector(3 downto 0);
        BCD_3           : out    vl_logic_vector(3 downto 0);
        BCD_4           : out    vl_logic_vector(3 downto 0)
    );
end bin2bcd_16;
