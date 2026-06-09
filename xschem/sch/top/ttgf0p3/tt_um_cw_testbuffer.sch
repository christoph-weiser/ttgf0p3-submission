v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 510 -180 510 -1000 1670 -1000 1670 -180 510 -180 {}
P 4 5 0 0 0 -1250 2410 -1250 2410 0 0 0 {}
P 4 5 2130 -310 2130 -780 2410 -780 2410 -310 2130 -310 {}
P 4 5 2130 -80 2130 -310 2410 -310 2410 -80 2130 -80 {}
P 4 5 2130 -780 2130 -1250 2410 -1250 2410 -780 2130 -780 {}
T {TT User Area} 1520 -1030 0 0 0.4 0.4 {
}
N 510 -770 1070 -770 {
lab=ua[1]}
N 1070 -770 1080 -770 {
lab=ua[1]}
N 1080 -770 1080 -680 {
lab=ua[1]}
N 1100 -1000 1100 -670 {
lab=VAPWR}
N 1100 -590 1100 -290 {
lab=VGND}
N 510 -290 1100 -290 {
lab=VGND}
N 510 -630 1030 -630 {
lab=ua[0]}
N 1150 -630 1670 -630 {
lab=ua[2]}
N 1100 -290 1670 -290 {
lab=VGND}
N 1620 -330 1670 -330 {
lab=VGND}
N 1620 -330 1620 -290 {
lab=VGND}
N 1620 -370 1670 -370 {
lab=VGND}
N 1620 -370 1620 -330 {
lab=VGND}
C {devices/iopin.sym} 510 -290 2 0 {name=p1 lab=VGND
}
C {devices/iopin.sym} 940 -1000 3 0 {name=p33 lab=VDPWR
}
C {devices/iopin.sym} 1100 -1000 1 1 {name=p2 lab=VAPWR
}
C {devices/iopin.sym} 1670 -630 2 1 {name=p3 lab=ua[2]
}
C {devices/ipin.sym} 1670 -840 2 0 {name=p5 lab=ui_in[7:0]
}
C {devices/iopin.sym} 510 -630 2 0 {name=p4 lab=ua[0]
}
C {devices/iopin.sym} 510 -770 2 0 {name=p10 lab=ua[1]
}
C {devices/titleblock.sym} 2130 0 0 0 {name=l21 author="Christoph Weiser" license="GPLv3" year="2024" }
C {devices/notes.sym} 2220 -150 0 0 {name=h25
descr=bla
tclcommand="execute 0 sh -c \\"$\{editor\} [file dirname [xschem get schname]]/doc/notes.md\\""
}
C {devices/opin.sym} 1670 -330 0 0 {name=p6 lab=uio_out[7:0]
}
C {devices/opin.sym} 1670 -290 0 0 {name=p8 lab=uio_oe[7:0]
}
C {sch/testbuffer/testbuffer/testbuffer.sym} 1180 -630 0 0 {name=xtb
}
C {devices/noconn.sym} 1670 -840 0 0 {name=l1}
C {devices/noconn.sym} 940 -1000 3 0 {name=l2}
C {devices/opin.sym} 1670 -370 0 0 {name=p7 lab=uo_out[7:0]
}
C {devices/ipin.sym} 1670 -880 2 0 {name=p9 lab=rst_n
}
C {devices/noconn.sym} 1670 -880 0 0 {name=l3}
C {devices/ipin.sym} 1670 -920 2 0 {name=p11 lab=clk
}
C {devices/noconn.sym} 1670 -920 0 0 {name=l4}
C {devices/ipin.sym} 1670 -960 2 0 {name=p12 lab=ena
}
C {devices/noconn.sym} 1670 -960 0 0 {name=l5}
C {devices/iopin.sym} 1670 -760 2 1 {name=p13 lab=ua[7:3]
}
C {devices/noconn.sym} 1670 -760 0 0 {name=l6}
