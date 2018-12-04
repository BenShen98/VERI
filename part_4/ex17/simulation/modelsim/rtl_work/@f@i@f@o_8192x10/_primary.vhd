library verilog;
use verilog.vl_types.all;
entity FIFO_8192x10 is
    port(
        clock           : in     vl_logic;
        data            : in     vl_logic_vector(9 downto 0);
        rdreq           : in     vl_logic;
        wrreq           : in     vl_logic;
        full            : out    vl_logic;
        q               : out    vl_logic_vector(9 downto 0)
    );
end FIFO_8192x10;
