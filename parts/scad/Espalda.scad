use <raid3r/raid3r.scad>

module beagleboneHoles(z){

translate([0,0,-1])cylinder(r=1.8,h=z, $fn=8);
translate([0,46.5,-1])cylinder(r=1.8,h=z, $fn=8);
translate([64.5,2.5,-1])cylinder(r=1.8,h=z, $fn=8);
translate([64.5,44,-1])cylinder(r=1.8,h=z, $fn=8);


}

union(){
	difference(){
		translate([-51,0,0])cube([102,64,1.5]);

		translate([-10-51,-12,-5])rotate([0,0,-20])cube([20,20,80]);
		mirror([1,0,0])translate([-10-51,-12,-5])rotate([0,0,-20])cube([20,20,80]);
		translate([78/2,26,0])agujereado(3,1,6);
		mirror([1,0,0])translate([78/2,26,0])agujereado(3,1,6);
		translate([-11,50,-1])cube([24,6,25]);
		translate([16-51,8+6.5/2,0])beagleboneHoles(5);
	}
	translate([30,64,0])cube([10,2,6]);
	mirror([1,0,0])translate([30,64,0])cube([10,2,6]);
}

translate([-44,20,0])difference(){
translate([33,27,0])cube([24,3,25]);
translate([37,20,20])rotate([-90,0,0])union(){
cylinder(r=1.5, h=100,$fn=10);
translate([16,0,0])cylinder(r=1.5, h=100,$fn=10);
}}

