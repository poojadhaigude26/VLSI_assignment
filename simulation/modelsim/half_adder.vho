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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/29/2026 20:52:00"

-- 
-- Device: Altera EPM240T100C3 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	csa_4bit IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	C : IN std_logic_vector(3 DOWNTO 0);
	Sum : OUT std_logic_vector(3 DOWNTO 0);
	Carry : OUT std_logic_vector(3 DOWNTO 0)
	);
END csa_4bit;

-- Design Ports Information
-- Sum[0]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Sum[1]	=>  Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Sum[2]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Sum[3]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Carry[0]	=>  Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Carry[1]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Carry[2]	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Carry[3]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- A[0]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C[0]	=>  Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C[1]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C[2]	=>  Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- C[3]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF csa_4bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Sum : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Carry : std_logic_vector(3 DOWNTO 0);
SIGNAL \Sum~0_combout\ : std_logic;
SIGNAL \Sum~1_combout\ : std_logic;
SIGNAL \Sum~2_combout\ : std_logic;
SIGNAL \Sum~3_combout\ : std_logic;
SIGNAL \Carry~0_combout\ : std_logic;
SIGNAL \Carry~1_combout\ : std_logic;
SIGNAL \Carry~2_combout\ : std_logic;
SIGNAL \C~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_A <= A;
ww_B <= B;
ww_C <= C;
Sum <= ww_Sum;
Carry <= ww_Carry;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_C(0),
	combout => \C~combout\(0));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LC_X2_Y2_N2
\Sum~0\ : maxii_lcell
-- Equation(s):
-- \Sum~0_combout\ = (\B~combout\(0) $ (\C~combout\(0) $ (\A~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(0),
	datac => \C~combout\(0),
	datad => \A~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Sum~0_combout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_C(1),
	combout => \C~combout\(1));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LC_X5_Y4_N0
\Sum~1\ : maxii_lcell
-- Equation(s):
-- \Sum~1_combout\ = (\C~combout\(1) $ (\B~combout\(1) $ (\A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C~combout\(1),
	datac => \B~combout\(1),
	datad => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Sum~1_combout\);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_C(2),
	combout => \C~combout\(2));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LC_X4_Y2_N4
\Sum~2\ : maxii_lcell
-- Equation(s):
-- \Sum~2_combout\ = (\C~combout\(2) $ (\B~combout\(2) $ (\A~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C~combout\(2),
	datac => \B~combout\(2),
	datad => \A~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Sum~2_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_C(3),
	combout => \C~combout\(3));

-- Location: LC_X4_Y1_N2
\Sum~3\ : maxii_lcell
-- Equation(s):
-- \Sum~3_combout\ = \A~combout\(3) $ (\B~combout\(3) $ ((\C~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B~combout\(3),
	datac => \C~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Sum~3_combout\);

-- Location: LC_X2_Y2_N4
\Carry~0\ : maxii_lcell
-- Equation(s):
-- \Carry~0_combout\ = ((\B~combout\(0) & ((\C~combout\(0)) # (\A~combout\(0)))) # (!\B~combout\(0) & (\C~combout\(0) & \A~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \B~combout\(0),
	datac => \C~combout\(0),
	datad => \A~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Carry~0_combout\);

-- Location: LC_X5_Y4_N2
\Carry~1\ : maxii_lcell
-- Equation(s):
-- \Carry~1_combout\ = ((\C~combout\(1) & ((\B~combout\(1)) # (\A~combout\(1)))) # (!\C~combout\(1) & (\B~combout\(1) & \A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C~combout\(1),
	datac => \B~combout\(1),
	datad => \A~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Carry~1_combout\);

-- Location: LC_X4_Y2_N2
\Carry~2\ : maxii_lcell
-- Equation(s):
-- \Carry~2_combout\ = ((\C~combout\(2) & ((\B~combout\(2)) # (\A~combout\(2)))) # (!\C~combout\(2) & (\B~combout\(2) & \A~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C~combout\(2),
	datac => \B~combout\(2),
	datad => \A~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Carry~2_combout\);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Sum[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Sum~0_combout\,
	oe => VCC,
	padio => ww_Sum(0));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Sum[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Sum~1_combout\,
	oe => VCC,
	padio => ww_Sum(1));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Sum[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Sum~2_combout\,
	oe => VCC,
	padio => ww_Sum(2));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Sum[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Sum~3_combout\,
	oe => VCC,
	padio => ww_Sum(3));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Carry[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Carry(0));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Carry[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Carry~0_combout\,
	oe => VCC,
	padio => ww_Carry(1));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Carry[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Carry~1_combout\,
	oe => VCC,
	padio => ww_Carry(2));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Carry[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Carry~2_combout\,
	oe => VCC,
	padio => ww_Carry(3));
END structure;


