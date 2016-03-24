width = 30;
height = 6.31;
depth = 8;
n = 4;

module teeth() {
	for (i = [0:15]) {
		translate([i*sqrt(2)*height, 0, 0]){
			rotate(45,[0,45,0]){
				cube([height,depth,height]);
		}		
		}
	}
}
echo(15*sqrt(2)*height);
union() {
teeth();
cube([16*sqrt(2)*height, depth, height]);
}