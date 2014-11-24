-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/24/2014 17:51:10"

-- 
-- Device: Altera EP3C25F324C8 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	maquina_chocolate IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	nc20 : IN std_logic;
	nc10 : IN std_logic;
	nc5 : IN std_logic;
	led : OUT std_logic_vector(3 DOWNTO 0)
	);
END maquina_chocolate;

-- Design Ports Information
-- led[0]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[1]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[2]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nc5	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nc20	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nc10	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF maquina_chocolate IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_nc20 : std_logic;
SIGNAL ww_nc10 : std_logic;
SIGNAL ww_nc5 : std_logic;
SIGNAL ww_led : std_logic_vector(3 DOWNTO 0);
SIGNAL \redutor2_u0|q[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \redutor2_u0|q[1]~26_combout\ : std_logic;
SIGNAL \redutor2_u0|q[2]~28_combout\ : std_logic;
SIGNAL \redutor2_u0|q[7]~38_combout\ : std_logic;
SIGNAL \redutor2_u0|q[9]~42_combout\ : std_logic;
SIGNAL \redutor2_u0|q[11]~46_combout\ : std_logic;
SIGNAL \redutor2_u0|q[15]~54_combout\ : std_logic;
SIGNAL \redutor2_u0|q[17]~58_combout\ : std_logic;
SIGNAL \redutor2_u0|q[18]~60_combout\ : std_logic;
SIGNAL \maquina_core_u0|Mux3~0_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \led[0]~output_o\ : std_logic;
SIGNAL \led[1]~output_o\ : std_logic;
SIGNAL \led[2]~output_o\ : std_logic;
SIGNAL \led[3]~output_o\ : std_logic;
SIGNAL \redutor2_u0|q[0]~24_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \redutor2_u0|q[0]~25\ : std_logic;
SIGNAL \redutor2_u0|q[1]~27\ : std_logic;
SIGNAL \redutor2_u0|q[2]~29\ : std_logic;
SIGNAL \redutor2_u0|q[3]~30_combout\ : std_logic;
SIGNAL \redutor2_u0|q[3]~31\ : std_logic;
SIGNAL \redutor2_u0|q[4]~32_combout\ : std_logic;
SIGNAL \redutor2_u0|q[4]~33\ : std_logic;
SIGNAL \redutor2_u0|q[5]~34_combout\ : std_logic;
SIGNAL \redutor2_u0|q[5]~35\ : std_logic;
SIGNAL \redutor2_u0|q[6]~36_combout\ : std_logic;
SIGNAL \redutor2_u0|q[6]~37\ : std_logic;
SIGNAL \redutor2_u0|q[7]~39\ : std_logic;
SIGNAL \redutor2_u0|q[8]~40_combout\ : std_logic;
SIGNAL \redutor2_u0|q[8]~41\ : std_logic;
SIGNAL \redutor2_u0|q[9]~43\ : std_logic;
SIGNAL \redutor2_u0|q[10]~44_combout\ : std_logic;
SIGNAL \redutor2_u0|q[10]~45\ : std_logic;
SIGNAL \redutor2_u0|q[11]~47\ : std_logic;
SIGNAL \redutor2_u0|q[12]~48_combout\ : std_logic;
SIGNAL \redutor2_u0|q[12]~49\ : std_logic;
SIGNAL \redutor2_u0|q[13]~50_combout\ : std_logic;
SIGNAL \redutor2_u0|q[13]~51\ : std_logic;
SIGNAL \redutor2_u0|q[14]~52_combout\ : std_logic;
SIGNAL \redutor2_u0|q[14]~53\ : std_logic;
SIGNAL \redutor2_u0|q[15]~55\ : std_logic;
SIGNAL \redutor2_u0|q[16]~56_combout\ : std_logic;
SIGNAL \redutor2_u0|q[16]~57\ : std_logic;
SIGNAL \redutor2_u0|q[17]~59\ : std_logic;
SIGNAL \redutor2_u0|q[18]~61\ : std_logic;
SIGNAL \redutor2_u0|q[19]~62_combout\ : std_logic;
SIGNAL \redutor2_u0|q[19]~63\ : std_logic;
SIGNAL \redutor2_u0|q[20]~64_combout\ : std_logic;
SIGNAL \redutor2_u0|q[20]~65\ : std_logic;
SIGNAL \redutor2_u0|q[21]~66_combout\ : std_logic;
SIGNAL \redutor2_u0|q[21]~67\ : std_logic;
SIGNAL \redutor2_u0|q[22]~68_combout\ : std_logic;
SIGNAL \redutor2_u0|q[22]~69\ : std_logic;
SIGNAL \redutor2_u0|q[23]~70_combout\ : std_logic;
SIGNAL \redutor2_u0|q[23]~clkctrl_outclk\ : std_logic;
SIGNAL \nc20~input_o\ : std_logic;
SIGNAL \b2|Selector0~0_combout\ : std_logic;
SIGNAL \b2|next_state.st0~q\ : std_logic;
SIGNAL \b2|Selector1~0_combout\ : std_logic;
SIGNAL \b2|next_state.st1~q\ : std_logic;
SIGNAL \b2|Selector2~0_combout\ : std_logic;
SIGNAL \b2|next_state.st2~q\ : std_logic;
SIGNAL \nc10~input_o\ : std_logic;
SIGNAL \b1|Selector0~0_combout\ : std_logic;
SIGNAL \b1|next_state.st0~q\ : std_logic;
SIGNAL \b1|Selector1~0_combout\ : std_logic;
SIGNAL \b1|next_state.st1~q\ : std_logic;
SIGNAL \b1|Selector2~0_combout\ : std_logic;
SIGNAL \b1|next_state.st2~q\ : std_logic;
SIGNAL \maquina_core_u0|Mux1~1_combout\ : std_logic;
SIGNAL \nc5~input_o\ : std_logic;
SIGNAL \b0|Selector0~0_combout\ : std_logic;
SIGNAL \b0|next_state.st0~q\ : std_logic;
SIGNAL \b0|Selector1~0_combout\ : std_logic;
SIGNAL \b0|next_state.st1~q\ : std_logic;
SIGNAL \b0|Selector2~0_combout\ : std_logic;
SIGNAL \b0|next_state.st2~q\ : std_logic;
SIGNAL \maquina_core_u0|Mux1~0_combout\ : std_logic;
SIGNAL \maquina_core_u0|Mux1~3_combout\ : std_logic;
SIGNAL \maquina_core_u0|Mux1~2_combout\ : std_logic;
SIGNAL \maquina_core_u0|Mux1~4_combout\ : std_logic;
SIGNAL \maquina_core_u0|Mux3~10_combout\ : std_logic;
SIGNAL \maquina_core_u0|Mux3~11_combout\ : std_logic;
SIGNAL \maquina_core_u0|Mux3~12_combout\ : std_logic;
SIGNAL \maquina_core_u0|Mux3~8_combout\ : std_logic;
SIGNAL \maquina_core_u0|Mux3~9_combout\ : std_logic;
SIGNAL \maquina_core_u0|Next_State~1_combout\ : std_logic;
SIGNAL \maquina_core_u0|Mux3~7_combout\ : std_logic;
SIGNAL \maquina_core_u0|Mux2~0_combout\ : std_logic;
SIGNAL \maquina_core_u0|Mux2~1_combout\ : std_logic;
SIGNAL \maquina_core_u0|Mux0~1_combout\ : std_logic;
SIGNAL \maquina_core_u0|Mux0~0_combout\ : std_logic;
SIGNAL \maquina_core_u0|Mux0~2_combout\ : std_logic;
SIGNAL \maquina_core_u0|Mux0~3_combout\ : std_logic;
SIGNAL \maquina_core_u0|Mux3~1_combout\ : std_logic;
SIGNAL \maquina_core_u0|Mux3~2_combout\ : std_logic;
SIGNAL \maquina_core_u0|Next_State~0_combout\ : std_logic;
SIGNAL \maquina_core_u0|Mux3~3_combout\ : std_logic;
SIGNAL \maquina_core_u0|Mux3~4_combout\ : std_logic;
SIGNAL \maquina_core_u0|Mux3~5_combout\ : std_logic;
SIGNAL \maquina_core_u0|Mux3~6_combout\ : std_logic;
SIGNAL \maquina_core_u0|Next_State\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \redutor2_u0|q\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \maquina_core_u0|ALT_INV_Next_State\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_nc20 <= nc20;
ww_nc10 <= nc10;
ww_nc5 <= nc5;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\redutor2_u0|q[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \redutor2_u0|q\(23));

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\maquina_core_u0|ALT_INV_Next_State\(3) <= NOT \maquina_core_u0|Next_State\(3);
\maquina_core_u0|ALT_INV_Next_State\(2) <= NOT \maquina_core_u0|Next_State\(2);
\maquina_core_u0|ALT_INV_Next_State\(1) <= NOT \maquina_core_u0|Next_State\(1);
\maquina_core_u0|ALT_INV_Next_State\(0) <= NOT \maquina_core_u0|Next_State\(0);

-- Location: FF_X26_Y4_N13
\redutor2_u0|q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[18]~60_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(18));

