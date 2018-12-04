library verilog;
use verilog.vl_types.all;
entity processor is
    generic(
        ADC_OFFSET      : vl_logic_vector(0 to 9) := (Hi0, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1);
        DAC_OFFSET      : vl_logic_vector(0 to 9) := (Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0)
    );
    port(
        sysclk          : in     vl_logic;
        data_in         : in     vl_logic_vector(9 downto 0);
        data_out        : out    vl_logic_vector(9 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ADC_OFFSET : constant is 1;
    attribute mti_svvh_generic_type of DAC_OFFSET : constant is 1;
end processor;
