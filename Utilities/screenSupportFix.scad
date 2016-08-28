height = 11;
step = 3;
long = 30;
larg = 4;

union()
{
    for (i = [0 : 1 : step - 1])
    {
        translate([0, larg * i, 0])
        cube([long, larg, height + i]);
    }
}