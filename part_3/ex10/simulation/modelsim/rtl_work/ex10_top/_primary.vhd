library verilog;
use verilog.vl_types.all;
entity ex10_top is
    port(
        SW              : in     vl_logic_vector(9 downto 0);
        CLOCK_50        : in     vl_logic;
        DAC_CS          : out    vl_logic;
        DAC_SDI         : out    vl_logic;
        DAC_LD          : out    vl_logic;
        DAC_SCK         : out    vl_logic
    );
end ex10_top;
