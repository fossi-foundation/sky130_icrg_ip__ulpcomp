v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Stage0: Enable Invert
} 120 -440 0 0 0.4 0.4 {}
N 200 -250 200 -140 {
lab=ena}
N 240 -220 240 -170 {
lab=enab}
N 240 -280 240 -250 {
lab=dvdd}
N 240 -140 240 -110 {
lab=dvss}
N 160 -200 200 -200 {
lab=ena}
N 240 -200 290 -200 {
lab=enab}
N 240 -330 240 -280 {
lab=dvdd}
N 240 -110 240 -50 {
lab=dvss}
C {devices/ipin.sym} 160 -200 0 0 {name=p27 lab=ena}
C {devices/ipin.sym} 240 -330 0 0 {name=p28 sig_type=std_logic lab=dvdd}
C {devices/opin.sym} 240 -50 0 0 {name=p33 sig_type=std_logic lab=dvss}
C {devices/opin.sym} 290 -200 0 0 {name=p37 sig_type=std_logic lab=enab}
C {sky130_fd_pr/pfet_01v8.sym} 220 -250 0 0 {name=M25
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
C {sky130_fd_pr/nfet_01v8.sym} 220 -140 0 0 {name=M24
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
