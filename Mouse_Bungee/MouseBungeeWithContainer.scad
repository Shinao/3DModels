$fn = 50;
border = 3;

difference()
{
    union()
    {
        difference()
        {
            union()
            {
                difference()
                {
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
                }
            }

        }

        rotate([0, 30, 0])
        translate([10, 6, 40])
        cube([100, 16, 20]);

        rotate([0, 30, 0])
        translate([10, 41, 40])
        cube([100, 16, 20]);

        rotate([0, 30, 0])
        translate([35, 22, 40])
        cube([75, 19, 20]);

    }
    
    rotate([0, 30, 0])
    translate([10 + border, 6 + border, 40 + border])
    cube([100 - border * 2, 16 - border * 2, 20]);

    rotate([0, 30, 0])
    translate([10 + border, 41 + border, 40 + border])
    cube([100 - border * 2, 16 - border * 2, 20]);

    rotate([0, 30, 0])
    translate([35 + border, 15, 40 + border])
    cube([75 - border * 2, 30, 20]);
}
