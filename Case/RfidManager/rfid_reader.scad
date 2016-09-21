DISPLAY_TOP_BOX = true;
DISPLAY_BOTTOM_BOX = true;
DISPLAY_NUT_JOINER = true;

CARD_SIZE_LONG_EDGE =86;
CARD_SIZE_SHORT_EDGE = 60;
CARD_STACK_HEIGHT = 20;
WALL_THICKNESS = 2;
TAB_THICKNESS = 10;
EXTRA_SPACE = .25;


CARD_LONG_EDGE = CARD_SIZE_LONG_EDGE + (WALL_THICKNESS*2);
CARD_SHORT_EDGE = CARD_SIZE_SHORT_EDGE + (WALL_THICKNESS*2);
ALL_EXTRA_SPACE = (EXTRA_SPACE *2);

LID_OUTSIDE_LONG_THICKNESS = CARD_LONG_EDGE + (WALL_THICKNESS*2);
LID_OUTSIDE_SHORT_THICKNESS = CARD_SHORT_EDGE + (WALL_THICKNESS*2);

SPACE_BETWEEN_BOTTOM_AND_LID = LID_OUTSIDE_LONG_THICKNESS + (WALL_THICKNESS*2)+ 2;

HEIGHT = CARD_STACK_HEIGHT + WALL_THICKNESS;

	//*Start Bottom of Box
    

if (DISPLAY_BOTTOM_BOX) {
    difference() {
        union()
        {
            difference() 
            {
                union()
                {
                                    //*Start wedge 1
                translate ([((CARD_LONG_EDGE/2) -(TAB_THICKNESS/2)),-WALL_THICKNESS-EXTRA_SPACE,HEIGHT-WALL_THICKNESS-1-EXTRA_SPACE]) 

                difference (){
                cube ([TAB_THICKNESS,WALL_THICKNESS+EXTRA_SPACE,WALL_THICKNESS+EXTRA_SPACE]);
                translate ([0, WALL_THICKNESS+(EXTRA_SPACE),0]) rotate ([135,0,0])  

                cube ([(TAB_THICKNESS+3), sqrt(((WALL_THICKNESS+EXTRA_SPACE)*(WALL_THICKNESS+EXTRA_SPACE))+((WALL_THICKNESS+EXTRA_SPACE)*(WALL_THICKNESS+EXTRA_SPACE))), sqrt(((WALL_THICKNESS+EXTRA_SPACE)*(WALL_THICKNESS+EXTRA_SPACE))+((WALL_THICKNESS+EXTRA_SPACE)*(WALL_THICKNESS+EXTRA_SPACE)))]);

                }
                            //*end wedge 1


                            //*Start wedge 2
                translate ([((CARD_LONG_EDGE/2) - (TAB_THICKNESS/2)),CARD_SHORT_EDGE,HEIGHT-WALL_THICKNESS-1-EXTRA_SPACE])

                 difference (){
                cube ([TAB_THICKNESS,WALL_THICKNESS+EXTRA_SPACE,WALL_THICKNESS+EXTRA_SPACE]);

                translate ([0 ,0 ,0]) rotate ([-45,0,0])  cube ([(TAB_THICKNESS+3),sqrt(((WALL_THICKNESS+EXTRA_SPACE)*(WALL_THICKNESS+EXTRA_SPACE))+((WALL_THICKNESS+EXTRA_SPACE)*(WALL_THICKNESS+EXTRA_SPACE))),sqrt(((WALL_THICKNESS+EXTRA_SPACE)*(WALL_THICKNESS+EXTRA_SPACE))+((WALL_THICKNESS+EXTRA_SPACE)*(WALL_THICKNESS+EXTRA_SPACE)))]);
                }
                            //*end wedge 2


                translate ([((CARD_LONG_EDGE/2) -(TAB_THICKNESS/2)),-WALL_THICKNESS-EXTRA_SPACE,HEIGHT-1])  cube ([TAB_THICKNESS, WALL_THICKNESS+EXTRA_SPACE, 1]); 					//*Tab

                translate ([((CARD_LONG_EDGE/2) -(TAB_THICKNESS/2)),CARD_SHORT_EDGE,HEIGHT-1])  cube ([TAB_THICKNESS, WALL_THICKNESS+EXTRA_SPACE, 1]);				//*Tab

                translate ([-WALL_THICKNESS-EXTRA_SPACE, -WALL_THICKNESS-EXTRA_SPACE, 0 ]) cube ([CARD_LONG_EDGE + (WALL_THICKNESS*2)+ALL_EXTRA_SPACE, CARD_SHORT_EDGE + (WALL_THICKNESS*2)+ALL_EXTRA_SPACE, WALL_THICKNESS]);  						//*Bottom Plate

                difference() 
                {
                    cube ([CARD_LONG_EDGE,CARD_SHORT_EDGE,HEIGHT]);		//*Main Body



                    translate([WALL_THICKNESS,WALL_THICKNESS,WALL_THICKNESS]) cube ([CARD_LONG_EDGE - (WALL_THICKNESS*2),CARD_SHORT_EDGE - (WALL_THICKNESS*2),HEIGHT]);			//*Hole
                }
            }
                
                translate ([22, 56.4, 5.1])
                scale(1.07)
                import("../Common/arduino.stl");

                translate([-2, 7.8, 7])
                cube([20, 9.5, 10.7]);
            }
            
    //        translate ([0, 32, 18.5])
    //        cube([2, 20, 1]);

            translate ([7, 5, 8.6])
            import("../common/arduino_case_uno_bottom.stl");

        }

        translate([ ((CARD_LONG_EDGE / 2) + (TAB_THICKNESS/2)), -.5, ((HEIGHT+ WALL_THICKNESS) / 4) ]) cube ([2, CARD_SHORT_EDGE + 2, HEIGHT]);	//*Tab cutout

        translate([ ((CARD_LONG_EDGE / 2) - ((TAB_THICKNESS/2)+2)), -.5, ((HEIGHT+ WALL_THICKNESS)/ 4) ]) cube ([2, CARD_SHORT_EDGE + 2, HEIGHT ]);  //*Tab cutout
        
        translate([39, 2, 2.5])
        cube([12, 60, 12.7]);
    }
}

			//*End Bottom of Box



			//*Start Top of Box

