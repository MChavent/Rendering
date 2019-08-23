# Matthieu Chavent 08/2019

set nb_frame 400 

# loop to 
for { set i 0 } { $i < $nb_frame } { incr i 1 } {

	animate goto $i
	#mol color Pos
	#mol representation VDW 3.000000 12.000000
	#mol selection all
	#mol material Opaque
	#mol modrep 0 0
	set nb [format "name%05d" $i] 
	render TachyonLOptiXInternal "img$nb.ppm" %s
	
}

