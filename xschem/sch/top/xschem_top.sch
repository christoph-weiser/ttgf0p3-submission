v {xschem version=3.4.3 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
P 4 5 1760 -80 1760 -260 2040 -260 2040 -80 1760 -80 {}
P 4 5 1760 -260 1760 -440 2040 -440 2040 -260 1760 -260 {}
P 4 5 1760 -540 1760 -730 2040 -730 2040 -540 1760 -540 {}
P 4 5 0 -0 -0 -990 2040 -990 2040 0 0 0 {}
P 4 5 1760 -730 1760 -990 2040 -990 2040 -730 1760 -730 {}
T {GF180} 1820 -890 0 0 1 1 {layer=4 font="serif"}
C {devices/code.sym} 1770 -220 0 0 {name=NGSPICE
only_toplevel=true
format="tcleval(@value )"
value=".control

save all
op
.endc
" }
C {devices/notes.sym} 1850 -580 0 0 {name=h25
descr=bla
tclcommand="execute 0 sh -c \\"$\{editor\} [file dirname [xschem get schname]]/doc/notes.md\\""
}
C {devices/titleblock.sym} 1760 0 0 0 {name=l1 author="Christoph Weiser" license="Apache 2.0" year="2026" }
C {devices/version.sym} 1760 -440 0 0 {name=l2}
C {devices/code.sym} 1900 -220 0 0 {name=CORNERS_NG 
only_toplevel=false
spice_ignore="tcleval([if \{$cmdline_ignore == true\} \{return \{true\}\} else \{return \{false\}\}])"
format="tcleval( @value )"
value="* Model Corners

.include \\\\$::CORNERS\\\\/ngspice/tt.spice
*.include \\\\$::CORNERS\\\\/ngspice/ff.spice
*.include \\\\$::CORNERS\\\\/ngspice/ss.spice
*.include \\\\$::CORNERS\\\\/ngspice/sf.spice
*.include \\\\$::CORNERS\\\\/ngspice/fs.spice
"}
C {devices/code.sym} 1900 -400 0 0 {name=CORNERS_XY 
only_toplevel=false
spice_ignore="tcleval([if \{$cmdline_ignore == true\} \{return \{true\}\} else \{return \{false\}\}])"
format="tcleval( @value )"
value="* Model Corners

.include \\\\$::CORNERS\\\\/xyce/tt.spice
*.include \\\\$::CORNERS\\\\/xyce/ff.spice
*.include \\\\$::CORNERS\\\\/xyce/ss.spice
*.include \\\\$::CORNERS\\\\/xyce/sf.spice
*.include \\\\$::CORNERS\\\\/xyce/fs.spice
"}
C {devices/code.sym} 1770 -400 0 0 {name=XYCE 
only_toplevel=false
format="tcleval( @value )"
value=".preprocess replaceground true
*.options output initial_interval=100e-9
*.options timeint abstol=1e-7 reltol=1e-2

.tran 1e-9 1e-6 uic

*.print tran file=data.csv format=csv v(out)
"}
