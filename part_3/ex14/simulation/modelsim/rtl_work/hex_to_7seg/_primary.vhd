library verilog;
use verilog.vl_types.all;
entity hex_to_7seg is
    port(
        \in\            : in     vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic_vector(6 downto 0)
    );
end hex_to_7seg;