-- Location: FF_X26_Y4_N11
\redutor2_u0|q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[17]~58_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(17));

-- Location: FF_X26_Y4_N7
\redutor2_u0|q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[15]~54_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(15));

-- Location: FF_X26_Y5_N31
\redutor2_u0|q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[11]~46_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(11));

-- Location: FF_X26_Y5_N27
\redutor2_u0|q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[9]~42_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(9));

-- Location: FF_X26_Y5_N23
\redutor2_u0|q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[7]~38_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(7));

-- Location: FF_X26_Y5_N13
\redutor2_u0|q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[2]~28_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(2));

-- Location: FF_X26_Y5_N11
\redutor2_u0|q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[1]~26_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(1));

-- Location: LCCOMB_X26_Y5_N10
\redutor2_u0|q[1]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[1]~26_combout\ = (\redutor2_u0|q\(1) & (!\redutor2_u0|q[0]~25\)) # (!\redutor2_u0|q\(1) & ((\redutor2_u0|q[0]~25\) # (GND)))
-- \redutor2_u0|q[1]~27\ = CARRY((!\redutor2_u0|q[0]~25\) # (!\redutor2_u0|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \redutor2_u0|q\(1),
	datad => VCC,
	cin => \redutor2_u0|q[0]~25\,
	combout => \redutor2_u0|q[1]~26_combout\,
	cout => \redutor2_u0|q[1]~27\);

