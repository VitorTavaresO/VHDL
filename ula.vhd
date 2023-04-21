entity ula is
    port (
        a : in std_logic;
        b : in std_logic;
        cin : in std_logic;
        sum : out std_logic;
        carry : out std_logic
    );
end entity ula;

architecture rtl of ula is
    signal s1, s2, s3: std_logic;
begin
    s1 <= a xor b;
    s2 <= s1 xor cin;
    s3 <= a and b;
    sum <= s2;
    carry <= s3 or (s1 and cin);
end architecture;