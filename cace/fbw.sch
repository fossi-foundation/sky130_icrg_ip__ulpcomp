v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 75 -337.5 75 -297.5 {
lab=clk}
N -65 -407.5 -5 -407.5 {
lab=vinn}
N -65 -447.5 -5 -447.5 {
lab=vinp}
N 205 -407.5 295 -407.5 {
lab=oneg}
N 205 -447.5 275 -447.5 {
lab=vout}
N 275 -447.5 295 -447.5 {
lab=vout}
N 115 -557.5 115 -527.5 {
lab=avdd}
N -540 -470 -540 -400 {
lab=avdd}
N -360 -470 -360 -400 {
lab=avss}
N -270 -660 -270 -600 {
lab=clk}
N -360 -660 -360 -600 {
lab=enab}
N -540 -670 -540 -600 {
lab=vinp}
N -450 -670 -450 -600 {
lab=vinn}
N 115 -337.5 115 -297.5 {
lab=avss}
N 115 -607.5 115 -557.5 {
lab=avdd}
N 75 -607.5 75 -527.5 {
lab=enab}
C {devices/lab_pin.sym} 115 -607.5 2 0 {name=p1 lab=avdd}
C {devices/lab_pin.sym} 75 -297.5 3 0 {name=p7 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 75 -607.5 0 0 {name=p27 lab=enab}
C {devices/lab_pin.sym} 295 -407.5 2 0 {name=p6 sig_type=std_logic lab=oneg}
C {devices/lab_pin.sym} -65 -447.5 0 0 {name=p2 sig_type=std_logic lab=vinp}
C {devices/vsource.sym} -540 -370 0 0 {name=V1 value="DC 3.3" savecurrent=false}
C {devices/vsource.sym} -360 -370 0 0 {name=V3 value=0 savecurrent=false}
C {devices/gnd.sym} -540 -340 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -360 -340 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -540 -460 0 0 {name=p10 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} -360 -460 0 0 {name=p12 sig_type=std_logic lab=avss}
C {devices/vsource.sym} -270 -570 0 0 {name=V5 value="Pulse(0 1.8 0 0.1n 0.1n 2.5n 5n)" savecurrent=false}
C {devices/gnd.sym} -270 -540 0 0 {name=l5 lab=GND}
C {devices/lab_pin.sym} -270 -650 0 0 {name=p14 sig_type=std_logic lab=clk}
C {devices/vsource.sym} -360 -570 0 0 {name=V6 value="DC 0" savecurrent=false}
C {devices/gnd.sym} -360 -540 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -360 -650 0 0 {name=p15 sig_type=std_logic lab=enab}
C {devices/vsource.sym} -540 -570 0 0 {name=V7 value="DC 1.65 AC 0.1" savecurrent=false}
C {devices/vsource.sym} -450 -570 0 0 {name=V8 value="DC 1.65 AC 0.1" savecurrent=false}
C {devices/gnd.sym} -540 -540 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} -450 -540 0 0 {name=l8 lab=GND}
C {devices/lab_pin.sym} -540 -660 0 0 {name=p16 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} -450 -660 0 0 {name=p17 sig_type=std_logic lab=vinn}
C {devices/code_shown.sym} -650 -200 0 0 {name=SETUP only_toplevel=false value="
.include \{DUT_path\}
.include \{PDK_ROOT\}/\{PDK\}/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
.include \{PDK_ROOT\}/\{PDK\}/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
.lib \{PDK_ROOT\}/\{PDK\}/libs.tech/combined/sky130.lib.spice \{corner\}
.option TEMP=\{temperature\}
.option warn=1"}
C {devices/code_shown.sym} -650 -30 0 0 {name=CONTROL only_toplevel=false value=".control
ac dec 10 1e2 1e12
let vog = (mag(V(vout)) / mag(V(vinp)))
meas ac bw WHEN vog=1 FALL=1
let fbw = $&bw
echo $&fbw > ngspice/\{filename\}_\{N\}.data
quit

.endc"}
C {devices/lab_pin.sym} -65 -407.5 0 0 {name=p3 sig_type=std_logic lab=vinn
}
C {devices/lab_pin.sym} 295 -447.5 2 0 {name=p4 sig_type=std_logic lab=vout
}
C {Stage1.sym} -225 -287.5 0 0 {name=x1}
C {devices/lab_pin.sym} 115 -297.5 3 0 {name=p9 lab=avss}