-- Location: LCCOMB_X26_Y5_N12
\redutor2_u0|q[2]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[2]~28_combout\ = (\redutor2_u0|q\(2) & (\redutor2_u0|q[1]~27\ $ (GND))) # (!\redutor2_u0|q\(2) & (!\redutor2_u0|q[1]~27\ & VCC))
-- \redutor2_u0|q[2]~29\ = CARRY((\redutor2_u0|q\(2) & !\redutor2_u0|q[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \redutor2_u0|q\(2),
	datad => VCC,
	cin => \redutor2_u0|q[1]~27\,
	combout => \redutor2_u0|q[2]~28_combout\,
	cout => \redutor2_u0|q[2]~29\);

-- Location: LCCOMB_X26_Y5_N22
\redutor2_u0|q[7]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[7]~38_combout\ = (\redutor2_u0|q\(7) & (!\redutor2_u0|q[6]~37\)) # (!\redutor2_u0|q\(7) & ((\redutor2_u0|q[6]~37\) # (GND)))
-- \redutor2_u0|q[7]~39\ = CARRY((!\redutor2_u0|q[6]~37\) # (!\redutor2_u0|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \redutor2_u0|q\(7),
	datad => VCC,
	cin => \redutor2_u0|q[6]~37\,
	combout => \redutor2_u0|q[7]~38_combout\,
	cout => \redutor2_u0|q[7]~39\);

-- Location: LCCOMB_X26_Y5_N26
\redutor2_u0|q[9]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[9]~42_combout\ = (\redutor2_u0|q\(9) & (!\redutor2_u0|q[8]~41\)) # (!\redutor2_u0|q\(9) & ((\redutor2_u0|q[8]~41\) # (GND)))
-- \redutor2_u0|q[9]~43\ = CARRY((!\redutor2_u0|q[8]~41\) # (!\redutor2_u0|q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \redutor2_u0|q\(9),
	datad => VCC,
	cin => \redutor2_u0|q[8]~41\,
	combout => \redutor2_u0|q[9]~42_combout\,
	cout => \redutor2_u0|q[9]~43\);

-- Location: LCCOMB_X26_Y5_N30
\redutor2_u0|q[11]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[11]~46_combout\ = (\redutor2_u0|q\(11) & (!\redutor2_u0|q[10]~45\)) # (!\redutor2_u0|q\(11) & ((\redutor2_u0|q[10]~45\) # (GND)))
-- \redutor2_u0|q[11]~47\ = CARRY((!\redutor2_u0|q[10]~45\) # (!\redutor2_u0|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \redutor2_u0|q\(11),
	datad => VCC,
	cin => \redutor2_u0|q[10]~45\,
	combout => \redutor2_u0|q[11]~46_combout\,
	cout => \redutor2_u0|q[11]~47\);

-- Location: LCCOMB_X26_Y4_N6
\redutor2_u0|q[15]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[15]~54_combout\ = (\redutor2_u0|q\(15) & (!\redutor2_u0|q[14]~53\)) # (!\redutor2_u0|q\(15) & ((\redutor2_u0|q[14]~53\) # (GND)))
-- \redutor2_u0|q[15]~55\ = CARRY((!\redutor2_u0|q[14]~53\) # (!\redutor2_u0|q\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \redutor2_u0|q\(15),
	datad => VCC,
	cin => \redutor2_u0|q[14]~53\,
	combout => \redutor2_u0|q[15]~54_combout\,
	cout => \redutor2_u0|q[15]~55\);

-- Location: LCCOMB_X26_Y4_N10
\redutor2_u0|q[17]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[17]~58_combout\ = (\redutor2_u0|q\(17) & (!\redutor2_u0|q[16]~57\)) # (!\redutor2_u0|q\(17) & ((\redutor2_u0|q[16]~57\) # (GND)))
-- \redutor2_u0|q[17]~59\ = CARRY((!\redutor2_u0|q[16]~57\) # (!\redutor2_u0|q\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \redutor2_u0|q\(17),
	datad => VCC,
	cin => \redutor2_u0|q[16]~57\,
	combout => \redutor2_u0|q[17]~58_combout\,
	cout => \redutor2_u0|q[17]~59\);

-- Location: LCCOMB_X26_Y4_N12
\redutor2_u0|q[18]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[18]~60_combout\ = (\redutor2_u0|q\(18) & (\redutor2_u0|q[17]~59\ $ (GND))) # (!\redutor2_u0|q\(18) & (!\redutor2_u0|q[17]~59\ & VCC))
-- \redutor2_u0|q[18]~61\ = CARRY((\redutor2_u0|q\(18) & !\redutor2_u0|q[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \redutor2_u0|q\(18),
	datad => VCC,
	cin => \redutor2_u0|q[17]~59\,
	combout => \redutor2_u0|q[18]~60_combout\,
	cout => \redutor2_u0|q[18]~61\);

-- Location: LCCOMB_X5_Y15_N24
\maquina_core_u0|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux3~0_combout\ = (\maquina_core_u0|Next_State\(0) & ((\maquina_core_u0|Next_State\(2)) # ((!\maquina_core_u0|Next_State~0_combout\)))) # (!\maquina_core_u0|Next_State\(0) & (!\maquina_core_u0|Next_State\(2) & ((\b0|next_state.st2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_core_u0|Next_State\(0),
	datab => \maquina_core_u0|Next_State\(2),
	datac => \maquina_core_u0|Next_State~0_combout\,
	datad => \b0|next_state.st2~q\,
	combout => \maquina_core_u0|Mux3~0_combout\);

-- Location: IOIBUF_X25_Y34_N22
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G13
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOOBUF_X47_Y0_N23
\led[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \maquina_core_u0|ALT_INV_Next_State\(0),
	devoe => ww_devoe,
	o => \led[0]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\led[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \maquina_core_u0|ALT_INV_Next_State\(1),
	devoe => ww_devoe,
	o => \led[1]~output_o\);

-- Location: IOOBUF_X47_Y0_N16
\led[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \maquina_core_u0|ALT_INV_Next_State\(2),
	devoe => ww_devoe,
	o => \led[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\led[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \maquina_core_u0|ALT_INV_Next_State\(3),
	devoe => ww_devoe,
	o => \led[3]~output_o\);

-- Location: LCCOMB_X26_Y5_N8
\redutor2_u0|q[0]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[0]~24_combout\ = \redutor2_u0|q\(0) $ (VCC)
-- \redutor2_u0|q[0]~25\ = CARRY(\redutor2_u0|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \redutor2_u0|q\(0),
	datad => VCC,
	combout => \redutor2_u0|q[0]~24_combout\,
	cout => \redutor2_u0|q[0]~25\);

-- Location: IOIBUF_X25_Y34_N8
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X26_Y5_N9
\redutor2_u0|q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[0]~24_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(0));

-- Location: LCCOMB_X26_Y5_N14
\redutor2_u0|q[3]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[3]~30_combout\ = (\redutor2_u0|q\(3) & (!\redutor2_u0|q[2]~29\)) # (!\redutor2_u0|q\(3) & ((\redutor2_u0|q[2]~29\) # (GND)))
-- \redutor2_u0|q[3]~31\ = CARRY((!\redutor2_u0|q[2]~29\) # (!\redutor2_u0|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \redutor2_u0|q\(3),
	datad => VCC,
	cin => \redutor2_u0|q[2]~29\,
	combout => \redutor2_u0|q[3]~30_combout\,
	cout => \redutor2_u0|q[3]~31\);

-- Location: FF_X26_Y5_N15
\redutor2_u0|q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[3]~30_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(3));

-- Location: LCCOMB_X26_Y5_N16
\redutor2_u0|q[4]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[4]~32_combout\ = (\redutor2_u0|q\(4) & (\redutor2_u0|q[3]~31\ $ (GND))) # (!\redutor2_u0|q\(4) & (!\redutor2_u0|q[3]~31\ & VCC))
-- \redutor2_u0|q[4]~33\ = CARRY((\redutor2_u0|q\(4) & !\redutor2_u0|q[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \redutor2_u0|q\(4),
	datad => VCC,
	cin => \redutor2_u0|q[3]~31\,
	combout => \redutor2_u0|q[4]~32_combout\,
	cout => \redutor2_u0|q[4]~33\);

-- Location: FF_X26_Y5_N17
\redutor2_u0|q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[4]~32_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(4));

-- Location: LCCOMB_X26_Y5_N18
\redutor2_u0|q[5]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[5]~34_combout\ = (\redutor2_u0|q\(5) & (!\redutor2_u0|q[4]~33\)) # (!\redutor2_u0|q\(5) & ((\redutor2_u0|q[4]~33\) # (GND)))
-- \redutor2_u0|q[5]~35\ = CARRY((!\redutor2_u0|q[4]~33\) # (!\redutor2_u0|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \redutor2_u0|q\(5),
	datad => VCC,
	cin => \redutor2_u0|q[4]~33\,
	combout => \redutor2_u0|q[5]~34_combout\,
	cout => \redutor2_u0|q[5]~35\);

-- Location: FF_X26_Y5_N19
\redutor2_u0|q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[5]~34_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(5));

-- Location: LCCOMB_X26_Y5_N20
\redutor2_u0|q[6]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[6]~36_combout\ = (\redutor2_u0|q\(6) & (\redutor2_u0|q[5]~35\ $ (GND))) # (!\redutor2_u0|q\(6) & (!\redutor2_u0|q[5]~35\ & VCC))
-- \redutor2_u0|q[6]~37\ = CARRY((\redutor2_u0|q\(6) & !\redutor2_u0|q[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \redutor2_u0|q\(6),
	datad => VCC,
	cin => \redutor2_u0|q[5]~35\,
	combout => \redutor2_u0|q[6]~36_combout\,
	cout => \redutor2_u0|q[6]~37\);

-- Location: FF_X26_Y5_N21
\redutor2_u0|q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[6]~36_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(6));

-- Location: LCCOMB_X26_Y5_N24
\redutor2_u0|q[8]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[8]~40_combout\ = (\redutor2_u0|q\(8) & (\redutor2_u0|q[7]~39\ $ (GND))) # (!\redutor2_u0|q\(8) & (!\redutor2_u0|q[7]~39\ & VCC))
-- \redutor2_u0|q[8]~41\ = CARRY((\redutor2_u0|q\(8) & !\redutor2_u0|q[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \redutor2_u0|q\(8),
	datad => VCC,
	cin => \redutor2_u0|q[7]~39\,
	combout => \redutor2_u0|q[8]~40_combout\,
	cout => \redutor2_u0|q[8]~41\);

-- Location: FF_X26_Y5_N25
\redutor2_u0|q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[8]~40_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(8));

-- Location: LCCOMB_X26_Y5_N28
\redutor2_u0|q[10]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[10]~44_combout\ = (\redutor2_u0|q\(10) & (\redutor2_u0|q[9]~43\ $ (GND))) # (!\redutor2_u0|q\(10) & (!\redutor2_u0|q[9]~43\ & VCC))
-- \redutor2_u0|q[10]~45\ = CARRY((\redutor2_u0|q\(10) & !\redutor2_u0|q[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \redutor2_u0|q\(10),
	datad => VCC,
	cin => \redutor2_u0|q[9]~43\,
	combout => \redutor2_u0|q[10]~44_combout\,
	cout => \redutor2_u0|q[10]~45\);

-- Location: FF_X26_Y5_N29
\redutor2_u0|q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[10]~44_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(10));

-- Location: LCCOMB_X26_Y4_N0
\redutor2_u0|q[12]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[12]~48_combout\ = (\redutor2_u0|q\(12) & (\redutor2_u0|q[11]~47\ $ (GND))) # (!\redutor2_u0|q\(12) & (!\redutor2_u0|q[11]~47\ & VCC))
-- \redutor2_u0|q[12]~49\ = CARRY((\redutor2_u0|q\(12) & !\redutor2_u0|q[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \redutor2_u0|q\(12),
	datad => VCC,
	cin => \redutor2_u0|q[11]~47\,
	combout => \redutor2_u0|q[12]~48_combout\,
	cout => \redutor2_u0|q[12]~49\);

-- Location: FF_X26_Y4_N1
\redutor2_u0|q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[12]~48_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(12));

-- Location: LCCOMB_X26_Y4_N2
\redutor2_u0|q[13]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[13]~50_combout\ = (\redutor2_u0|q\(13) & (!\redutor2_u0|q[12]~49\)) # (!\redutor2_u0|q\(13) & ((\redutor2_u0|q[12]~49\) # (GND)))
-- \redutor2_u0|q[13]~51\ = CARRY((!\redutor2_u0|q[12]~49\) # (!\redutor2_u0|q\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \redutor2_u0|q\(13),
	datad => VCC,
	cin => \redutor2_u0|q[12]~49\,
	combout => \redutor2_u0|q[13]~50_combout\,
	cout => \redutor2_u0|q[13]~51\);

-- Location: FF_X26_Y4_N3
\redutor2_u0|q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[13]~50_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(13));

-- Location: LCCOMB_X26_Y4_N4
\redutor2_u0|q[14]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[14]~52_combout\ = (\redutor2_u0|q\(14) & (\redutor2_u0|q[13]~51\ $ (GND))) # (!\redutor2_u0|q\(14) & (!\redutor2_u0|q[13]~51\ & VCC))
-- \redutor2_u0|q[14]~53\ = CARRY((\redutor2_u0|q\(14) & !\redutor2_u0|q[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \redutor2_u0|q\(14),
	datad => VCC,
	cin => \redutor2_u0|q[13]~51\,
	combout => \redutor2_u0|q[14]~52_combout\,
	cout => \redutor2_u0|q[14]~53\);

-- Location: FF_X26_Y4_N5
\redutor2_u0|q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[14]~52_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(14));

-- Location: LCCOMB_X26_Y4_N8
\redutor2_u0|q[16]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[16]~56_combout\ = (\redutor2_u0|q\(16) & (\redutor2_u0|q[15]~55\ $ (GND))) # (!\redutor2_u0|q\(16) & (!\redutor2_u0|q[15]~55\ & VCC))
-- \redutor2_u0|q[16]~57\ = CARRY((\redutor2_u0|q\(16) & !\redutor2_u0|q[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \redutor2_u0|q\(16),
	datad => VCC,
	cin => \redutor2_u0|q[15]~55\,
	combout => \redutor2_u0|q[16]~56_combout\,
	cout => \redutor2_u0|q[16]~57\);

-- Location: FF_X26_Y4_N9
\redutor2_u0|q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[16]~56_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(16));

-- Location: LCCOMB_X26_Y4_N14
\redutor2_u0|q[19]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[19]~62_combout\ = (\redutor2_u0|q\(19) & (!\redutor2_u0|q[18]~61\)) # (!\redutor2_u0|q\(19) & ((\redutor2_u0|q[18]~61\) # (GND)))
-- \redutor2_u0|q[19]~63\ = CARRY((!\redutor2_u0|q[18]~61\) # (!\redutor2_u0|q\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \redutor2_u0|q\(19),
	datad => VCC,
	cin => \redutor2_u0|q[18]~61\,
	combout => \redutor2_u0|q[19]~62_combout\,
	cout => \redutor2_u0|q[19]~63\);

-- Location: FF_X26_Y4_N15
\redutor2_u0|q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[19]~62_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(19));

-- Location: LCCOMB_X26_Y4_N16
\redutor2_u0|q[20]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[20]~64_combout\ = (\redutor2_u0|q\(20) & (\redutor2_u0|q[19]~63\ $ (GND))) # (!\redutor2_u0|q\(20) & (!\redutor2_u0|q[19]~63\ & VCC))
-- \redutor2_u0|q[20]~65\ = CARRY((\redutor2_u0|q\(20) & !\redutor2_u0|q[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \redutor2_u0|q\(20),
	datad => VCC,
	cin => \redutor2_u0|q[19]~63\,
	combout => \redutor2_u0|q[20]~64_combout\,
	cout => \redutor2_u0|q[20]~65\);

-- Location: FF_X26_Y4_N17
\redutor2_u0|q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[20]~64_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(20));

-- Location: LCCOMB_X26_Y4_N18
\redutor2_u0|q[21]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[21]~66_combout\ = (\redutor2_u0|q\(21) & (!\redutor2_u0|q[20]~65\)) # (!\redutor2_u0|q\(21) & ((\redutor2_u0|q[20]~65\) # (GND)))
-- \redutor2_u0|q[21]~67\ = CARRY((!\redutor2_u0|q[20]~65\) # (!\redutor2_u0|q\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \redutor2_u0|q\(21),
	datad => VCC,
	cin => \redutor2_u0|q[20]~65\,
	combout => \redutor2_u0|q[21]~66_combout\,
	cout => \redutor2_u0|q[21]~67\);

-- Location: FF_X26_Y4_N19
\redutor2_u0|q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[21]~66_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(21));

-- Location: LCCOMB_X26_Y4_N20
\redutor2_u0|q[22]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[22]~68_combout\ = (\redutor2_u0|q\(22) & (\redutor2_u0|q[21]~67\ $ (GND))) # (!\redutor2_u0|q\(22) & (!\redutor2_u0|q[21]~67\ & VCC))
-- \redutor2_u0|q[22]~69\ = CARRY((\redutor2_u0|q\(22) & !\redutor2_u0|q[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \redutor2_u0|q\(22),
	datad => VCC,
	cin => \redutor2_u0|q[21]~67\,
	combout => \redutor2_u0|q[22]~68_combout\,
	cout => \redutor2_u0|q[22]~69\);

-- Location: FF_X26_Y4_N21
\redutor2_u0|q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[22]~68_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(22));

-- Location: LCCOMB_X26_Y4_N22
\redutor2_u0|q[23]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \redutor2_u0|q[23]~70_combout\ = \redutor2_u0|q[22]~69\ $ (\redutor2_u0|q\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \redutor2_u0|q\(23),
	cin => \redutor2_u0|q[22]~69\,
	combout => \redutor2_u0|q[23]~70_combout\);

-- Location: FF_X26_Y4_N23
\redutor2_u0|q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \redutor2_u0|q[23]~70_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \redutor2_u0|q\(23));

-- Location: CLKCTRL_G18
\redutor2_u0|q[23]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \redutor2_u0|q[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \redutor2_u0|q[23]~clkctrl_outclk\);

-- Location: IOIBUF_X25_Y34_N1
\nc20~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nc20,
	o => \nc20~input_o\);

-- Location: LCCOMB_X6_Y15_N12
\b2|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2|Selector0~0_combout\ = ((\b2|next_state.st0~q\ & !\b2|next_state.st2~q\)) # (!\nc20~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nc20~input_o\,
	datac => \b2|next_state.st0~q\,
	datad => \b2|next_state.st2~q\,
	combout => \b2|Selector0~0_combout\);

-- Location: FF_X6_Y15_N13
\b2|next_state.st0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2|next_state.st0~q\);

-- Location: LCCOMB_X6_Y15_N2
\b2|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2|Selector1~0_combout\ = (!\nc20~input_o\ & !\b2|next_state.st0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nc20~input_o\,
	datad => \b2|next_state.st0~q\,
	combout => \b2|Selector1~0_combout\);

-- Location: FF_X6_Y15_N3
\b2|next_state.st1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2|next_state.st1~q\);

-- Location: LCCOMB_X6_Y15_N6
\b2|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b2|Selector2~0_combout\ = (\b2|next_state.st1~q\) # ((!\nc20~input_o\ & \b2|next_state.st2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nc20~input_o\,
	datac => \b2|next_state.st2~q\,
	datad => \b2|next_state.st1~q\,
	combout => \b2|Selector2~0_combout\);

-- Location: FF_X6_Y15_N7
\b2|next_state.st2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b2|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b2|next_state.st2~q\);

-- Location: IOIBUF_X0_Y16_N1
\nc10~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nc10,
	o => \nc10~input_o\);

-- Location: LCCOMB_X4_Y15_N24
\b1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|Selector0~0_combout\ = ((\b1|next_state.st0~q\ & !\b1|next_state.st2~q\)) # (!\nc10~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nc10~input_o\,
	datac => \b1|next_state.st0~q\,
	datad => \b1|next_state.st2~q\,
	combout => \b1|Selector0~0_combout\);

-- Location: FF_X4_Y15_N25
\b1|next_state.st0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|next_state.st0~q\);

-- Location: LCCOMB_X4_Y15_N18
\b1|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|Selector1~0_combout\ = (!\nc10~input_o\ & !\b1|next_state.st0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nc10~input_o\,
	datad => \b1|next_state.st0~q\,
	combout => \b1|Selector1~0_combout\);

-- Location: FF_X4_Y15_N19
\b1|next_state.st1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|next_state.st1~q\);

