height = 50;
larg = 20;
crochet = 20;
size = 6;

union()
{
    cube([size, size, height]);
    translate([size / 2 + 2.5, size, 10])
            rotate([0, 0, 90])
            import("pegboard_support_cross.stl");
    
    translate([0, -larg, 0])
    cube([size, larg, size]);
    
    translate([0, -larg, size])
    cube([size, size, crochet]);
}