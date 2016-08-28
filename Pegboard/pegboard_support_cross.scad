$fn=50;

size_pegboard=0.8;
size_hole=4.4;

translate([size_pegboard, 0, 0])
union()
{
    translate([0, -2.5, 2.5])
    cube([5, 10, 5]);
    
    cube([5, 5, 10]);
    
    rotate([90, 0, 90])
    translate([2.5, 5, -size_pegboard])
    cylinder(size_pegboard, size_hole / 2, size_hole / 2);
}