-- Location: LCCOMB_X4_Y15_N16
\b1|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b1|Selector2~0_combout\ = (\b1|next_state.st1~q\) # ((!\nc10~input_o\ & \b1|next_state.st2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nc10~input_o\,
	datac => \b1|next_state.st2~q\,
	datad => \b1|next_state.st1~q\,
	combout => \b1|Selector2~0_combout\);

-- Location: FF_X4_Y15_N17
\b1|next_state.st2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b1|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b1|next_state.st2~q\);

-- Location: LCCOMB_X6_Y15_N14
\maquina_core_u0|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux1~1_combout\ = (!\maquina_core_u0|Next_State\(3) & ((\b0|next_state.st2~q\) # ((\b2|next_state.st2~q\ & !\b1|next_state.st2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0|next_state.st2~q\,
	datab => \b2|next_state.st2~q\,
	datac => \b1|next_state.st2~q\,
	datad => \maquina_core_u0|Next_State\(3),
	combout => \maquina_core_u0|Mux1~1_combout\);

-- Location: IOIBUF_X0_Y16_N8
\nc5~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nc5,
	o => \nc5~input_o\);

-- Location: LCCOMB_X7_Y15_N20
\b0|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b0|Selector0~0_combout\ = ((\b0|next_state.st0~q\ & !\b0|next_state.st2~q\)) # (!\nc5~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nc5~input_o\,
	datac => \b0|next_state.st0~q\,
	datad => \b0|next_state.st2~q\,
	combout => \b0|Selector0~0_combout\);

