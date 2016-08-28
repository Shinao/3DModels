union()
{
    start_support = -49;
    hole_size = 10;
    ratio_hole_desc = 1;

    translate([-70, 10, 5])
    cube([80, 5, 20]);

    for (i = [0 : 1 : 1])
    {
        translate([start_support + i * 45, 15, 10])
        rotate([0, 0, 90])
        import("pegboard_support_cross.stl");
    }

    for (i = [0 : 1 : 2])
    {
        translate([-65.5 + i * 30, 5, 7.5])
        cube([10, 5, 15]);
        
        
        ratio_hole_desc = i == 2 ? 0.8 : 1;
        
        difference()
        {
            translate([-60.5 + i * 30, -1 + i * 1, 5])
            cylinder(20, hole_size / 2 + 3 - i * ratio_hole_desc, hole_size / 2 + 3 - i * ratio_hole_desc);
        
            translate([-60.5 + i * 30, -1 + i * 1, 0])
            cylinder(30, hole_size / 2 - i * ratio_hole_desc, hole_size / 2 - i * ratio_hole_desc);
        }
    }
}