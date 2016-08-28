difference()
{
    union()
    {
        import("pegboardtoolholder.stl");

        start_support = -42;

        translate([-70, 10, 5])
        cube([140, 5, 10]);

        for (i = [0 : 1 : 2])
        {
            translate([start_support + i * 45, 15, 10])
            rotate([0, 0, 90])
            import("pegboard_support_cross.stl");
        }
        
      translate([-70, -12, 0])
      cube([140, 15, 5]);
    }
    
    translate([-70, -12, 5])
    cube([140, 15, 15]);
    
    for (i = [0 : 1 : 3])
    {
        translate([-50.5 + i * 34, -5, -20])
        cylinder(70, 6.2, 6);
    }
}