-- Location: FF_X7_Y15_N21
\b0|next_state.st0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b0|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b0|next_state.st0~q\);

-- Location: LCCOMB_X7_Y15_N18
\b0|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b0|Selector1~0_combout\ = (!\nc5~input_o\ & !\b0|next_state.st0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \nc5~input_o\,
	datad => \b0|next_state.st0~q\,
	combout => \b0|Selector1~0_combout\);

-- Location: FF_X7_Y15_N19
\b0|next_state.st1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b0|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b0|next_state.st1~q\);

-- Location: LCCOMB_X7_Y15_N28
\b0|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \b0|Selector2~0_combout\ = (\b0|next_state.st1~q\) # ((!\nc5~input_o\ & \b0|next_state.st2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nc5~input_o\,
	datac => \b0|next_state.st2~q\,
	datad => \b0|next_state.st1~q\,
	combout => \b0|Selector2~0_combout\);

-- Location: FF_X7_Y15_N29
\b0|next_state.st2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \b0|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \b0|next_state.st2~q\);

-- Location: LCCOMB_X6_Y15_N0
\maquina_core_u0|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux1~0_combout\ = (!\maquina_core_u0|Next_State\(3) & ((\b0|next_state.st2~q\) # (\b1|next_state.st2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b0|next_state.st2~q\,
	datac => \b1|next_state.st2~q\,
	datad => \maquina_core_u0|Next_State\(3),
	combout => \maquina_core_u0|Mux1~0_combout\);

-- Location: LCCOMB_X6_Y15_N30
\maquina_core_u0|Mux1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux1~3_combout\ = (\maquina_core_u0|Mux1~1_combout\ & (\maquina_core_u0|Next_State\(0) $ (((\maquina_core_u0|Next_State\(2) & !\maquina_core_u0|Mux1~0_combout\))))) # (!\maquina_core_u0|Mux1~1_combout\ & (!\maquina_core_u0|Next_State\(2) 
-- & ((\maquina_core_u0|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_core_u0|Next_State\(2),
	datab => \maquina_core_u0|Next_State\(0),
	datac => \maquina_core_u0|Mux1~1_combout\,
	datad => \maquina_core_u0|Mux1~0_combout\,
	combout => \maquina_core_u0|Mux1~3_combout\);

-- Location: LCCOMB_X6_Y15_N4
\maquina_core_u0|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux1~2_combout\ = (\maquina_core_u0|Mux1~1_combout\ & ((\maquina_core_u0|Next_State\(2) $ (!\maquina_core_u0|Mux1~0_combout\)))) # (!\maquina_core_u0|Mux1~1_combout\ & (\maquina_core_u0|Next_State\(2) & 
-- ((!\maquina_core_u0|Mux1~0_combout\) # (!\maquina_core_u0|Next_State\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_core_u0|Next_State\(0),
	datab => \maquina_core_u0|Next_State\(2),
	datac => \maquina_core_u0|Mux1~1_combout\,
	datad => \maquina_core_u0|Mux1~0_combout\,
	combout => \maquina_core_u0|Mux1~2_combout\);

-- Location: LCCOMB_X5_Y15_N12
\maquina_core_u0|Mux1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux1~4_combout\ = \maquina_core_u0|Mux1~2_combout\ $ (((\maquina_core_u0|Next_State\(1) & \maquina_core_u0|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_core_u0|Next_State\(1),
	datac => \maquina_core_u0|Mux1~3_combout\,
	datad => \maquina_core_u0|Mux1~2_combout\,
	combout => \maquina_core_u0|Mux1~4_combout\);

-- Location: FF_X5_Y15_N13
\maquina_core_u0|Next_State[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \redutor2_u0|q[23]~clkctrl_outclk\,
	d => \maquina_core_u0|Mux1~4_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina_core_u0|Next_State\(2));

-- Location: LCCOMB_X5_Y15_N30
\maquina_core_u0|Mux3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux3~10_combout\ = (!\maquina_core_u0|Next_State\(0) & !\maquina_core_u0|Next_State\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \maquina_core_u0|Next_State\(0),
	datad => \maquina_core_u0|Next_State\(2),
	combout => \maquina_core_u0|Mux3~10_combout\);

-- Location: LCCOMB_X5_Y15_N28
\maquina_core_u0|Mux3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux3~11_combout\ = (\b0|next_state.st2~q\ & (((!\maquina_core_u0|Next_State\(0))))) # (!\b0|next_state.st2~q\ & ((\maquina_core_u0|Next_State\(2)) # ((!\b2|next_state.st2~q\ & \maquina_core_u0|Next_State\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0|next_state.st2~q\,
	datab => \b2|next_state.st2~q\,
	datac => \maquina_core_u0|Next_State\(0),
	datad => \maquina_core_u0|Next_State\(2),
	combout => \maquina_core_u0|Mux3~11_combout\);

-- Location: LCCOMB_X5_Y15_N2
\maquina_core_u0|Mux3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux3~12_combout\ = (\b1|next_state.st2~q\ & (!\maquina_core_u0|Next_State\(0) & \maquina_core_u0|Mux3~11_combout\)) # (!\b1|next_state.st2~q\ & ((\maquina_core_u0|Mux3~11_combout\) # (!\maquina_core_u0|Next_State\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|next_state.st2~q\,
	datac => \maquina_core_u0|Next_State\(0),
	datad => \maquina_core_u0|Mux3~11_combout\,
	combout => \maquina_core_u0|Mux3~12_combout\);

-- Location: LCCOMB_X5_Y15_N0
\maquina_core_u0|Mux3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux3~8_combout\ = (\b0|next_state.st2~q\ & (((\maquina_core_u0|Next_State\(0))))) # (!\b0|next_state.st2~q\ & (\b1|next_state.st2~q\ & ((!\maquina_core_u0|Next_State\(2)) # (!\maquina_core_u0|Next_State\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0|next_state.st2~q\,
	datab => \b1|next_state.st2~q\,
	datac => \maquina_core_u0|Next_State\(0),
	datad => \maquina_core_u0|Next_State\(2),
	combout => \maquina_core_u0|Mux3~8_combout\);

-- Location: LCCOMB_X5_Y15_N22
\maquina_core_u0|Mux3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux3~9_combout\ = (\maquina_core_u0|Mux3~8_combout\) # ((\maquina_core_u0|Mux3~1_combout\ & (\maquina_core_u0|Next_State\(0) & \maquina_core_u0|Next_State\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_core_u0|Mux3~1_combout\,
	datab => \maquina_core_u0|Next_State\(0),
	datac => \maquina_core_u0|Next_State\(2),
	datad => \maquina_core_u0|Mux3~8_combout\,
	combout => \maquina_core_u0|Mux3~9_combout\);

