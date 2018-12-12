library verilog;
use verilog.vl_types.all;
entity pwm is
    port(
        clk             : in     vl_logic;
        data_in         : in     vl_logic_vector(9 downto 0);
        load            : in     vl_logic;
        pwm_out         : out    vl_logic
    );
end pwm;
