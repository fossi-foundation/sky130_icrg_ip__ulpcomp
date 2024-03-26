v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Stage00: Clock Invert
} 200 -515 0 0 0.4 0.4 {}
N 210 -280 210 -170 {
lab=clk}
N 250 -250 250 -200 {
lab=clkb}
N 250 -140 250 -80 {
lab=dvss}
N 250 -360 250 -310 {
lab=dvddb}
N 250 -230 310 -230 {
lab=clkb}
N 150 -230 210 -230 {
lab=clk}
N 250 -310 250 -280 {
lab=dvddb}
N 250 -170 250 -140 {
lab=dvss}
N 370 -280 370 -170 {
lab=clkb}
N 410 -250 410 -200 {
lab=clka}
N 410 -140 410 -80 {
lab=dvss}
N 410 -360 410 -310 {
lab=dvddb}
N 410 -310 410 -280 {
lab=dvddb}
N 410 -170 410 -140 {
lab=dvss}
N 310 -230 370 -230 {
lab=clkb}
N 410 -230 490 -230 {
lab=clka}
C {devices/opin.sym} 250 -80 0 0 {name=p11 sig_type=std_logic lab=dvss}
C {devices/ipin.sym} 250 -360 0 0 {name=p12 sig_type=std_logic lab=dvddb}
C {devices/opin.sym} 490 -230 0 0 {name=p14 sig_type=std_logic lab=clka
}
C {devices/ipin.sym} 150 -230 0 0 {name=p29 lab=clk}
C {devices/opin.sym} 340 -230 3 0 {name=p30 sig_type=std_logic lab=clkb
}
C {sky130_fd_pr/pfet_01v8.sym} 390 -280 0 0 {name=M22
L=0.5
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 410 -80 2 0 {name=p31 sig_type=std_logic lab=dvss}
C {devices/lab_pin.sym} 410 -360 0 0 {name=p32 sig_type=std_logic lab=dvddb}
C {sky130_fd_pr/pfet_01v8.sym} 230 -280 0 0 {name=M8
L=0.5
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 230 -170 0 0 {name=M6
L=0.5
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 390 -170 0 0 {name=M21
L=0.5
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