-- Location: LCCOMB_X6_Y15_N8
\maquina_core_u0|Next_State~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Next_State~1_combout\ = (!\b0|next_state.st2~q\ & ((\b2|next_state.st2~q\) # (\b1|next_state.st2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2|next_state.st2~q\,
	datac => \b0|next_state.st2~q\,
	datad => \b1|next_state.st2~q\,
	combout => \maquina_core_u0|Next_State~1_combout\);

-- Location: LCCOMB_X6_Y15_N18
\maquina_core_u0|Mux3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux3~7_combout\ = (!\maquina_core_u0|Next_State\(2) & ((\maquina_core_u0|Next_State~1_combout\) # ((\b0|next_state.st2~q\ & \maquina_core_u0|Next_State\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_core_u0|Next_State\(2),
	datab => \b0|next_state.st2~q\,
	datac => \maquina_core_u0|Next_State~1_combout\,
	datad => \maquina_core_u0|Next_State\(0),
	combout => \maquina_core_u0|Mux3~7_combout\);

-- Location: LCCOMB_X5_Y15_N16
\maquina_core_u0|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux2~0_combout\ = (\maquina_core_u0|Next_State\(1) & (\maquina_core_u0|Next_State\(3))) # (!\maquina_core_u0|Next_State\(1) & ((\maquina_core_u0|Next_State\(3) & ((\maquina_core_u0|Mux3~7_combout\))) # (!\maquina_core_u0|Next_State\(3) & 
-- (\maquina_core_u0|Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_core_u0|Next_State\(1),
	datab => \maquina_core_u0|Next_State\(3),
	datac => \maquina_core_u0|Mux3~9_combout\,
	datad => \maquina_core_u0|Mux3~7_combout\,
	combout => \maquina_core_u0|Mux2~0_combout\);

-- Location: LCCOMB_X5_Y15_N26
\maquina_core_u0|Mux2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux2~1_combout\ = (\maquina_core_u0|Next_State\(1) & ((\maquina_core_u0|Mux2~0_combout\ & (!\maquina_core_u0|Mux3~10_combout\)) # (!\maquina_core_u0|Mux2~0_combout\ & ((\maquina_core_u0|Mux3~12_combout\))))) # 
-- (!\maquina_core_u0|Next_State\(1) & (((\maquina_core_u0|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_core_u0|Mux3~10_combout\,
	datab => \maquina_core_u0|Mux3~12_combout\,
	datac => \maquina_core_u0|Next_State\(1),
	datad => \maquina_core_u0|Mux2~0_combout\,
	combout => \maquina_core_u0|Mux2~1_combout\);

-- Location: FF_X5_Y15_N27
\maquina_core_u0|Next_State[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \redutor2_u0|q[23]~clkctrl_outclk\,
	d => \maquina_core_u0|Mux2~1_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina_core_u0|Next_State\(1));

-- Location: LCCOMB_X6_Y15_N26
\maquina_core_u0|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux0~1_combout\ = (!\b0|next_state.st2~q\ & (\maquina_core_u0|Next_State\(2) & ((\b1|next_state.st2~q\) # (\b2|next_state.st2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|next_state.st2~q\,
	datab => \b0|next_state.st2~q\,
	datac => \b2|next_state.st2~q\,
	datad => \maquina_core_u0|Next_State\(2),
	combout => \maquina_core_u0|Mux0~1_combout\);

-- Location: LCCOMB_X6_Y15_N16
\maquina_core_u0|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux0~0_combout\ = (\b1|next_state.st2~q\ & (((\maquina_core_u0|Next_State\(2))))) # (!\b1|next_state.st2~q\ & ((\b0|next_state.st2~q\ & ((\maquina_core_u0|Next_State\(2)))) # (!\b0|next_state.st2~q\ & (\b2|next_state.st2~q\ & 
-- !\maquina_core_u0|Next_State\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b1|next_state.st2~q\,
	datab => \b0|next_state.st2~q\,
	datac => \b2|next_state.st2~q\,
	datad => \maquina_core_u0|Next_State\(2),
	combout => \maquina_core_u0|Mux0~0_combout\);

-- Location: LCCOMB_X6_Y15_N20
\maquina_core_u0|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux0~2_combout\ = (\maquina_core_u0|Next_State\(0) & ((\maquina_core_u0|Mux0~1_combout\) # ((\maquina_core_u0|Next_State\(1) & \maquina_core_u0|Mux0~0_combout\)))) # (!\maquina_core_u0|Next_State\(0) & (!\maquina_core_u0|Next_State\(1) & 
-- (\maquina_core_u0|Mux0~1_combout\ & !\maquina_core_u0|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_core_u0|Next_State\(0),
	datab => \maquina_core_u0|Next_State\(1),
	datac => \maquina_core_u0|Mux0~1_combout\,
	datad => \maquina_core_u0|Mux0~0_combout\,
	combout => \maquina_core_u0|Mux0~2_combout\);

-- Location: LCCOMB_X6_Y15_N24
\maquina_core_u0|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux0~3_combout\ = (\maquina_core_u0|Next_State\(3) & (((!\maquina_core_u0|Mux3~10_combout\)) # (!\maquina_core_u0|Next_State\(1)))) # (!\maquina_core_u0|Next_State\(3) & (((\maquina_core_u0|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_core_u0|Next_State\(1),
	datab => \maquina_core_u0|Mux3~10_combout\,
	datac => \maquina_core_u0|Next_State\(3),
	datad => \maquina_core_u0|Mux0~2_combout\,
	combout => \maquina_core_u0|Mux0~3_combout\);

-- Location: FF_X6_Y15_N25
\maquina_core_u0|Next_State[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \redutor2_u0|q[23]~clkctrl_outclk\,
	d => \maquina_core_u0|Mux0~3_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina_core_u0|Next_State\(3));

-- Location: LCCOMB_X5_Y15_N6
\maquina_core_u0|Mux3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux3~1_combout\ = (!\b1|next_state.st2~q\ & \b2|next_state.st2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b1|next_state.st2~q\,
	datad => \b2|next_state.st2~q\,
	combout => \maquina_core_u0|Mux3~1_combout\);

-- Location: LCCOMB_X5_Y15_N4
\maquina_core_u0|Mux3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux3~2_combout\ = (\maquina_core_u0|Next_State\(0) & (((!\b0|next_state.st2~q\ & !\maquina_core_u0|Mux3~1_combout\)))) # (!\maquina_core_u0|Next_State\(0) & (!\maquina_core_u0|Next_State\(2) & ((\b0|next_state.st2~q\) # 
-- (\maquina_core_u0|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_core_u0|Next_State\(2),
	datab => \b0|next_state.st2~q\,
	datac => \maquina_core_u0|Next_State\(0),
	datad => \maquina_core_u0|Mux3~1_combout\,
	combout => \maquina_core_u0|Mux3~2_combout\);

-- Location: LCCOMB_X5_Y15_N14
\maquina_core_u0|Next_State~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Next_State~0_combout\ = (\b2|next_state.st2~q\) # ((\b1|next_state.st2~q\) # (\b0|next_state.st2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2|next_state.st2~q\,
	datac => \b1|next_state.st2~q\,
	datad => \b0|next_state.st2~q\,
	combout => \maquina_core_u0|Next_State~0_combout\);

-- Location: LCCOMB_X5_Y15_N10
\maquina_core_u0|Mux3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux3~3_combout\ = \maquina_core_u0|Next_State\(0) $ (((\b0|next_state.st2~q\) # (\maquina_core_u0|Next_State\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b0|next_state.st2~q\,
	datac => \maquina_core_u0|Next_State\(0),
	datad => \maquina_core_u0|Next_State\(2),
	combout => \maquina_core_u0|Mux3~3_combout\);

-- Location: LCCOMB_X5_Y15_N20
\maquina_core_u0|Mux3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux3~4_combout\ = (\maquina_core_u0|Next_State\(2) & ((\maquina_core_u0|Mux3~3_combout\ & (\maquina_core_u0|Next_State~0_combout\)) # (!\maquina_core_u0|Mux3~3_combout\ & ((!\maquina_core_u0|Next_State~1_combout\))))) # 
-- (!\maquina_core_u0|Next_State\(2) & (((\maquina_core_u0|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_core_u0|Next_State\(2),
	datab => \maquina_core_u0|Next_State~0_combout\,
	datac => \maquina_core_u0|Next_State~1_combout\,
	datad => \maquina_core_u0|Mux3~3_combout\,
	combout => \maquina_core_u0|Mux3~4_combout\);

-- Location: LCCOMB_X5_Y15_N18
\maquina_core_u0|Mux3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux3~5_combout\ = (\maquina_core_u0|Next_State\(1) & ((\maquina_core_u0|Next_State\(3)) # ((\maquina_core_u0|Mux3~2_combout\)))) # (!\maquina_core_u0|Next_State\(1) & (!\maquina_core_u0|Next_State\(3) & 
-- ((\maquina_core_u0|Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_core_u0|Next_State\(1),
	datab => \maquina_core_u0|Next_State\(3),
	datac => \maquina_core_u0|Mux3~2_combout\,
	datad => \maquina_core_u0|Mux3~4_combout\,
	combout => \maquina_core_u0|Mux3~5_combout\);

-- Location: LCCOMB_X5_Y15_N8
\maquina_core_u0|Mux3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \maquina_core_u0|Mux3~6_combout\ = (\maquina_core_u0|Next_State\(3) & ((\maquina_core_u0|Mux3~5_combout\ & ((\maquina_core_u0|Next_State\(0)))) # (!\maquina_core_u0|Mux3~5_combout\ & (\maquina_core_u0|Mux3~0_combout\)))) # 
-- (!\maquina_core_u0|Next_State\(3) & (((\maquina_core_u0|Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \maquina_core_u0|Mux3~0_combout\,
	datab => \maquina_core_u0|Next_State\(3),
	datac => \maquina_core_u0|Next_State\(0),
	datad => \maquina_core_u0|Mux3~5_combout\,
	combout => \maquina_core_u0|Mux3~6_combout\);

-- Location: FF_X5_Y15_N9
\maquina_core_u0|Next_State[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \redutor2_u0|q[23]~clkctrl_outclk\,
	d => \maquina_core_u0|Mux3~6_combout\,
	sclr => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \maquina_core_u0|Next_State\(0));

ww_led(0) <= \led[0]~output_o\;

ww_led(1) <= \led[1]~output_o\;

ww_led(2) <= \led[2]~output_o\;

ww_led(3) <= \led[3]~output_o\;
END structure;


