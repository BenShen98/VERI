library verilog;
use verilog.vl_types.all;
entity ex14_top is
    port(
        CLOCK_50        : in     vl_logic;
        SW              : in     vl_logic_vector(9 downto 0);
        HEX0            : out    vl_logic_vector(6 downto 0);
        HEX1            : out    vl_logic_vector(6 downto 0);
        HEX2            : out    vl_logic_vector(6 downto 0);
        HEX3            : out    vl_logic_vector(6 downto 0);
        HEX4            : out    vl_logic_vector(6 downto 0);
        DAC_CS          : out    vl_logic;
        DAC_SDI         : out    vl_logic;
        DAC_SCK         : out    vl_logic;
        DAC_LD          : out    vl_logic;
        PWM_OUT         : out    vl_logic
    );
end ex14_top;
