v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 967.5 -780 967.5 -710 {
lab=dvdd}
N 927.5 -780 927.5 -710 {
lab=avdd}
N 757.5 -570 827.5 -570 {
lab=ena}
N 757.5 -550 827.5 -550 {
lab=clk}
N 1067.5 -610 1127.5 -610 {
lab=vout}
N 967.5 -510 967.5 -450 {
lab=dvss}
N 927.5 -510 927.5 -450 {
lab=avss}
N 90 -650 90 -580 {
lab=avdd}
N 180 -650 180 -580 {
lab=dvdd}
N 270 -650 270 -580 {
lab=avss}
N 360 -650 360 -580 {
lab=dvss}
N 360 -840 360 -780 {
lab=clk}
N 270 -840 270 -780 {
lab=ena}
N 577.5 -650 577.5 -610 {
lab=vinp}
N 577.5 -550 577.5 -520 {
lab=#net1}
N 577.5 -440 677.5 -440 {
lab=vinn}
N 577.5 -460 577.5 -440 {
lab=vinn}
N 507.5 -530 577.5 -530 {
lab=#net1}
N 507.5 -440 507.5 -390 {
lab=avss}
N 507.5 -530 507.5 -500 {
lab=#net1}
N 577.5 -650 667.5 -650 {
lab=vinp}
N 667.5 -650 827.5 -650 {
lab=vinp}
N 677.5 -620 827.5 -620 {
lab=vinn}
N 677.5 -620 677.5 -440 {
lab=vinn}
C {sky130_icrg_ip__ulpcomp2.sym} 607.5 -480 0 0 {name=x1}
C {devices/lab_pin.sym} 967.5 -780 1 0 {name=p1 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 927.5 -780 1 0 {name=p2 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 757.5 -570 0 0 {name=p3 sig_type=std_logic lab=ena}
C {devices/lab_pin.sym} 577.5 -440 0 0 {name=p4 sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} 577.5 -640 0 0 {name=p5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 757.5 -550 0 0 {name=p6 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1127.5 -610 2 0 {name=p7 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 967.5 -450 3 0 {name=p8 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} 927.5 -450 3 0 {name=p9 sig_type=std_logic lab=avss}
C {devices/vsource.sym} 90 -550 0 0 {name=V1 value="DC 3.3" savecurrent=false}
C {devices/vsource.sym} 180 -550 0 0 {name=V2 value="DC 1.8" savecurrent=false}
C {devices/vsource.sym} 270 -550 0 0 {name=V3 value=0 savecurrent=false}
C {devices/vsource.sym} 360 -550 0 0 {name=V4 value=0 savecurrent=false}
C {devices/gnd.sym} 90 -520 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 180 -520 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 270 -520 0 0 {name=l3 lab=GND}
C {devices/gnd.sym} 360 -520 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} 90 -640 0 0 {name=p10 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 180 -640 0 0 {name=p11 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 270 -640 0 0 {name=p12 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 360 -640 0 0 {name=p13 sig_type=std_logic lab=dvss}
C {devices/vsource.sym} 360 -750 0 0 {name=V5 value="Pulse(0 1.8 0 0.1n 0.1n 2.5n 5n)" savecurrent=false}
C {devices/gnd.sym} 360 -720 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} 360 -830 0 0 {name=p14 sig_type=std_logic lab=clk}
C {devices/vsource.sym} 270 -750 0 0 {name=V6 value="DC 1.8" savecurrent=false}
C {devices/gnd.sym} 270 -720 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 270 -830 0 0 {name=p15 sig_type=std_logic lab=ena}
C {devices/vsource.sym} 577.5 -490 0 0 {name=V7 value="DC 0 PWL (0 -0.5 \{risetime\} 0.5 [\{risetime\} * 2] -0.5 [\{risetime\} * 3] 0.5 [\{risetime\} * 4] -0.5 )" savecurrent=false}
C {devices/vsource.sym} 577.5 -580 0 0 {name=V8 value="DC 0 PWL (0 -0.5 \{risetime\} 0.5 [\{risetime\} * 2] -0.5 [\{risetime\} * 3] 0.5 [\{risetime\} * 4] -0.5 )" savecurrent=false}
C {devices/code_shown.sym} 80 -350 0 0 {name=SETUP only_toplevel=false value="
.include \{DUT_path\}
.include {PDK_ROOT\}/\{PDK\}/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
.include {PDK_ROOT\}/\{PDK\}/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.lib {PDK_ROOT\}/\{PDK\}/libs.tech/combined/sky130.lib.spice \{corner\}
.option TEMP=\{temperature\}
.option warn=1"}
C {devices/code_shown.sym} 80 -190 0 0 {name=CONTROL only_toplevel=false value=".control
** Find zero crossing for positive input differential, zero crossing for negative
** input differential, then compute the average
tran 1n 1u
meas tran vhigh FIND V(inp) WHEN V(vout) = [\{Vvdd\} / 2] CROSS=1
meas tran vlow FIND V(vinp) WHEN V(vout) = [\{Vvdd\} / 2] CROSS=2
let vrise = $&vhigh - \{Vcm\}
let vfall = $&vlow - \{Vcm\}

let voffset = 0.5 * ($&vrise + $&vfall)
let vhyst = $&vrise - $&vfall

echo $&voffset $&vhyst > \{simpath\}/\{filename\}_\{N\}.data

quit
.endc
"}
C {devices/vsource.sym} 507.5 -470 0 0 {name=V9 value="DC \{Vcm\}" savecurrent=false}
C {devices/lab_pin.sym} 507.5 -400 0 0 {name=p18 sig_type=std_logic lab=avss}
