$fn=250;


difference() {
    
    cylinder(1.5, 11, 11);
    translate([0, 0, 1.1])
    cylinder(3, 10, 10);
}

translate([0, 0, 0])
import("C:/Users/Shinao/Desktop/3d printing/Utilities/Logo_r.stl");