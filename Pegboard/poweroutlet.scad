height = 45;
long = 56;
border = 5;

difference()
{
    union()
    {
        difference()
        {
            translate([0, -52, 0])
            cube([30, long + border * 2, height + border * 2]);
            translate([-border, -52 + border, border])
            cube([50, long, height]);
        }
        
        translate([25 / 2 - border, -long / 2 + 5, 0])
        rotate([0, 90, 0])
        import("pegboard_support_cross.stl");
    }
    
    translate([3, -57, border])
    cube([3, long * 2, height]);
    
    translate([13.5, -57, border])
    cube([3, long * 2, height]);
    
    translate([23, -57, border])
    cube([3, long * 2, height]);
}