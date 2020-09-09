# MSFS TBM 930 Project version 0.2 Beta
This is the improvement project for the MSFS default TBM 930.

Current features of this modification are:

**Removed the 30% gap between 0 and 30% throttle;**

tp_high_idle_throttle_pos = 0; throttle position of high idle (Percent)

**Ajusted ITT slightly;**

itt_peak_temperature = 1150

itt_tuning_constant = 2

**Ajusted autopilot maximum pitch (was 10, now 15).**

max_pitch = 15

**Corrected some numbers**

pitch_takeoff_ga = 10

min_n1_for_starter_cutoff = 52 ; %

min_n2_for_starter_cutoff = 80 ; %

rated_shaft_hp = 850

n1_to_shaft_torque_table = ... 68:0.12 ...

**Corrected torque vs air density (by [PositiveZero](https://forums.flightsimulator.com/u/positivezero/summary), modified by me)**

density_on_torque_table = 0.000737:0.441, 0.000889:0.588, 0.001065:0.641, 0.001267:0.716, 0.001496:0.82, 0.001755:0.95, 0.002048:0.96, 0.002377:0.965

**Landing gear creates more drag (by [PositiveZero](https://forums.flightsimulator.com/u/positivezero/summary))**

drag_coef_gear = 0.04700

## Known issues:

-Inertial Separator is hiting too much the torque.

**How to install:**

1: Click on the green button in the top right corner that says 'Code' and click "Download as ZIP"

2: Unzip and put the folder "aircraft-tbm930-performance" in your MSFS Community folder

For more liveries see this thread: https://forums.flightsimulator.com/t/turboprop-master-livery-list/168196/16
