height = 43;
long = 60;
border = 5;
space = 2;
size = 2;

difference()
{
    union()
    {
        cube([size, height, long + border]);
        translate([0, -border, long + border])
        cube([size, height + border * 2, 3]);
    }
    
    translate([-2, (height - height / space) / 2, -5])
    cube([10, height / space, long + border / 2]);
}