$fn=100;

CAN_TURN_SUPPORT = false;

size_pegboard = 0.8;
size_hole = 4.4;

translate([size_pegboard, 0, 0])
union()
{
    translate([0, -2.5, 2.5])
    cube([5, 10, 5]);
    
    cube([5, 5, 10]);
    
    if (CAN_TURN_SUPPORT)
    {
        rotate([90, 0, 90])
        translate([2.5, 5, -size_pegboard])
        cylinder(size_pegboard, size_hole / 2, size_hole / 2);
    }
    else
    {
        translate([-size_pegboard, 0.3, (10 - size_hole * 2) / 2])
        cube([size_pegboard, size_hole, size_hole * 2]);
    }
}