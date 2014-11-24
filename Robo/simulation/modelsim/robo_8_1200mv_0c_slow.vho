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

-- DATE "11/24/2014 17:43:10"

-- 
-- Device: Altera EP3C25F324C8 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	robo IS
    PORT (
	clk : IN std_logic;
	rst_n : IN std_logic;
	front : IN std_logic;
	left : IN std_logic;
	foward : OUT std_logic;
	turn_left : OUT std_logic
	);
END robo;

-- Design Ports Information
-- clk	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst_n	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- front	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- left	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- foward	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- turn_left	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF robo IS
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
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_front : std_logic;
SIGNAL ww_left : std_logic;
SIGNAL ww_foward : std_logic;
SIGNAL ww_turn_left : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \front~input_o\ : std_logic;
SIGNAL \left~input_o\ : std_logic;
SIGNAL \foward~output_o\ : std_logic;
SIGNAL \turn_left~output_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst_n <= rst_n;
ww_front <= front;
ww_left <= left;
foward <= ww_foward;
turn_left <= ww_turn_left;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X11_Y0_N2
\foward~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \foward~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\turn_left~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \turn_left~output_o\);

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

-- Location: IOIBUF_X25_Y34_N1
\rst_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: IOIBUF_X0_Y16_N8
\front~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_front,
	o => \front~input_o\);

-- Location: IOIBUF_X0_Y16_N1
\left~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_left,
	o => \left~input_o\);

ww_foward <= \foward~output_o\;

ww_turn_left <= \turn_left~output_o\;
END structure;


