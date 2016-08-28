$fn = 50;

rotate([0, 30, 0])
difference()
{
    translate([110, 06.5, 40])
    import("mouse_bungee.stl");
    
    translate([100, 31.5, 107.5])
    rotate([0, 60, 0])
    cylinder(30, 1.9, 1.9);
    
    translate([13, 31.5, 57.5])
    rotate([0, 60, 0])
    cylinder(60, 1.9, 1.9);
}