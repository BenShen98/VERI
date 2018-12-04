library verilog;
use verilog.vl_types.all;
entity spi2adc is
    generic(
        SGL             : vl_logic := Hi1;
        CH              : vl_logic := Hi1;
        MSBF            : vl_logic := Hi1;
        TIME_CONSTANT   : vl_logic_vector(0 to 4) := (Hi1, Hi1, Hi0, Hi0, Hi0);
        IDLE            : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        WAIT_CSB_FALL   : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        WAIT_CSB_HIGH   : vl_logic_vector(0 to 1) := (Hi1, Hi0)
    );
    port(
        sysclk          : in     vl_logic;
        start           : in     vl_logic;
        data_from_adc   : in     vl_logic;
        data_out        : out    vl_logic_vector(9 downto 0);
        data_valid      : out    vl_logic;
        sdata_to_adc    : out    vl_logic;
        adc_cs          : out    vl_logic;
        adc_sck         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of SGL : constant is 1;
    attribute mti_svvh_generic_type of CH : constant is 1;
    attribute mti_svvh_generic_type of MSBF : constant is 1;
    attribute mti_svvh_generic_type of TIME_CONSTANT : constant is 1;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of WAIT_CSB_FALL : constant is 1;
    attribute mti_svvh_generic_type of WAIT_CSB_HIGH : constant is 1;
end spi2adc;
