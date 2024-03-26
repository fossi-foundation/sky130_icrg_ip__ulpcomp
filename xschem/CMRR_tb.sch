v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 720 -940 790 -940 {
lab=dvdd}
N 720 -920 790 -920 {
lab=avdd}
N 720 -900 790 -900 {
lab=ena}
N 720 -880 790 -880 {
lab=#net1}
N 720 -860 790 -860 {
lab=vinp}
N 720 -840 790 -840 {
lab=clk}
N 1090 -940 1150 -940 {
lab=vout}
N 1090 -920 1150 -920 {
lab=dvss}
N 1090 -900 1150 -900 {
lab=avss}
N 90 -650 90 -580 {
lab=avdd}
N 180 -650 180 -580 {
lab=dvdd}
N 270 -650 270 -580 {
lab=avss}
N 360 -650 360 -580 {
lab=dvss}
N 520 -640 520 -580 {
lab=clk}
N 430 -640 430 -580 {
lab=ena}
N 600 -860 720 -860 {
lab=vinp}
N 600 -860 600 -830 {
lab=vinp}
N 600 -770 600 -720 {
lab=avss}
N 660 -880 720 -880 {
lab=#net1}
N 600 -660 600 -620 {
lab=avss}
N 1410 -950 1480 -950 {
lab=dvdd}
N 1410 -930 1480 -930 {
lab=avdd}
N 1410 -910 1480 -910 {
lab=ena}
N 1410 -890 1480 -890 {
lab=#net2}
N 1410 -870 1480 -870 {
lab=vinpp}
N 1410 -850 1480 -850 {
lab=clk}
N 1780 -950 1840 -950 {
lab=vcmrr}
N 1780 -930 1840 -930 {
lab=dvss}
N 1780 -910 1840 -910 {
lab=avss}
N 1290 -870 1410 -870 {
lab=vinpp}
N 600 -720 600 -660 {
lab=avss}
N 1500 -740 1820 -740 {
lab=vcmrr}
N 1820 -950 1820 -740 {
lab=vcmrr}
N 1370 -890 1410 -890 {
lab=#net2}
N 1370 -740 1440 -740 {
lab=#net2}
N 90 -520 90 -470 {
lab=GND}
N 90 -470 230 -470 {
lab=GND}
N 230 -470 520 -470 {
lab=GND}
N 520 -520 520 -470 {
lab=GND}
N 430 -520 430 -470 {
lab=GND}
N 360 -520 360 -470 {
lab=GND}
N 270 -520 270 -470 {
lab=GND}
N 180 -520 180 -470 {
lab=GND}
N 660 -880 660 -830 {
lab=#net1}
N 660 -830 660 -820 {
lab=#net1}
N 1290 -870 1290 -740 {
lab=vinpp}
N 1360 -740 1370 -740 {
lab=#net2}
N 1290 -740 1300 -740 {
lab=vinpp}
N 1370 -890 1370 -740 {
lab=#net2}
N 230 -470 230 -410 {
lab=GND}
N 1240 -870 1240 -840 {
lab=vinpp}
N 1240 -780 1240 -730 {
lab=avss}
N 1240 -670 1240 -630 {
lab=avss}
N 1240 -730 1240 -670 {
lab=avss}
N 1240 -870 1290 -870 {
lab=vinpp}
N 660 -820 660 -800 {
lab=#net1}
N 1110 -940 1110 -880 {
lab=vout}
N 1110 -820 1110 -800 {
lab=vout}
N 1110 -880 1110 -820 {
lab=vout}
N 660 -800 660 -760 {
lab=#net1}
N 660 -770 760 -770 {
lab=#net1}
N 820 -770 1110 -770 {
lab=vout}
N 1110 -800 1110 -770 {
lab=vout}
C {sky130_icrg_ip__ulpcomp2.sym} 940 -890 0 0 {name=x1}
C {devices/lab_pin.sym} 720 -940 0 0 {name=p1 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 720 -920 0 0 {name=p2 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 720 -900 0 0 {name=p3 sig_type=std_logic lab=ena}
C {devices/lab_pin.sym} 600 -850 0 0 {name=p5 sig_type=std_logic lab=vinp}
C {devices/lab_pin.sym} 720 -840 0 0 {name=p6 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1150 -940 1 0 {name=p7 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} 1150 -920 2 0 {name=p8 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} 1150 -900 2 0 {name=p9 sig_type=std_logic lab=avss}
C {devices/vsource.sym} 90 -550 0 0 {name=V1 value="DC 3.3" savecurrent=false}
C {devices/vsource.sym} 180 -550 0 0 {name=V2 value="DC 1.8" savecurrent=false}
C {devices/vsource.sym} 270 -550 0 0 {name=V3 value=0 savecurrent=false}
C {devices/vsource.sym} 360 -550 0 0 {name=V4 value=0 savecurrent=false}
C {devices/lab_pin.sym} 90 -640 0 0 {name=p10 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 180 -640 0 0 {name=p11 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 270 -640 0 0 {name=p12 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 360 -640 0 0 {name=p13 sig_type=std_logic lab=dvss}
C {devices/vsource.sym} 520 -550 0 0 {name=V5 value="Pulse(0 1.8 0 0.1n 0.1n 5n 10n)" savecurrent=false}
C {devices/lab_pin.sym} 520 -630 0 0 {name=p14 sig_type=std_logic lab=clk}
C {devices/vsource.sym} 430 -550 0 0 {name=V6 value="DC 1.8" savecurrent=false}
C {devices/lab_pin.sym} 430 -630 0 0 {name=p15 sig_type=std_logic lab=ena}
C {devices/code_shown.sym} 50 -1150 0 0 {name=s1 only_toplevel=false value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
.option TEMP=25"}
C {devices/code_shown.sym} 50 -1030 0 0 {name=s2 only_toplevel=false value=".control
ac dec 20 1 1e12

let DMgain=v(vout)/v(vinp)
let CMgain=v(vcmrr)/v(vinpp)
let CMRR=DMgain-CMgain

plot db(DMgain)
plot db(CMgain)
plot db(DMgain)-db(CMgain)

*plot V(vcmrr) V(vout)
*plot db(mag(V(vout))/mag(V(vcmrr)))

.endc"}
C {devices/vsource.sym} 600 -800 0 0 {name=V9 value="DC 1.65 AC 1" savecurrent=false}
C {devices/lab_pin.sym} 600 -620 0 0 {name=p18 sig_type=std_logic lab=avss}
C {sky130_icrg_ip__ulpcomp2.sym} 1630 -900 0 0 {name=x2}
C {devices/lab_pin.sym} 1410 -950 0 0 {name=p19 sig_type=std_logic lab=dvdd}
C {devices/lab_pin.sym} 1410 -930 0 0 {name=p20 sig_type=std_logic lab=avdd}
C {devices/lab_pin.sym} 1410 -910 0 0 {name=p21 sig_type=std_logic lab=ena}
C {devices/lab_pin.sym} 1410 -850 0 0 {name=p24 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} 1840 -950 2 0 {name=p25 sig_type=std_logic lab=vcmrr}
C {devices/lab_pin.sym} 1840 -930 2 0 {name=p26 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} 1840 -910 2 0 {name=p27 sig_type=std_logic lab=avss}
C {devices/res.sym} 1470 -740 1 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 230 -410 0 0 {name=l11 lab=GND}
C {devices/capa.sym} 1330 -740 1 0 {name=C3
m=1
value=1e8
footprint=1206
device="ceramic capacitor"}
C {devices/vsource.sym} 1240 -810 0 0 {name=V7 value="DC 1.65 AC 1" savecurrent=false}
C {devices/lab_pin.sym} 1240 -630 0 0 {name=p4 sig_type=std_logic lab=avss}
C {devices/lab_pin.sym} 1240 -860 0 0 {name=p16 sig_type=std_logic lab=vinpp}
C {devices/gnd.sym} 660 -700 0 0 {name=l1 lab=GND}
C {devices/res.sym} 790 -770 1 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 660 -730 2 0 {name=C1
m=1
value=1e8
footprint=1206
device="ceramic capacitor"}
