v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 980 -930 980 -860 {
lab=dvdd}
N 940 -930 940 -860 {
lab=avdd}
N 770 -720 840 -720 {
lab=ena}
N 770 -700 840 -700 {
lab=clk}
N 1080 -760 1140 -760 {
lab=vout}
N 980 -660 980 -600 {
lab=dvss}
N 940 -660 940 -600 {
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
N 1140 -760 1330 -760 {
lab=vout}
N 590 -800 590 -760 {
lab=vinp}
N 590 -700 590 -670 {
lab=#net1}
N 590 -590 690 -590 {
lab=vinn}
N 590 -610 590 -590 {
lab=vinn}
N 520 -680 590 -680 {
lab=#net1}
N 520 -590 520 -540 {
lab=avss}
N 520 -680 520 -650 {
lab=#net1}
N 590 -800 680 -800 {
lab=vinp}
N 680 -800 840 -800 {}
N 690 -770 840 -770 {}
N 690 -770 690 -590 {}
C {sky130_icrg_ip__ulpcomp2.sym} 620 -630 0 0 {name=x1}
C {devices/lab_pin.sym} 980 -930 1 0 {name=p1 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 940 -930 1 0 {name=p2 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 770 -720 0 0 {name=p3 sig_type=std_logic lab=ena}
C {devices/lab_pin.sym} 590 -590 0 0 {name=p4 sig_type=std_logic lab=vinn}
C {devices/lab_pin.sym} 590 -790 0 0 {name=p5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 770 -700 0 0 {name=p6 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1330 -760 2 0 {name=p7 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 980 -600 3 0 {name=p8 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} 940 -600 3 0 {name=p9 sig_type=std_logic lab=avss}
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
C {devices/vsource.sym} 590 -640 0 0 {name=V7 value="DC 0 PWL (0 -0.5 \{risetime\} 0.5 [\{risetime\} * 2] -0.5 [\{risetime\} * 3] 0.5 [\{risetime\} * 4] -0.5 )" savecurrent=false}
C {devices/vsource.sym} 590 -730 0 0 {name=V8 value="DC 0 PWL (0 -0.5 \{risetime\} 0.5 [\{risetime\} * 2] -0.5 [\{risetime\} * 3] 0.5 [\{risetime\} * 4] -0.5 )" savecurrent=false}
C {devices/code_shown.sym} 80 -350 0 0 {name=SETUP only_toplevel=false value="
.include \{DUT_path\}
.include /home/ttuser/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice \{corner\}
.option TEMP=\{temperature\}
.option warn=1"}
C {devices/code_shown.sym} 80 -190 0 0 {name=CONTROL only_toplevel=false value=".control
** Find zero crossing for positive input differential, zero crossing for negative
** input differential, then compute the average
tran 1n 1u
meas tran vhigh FIND V(inp) WHEN V(out) = [\{Vvdd\} / 2] CROSS=1
meas tran vlow FIND V(inp) WHEN V(out) = [\{Vvdd\} / 2] CROSS=2
let vrise = $&vhigh - \{Vcm\}
let vfall = $&vlow - \{Vcm\}

let voffset = 0.5 * ($&vrise + $&vfall)
let vhyst = $&vrise - $&vfall

echo $&voffset $&vhyst > \{simpath\}/\{filename\}_\{N\}.data

quit
.endc
"}
C {devices/vsource.sym} 520 -620 0 0 {name=V9 value="DC \{Vcm\}" savecurrent=false}
C {devices/lab_pin.sym} 520 -550 0 0 {name=p18 sig_type=std_logic lab=avss}
