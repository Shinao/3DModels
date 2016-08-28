height = 50;
larg = 20;
crochet = 20;
size = 6;

union()
{
    cube([size, size, height]);
    translate([size / 2, 10, 44])
            rotate([90, 0, 0])
            import("pegsupport.stl");
    
    translate([size / 2, 10, 42.5 - 12 * 3])
            rotate([90, 0, 0])
            import("pegsupport.stl");
    
    translate([0, -larg, 0])
    cube([size, larg, size]);
    
    translate([0, -larg, size])
    cube([size, size, crochet]);
}