module top_box() {
translate ([SPACE_BETWEEN_BOTTOM_AND_LID, 0, 0]) 
    difference() 
    {
        cube ([LID_OUTSIDE_LONG_THICKNESS+ALL_EXTRA_SPACE, LID_OUTSIDE_SHORT_THICKNESS+ALL_EXTRA_SPACE, HEIGHT]); 		//*Top Main Body


        translate([ ((LID_OUTSIDE_LONG_THICKNESS+ALL_EXTRA_SPACE) / 2)-((TAB_THICKNESS+1)/2), -.5, WALL_THICKNESS]) 
    cube ([(TAB_THICKNESS+1), LID_OUTSIDE_SHORT_THICKNESS + 2, WALL_THICKNESS+1.15 ]); 	//*Tab Hole

        translate([WALL_THICKNESS,WALL_THICKNESS, WALL_THICKNESS]) 
    cube ([LID_OUTSIDE_LONG_THICKNESS - (WALL_THICKNESS*2)+ALL_EXTRA_SPACE,LID_OUTSIDE_SHORT_THICKNESS - (WALL_THICKNESS*2)+ALL_EXTRA_SPACE,HEIGHT]);		//*Hole
    }
};

module rfid_logo() {
    scale(24)
    translate([4.8, 0.7, -0.05])
    rotate([0, 0, 90])
    import("logo_nfc.stl");
};

module nfc_text() {
    translate([170, 53, 1.2])
    rotate([0, 180, 90])
    linear_extrude(height=10)
    text("NFC", 14, font="Liberation Sans:style=Bold");
}

module hole_power() {
    translate([95, 49.2, 6.3])
    cube([10, 9.5, 10.7]);

    translate([95, 17, 6])
    cube([10, 13, 11]);
}

module bearing_module() {
    difference() {
        union() {
//            $fn=100;
//            translate([149, 17.5, 0])
//            cylinder(5, 1.5, 1.5);
            
            translate([149, 17.5, 0])
            scale([0.35, 0.35, 0.6])
            import("../Common/threaded_rod_8x100.stl");
            
//            translate([149, 51.5, 10])
//            cylinder(20, 1.5, 1.5);
            
            translate([149, 51.5, 0])
            scale([0.35, 0.35, 0.6])
            import("../Common/threaded_rod_8x100.stl");
        }
        
        translate([145, 11, 8])
        cube([10, 50, 300]);
    }

}

if (DISPLAY_TOP_BOX) {
    difference() {
        union() {
            top_box();
           bearing_module();
        }
        
        hole_power();
        nfc_text();
        rfid_logo();
    }
}

if (DISPLAY_NUT_JOINER) {
    translate([229, 51.5, 0])
    scale([0.35, 0.35, 0.6])
    import("../Common/NutJoiner18x9.stl");
    
    translate([229, 30, 0])
    scale([0.35, 0.35, 0.6])
    import("../Common/NutJoiner18x9.stl");
}

   
//* End Top of Box