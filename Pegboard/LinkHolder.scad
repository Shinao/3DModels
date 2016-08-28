import("C:/Users/Shinao/Desktop/3d printing/pegboard/WBmarkerHolder.STL");

translate([2, 4, 1])
cube([15, 130, 4]);

for (i = [0 : 1 : 1])
{
    translate([5, 40 + i * 50, 1])
    rotate([0, 90, 0])
    import("C:/Users/Shinao/Desktop/3d printing/pegboard/pegboard_support_cross.stl");
}