difference()
{
    union()
    {
        scale(2.2)
        import("Bulbasaur_Planter.STL");

        translate([0, 17, 13])
        cylinder (r1=19, r2=25, h=35);
        
        translate([0, 14, 5])
        cylinder (r1=15, r2=22, h=14);

        translate([0, 36, 20])
        cube([40, 16, 40], center=true);
            
        translate([0, 44, 40])
        rotate([90, 0, 0])
        cylinder(r=10, h=3);
            
        translate([20, 44, 12])
        rotate([90, 0, 0])
        cylinder(r=10, h=3);
            
        translate([-20, 44, 12])
        rotate([90, 0, 0])
        cylinder(r=10, h=3);
    }
    
    translate([0, 17, 15])
    cylinder (r1=19, r2=25, h=40);

    translate([0, 45, 40])
    rotate([90, 0, 0])
    cylinder(r=8, h=3);

    translate([20, 45, 12])
    rotate([90, 0, 0])
    cylinder(r=8, h=3);

    translate([-20, 45, 12])
    rotate([90, 0, 0])
    cylinder(r=8, h=3);

    hull()
    {
        translate([0, 45, 23])
        rotate([90, 0, 0])
        cylinder(r=7, h=3);
        translate([0, 45, 11])
        rotate([90, 0, 0])
        cylinder(r=7, h=3);
    }
    
    rotate([180, 0, 0])
    translate([-24, -25, -2])
    linear_extrude(height=4)
    text("TA MERE", 8);
}