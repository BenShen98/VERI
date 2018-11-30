library verilog;
use verilog.vl_types.all;
entity spi2dac is
    generic(
        BUF             : vl_logic := Hi1;
        GA_N            : vl_logic := Hi1;
        SHDN_N          : vl_logic := Hi1;
        TC              : vl_logic_vector(0 to 4) := (Hi1, Hi1, Hi0, Hi0, Hi0);
        IDLE            : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        WAIT_CSB_FALL   : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        WAIT_CSB_HIGH   : vl_logic_vector(0 to 1) := (Hi1, Hi0)
    );
    port(
        sysclk          : in     vl_logic;
        data_in         : in     vl_logic_vector(9 downto 0);
        load            : in     vl_logic;
        dac_sdi         : out    vl_logic;
        dac_cs          : out    vl_logic;
        dac_sck         : out    vl_logic;
        dac_ld          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of BUF : constant is 1;
    attribute mti_svvh_generic_type of GA_N : constant is 1;
    attribute mti_svvh_generic_type of SHDN_N : constant is 1;
    attribute mti_svvh_generic_type of TC : constant is 1;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of WAIT_CSB_FALL : constant is 1;
    attribute mti_svvh_generic_type of WAIT_CSB_HIGH : constant is 1;
end spi2dac;
