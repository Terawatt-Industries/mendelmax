// f beachler
// adjustable y-axis rod support based on original

yrodsupport_adjust();

module yrodsupport_adjust() {
	yrs_withclamp();
	translate([-75, 0, 0]) rotate([0, 0, 180]) yrs_noclamp();
}

module yrs_withclamp() {
	difference() 
	{
		import("../stl/Y_Rod_Mount_2_off.stl");
		translate([-30, -50, -1]) cube([120, 100, 40]);
	}
}

module yrs_noclamp() {
	difference() 
	{
		import("../stl/Y_Rod_Mount_2_off.stl");
		translate([-30, -50, -1]) cube([120, 100, 40]);
		translate([-100, -50, 4]) cube([120, 100, 40]);
	}
}