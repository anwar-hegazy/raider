difference(){
hull(){
	translate([-14,0])cylinder(r=3.7,h=1.2,$fn=30);
	translate([0,0,0])cylinder(r=3.7,h=1.2,$fn=30);
}
translate([-14,0,-1])cylinder(r=1,h=4,$fn=10);
translate([0,0,-1])cylinder(r=1,h=4,$fn=10);
translate([-7,0,-1])cylinder(r=2,h=4,$fn=30);
translate([-7-1.3,0,-0.5])cube([2.6,4,3]);
}