DISPLAY_TOP_BOX = true;
DISPLAY_BOTTOM_BOX = false;
DISPLAY_NUT_JOINER = false;

CARD_SIZE_LONG_EDGE =86;
CARD_SIZE_SHORT_EDGE = 60;
CARD_STACK_HEIGHT = 25;
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
        
        $fn=100;
        translate([-5, 27, 14])
        rotate([0, 90, 0])
        cylinder(20, 3, 3);
        
        $fn = 100;
    translate([21, 5, 17.5])
    rotate([90, 0, 0])
    cylinder(10, 3.1, 3.1);
    
    translate([17.9, -5, 17])
    cube([6.2, 10, 70]);
        
        translate([1, 26.5, 8.2])
        cube([10, 1, 12]);
               
        translate([21, 7.54, 2])
        scale([0.30, 0.30, 0.6])
        import("../Common/threaded_rod_8x100.stl");
        
        translate([22.2, 55.8, 2])
        scale([0.30, 0.30, 0.6])
        import("../Common/threaded_rod_8x100.stl");
        
        translate([73, 40.5, 2])
        scale([0.30, 0.30, 0.6])
        import("../Common/threaded_rod_8x100.stl");
        
        translate([73, 12.6, 2])
        scale([0.30, 0.30, 0.6])
        import("../Common/threaded_rod_8x100.stl");
        
        translate([50, CARD_SIZE_SHORT_EDGE / 2 - 15 + WALL_THICKNESS, WALL_THICKNESS + CARD_STACK_HEIGHT - 14])
        cube([30, 30, 14]);
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

module wifi_logo() {
    translate([110, 34, -3.8])
    scale(100)
    rotate([0, 0, 90])
    import("logo_fm.stl");
};

module rf_text() {
    translate([125, 44, 1.2])
    rotate([0, 180, 90])
    linear_extrude(height=10)
    text("FM", 14, font="Liberation Sans:style=Bold");
}

module hole_power() {
    translate([95, 49.2, 6.3])
    cube([10, 9.5, 10.7]);

    translate([95, 17, 6])
    cube([10, 13, 11]);
    
    $fn=100;
    translate([95, 39.5, 10.5])
    rotate([0, 90, 0])
    cylinder(20, 3, 3);
    
    translate([95, 36.5, 11])
    cube([8, 6, 14]);
}

module segment_led() {
    translate([143, 10.3, -5])
    cube([17, 48, 15]);
    
    translate([142, 8.8, 1])
    cube([19, 51, 8]);
}

module potentiometer() {
    $fn=100;
    translate([181.5, 35, -5])
    cylinder(20, 7.8, 7.8);
}

module audio_jack() {
    $fn = 100;
    translate([102 + 21, 70, 10])
    rotate([90, 0, 0])
    cylinder(3.6, 6, 6);
    
    translate([102 + 17.9, 65, 6])
    cube([6.2, 10, 70]);
}

if (DISPLAY_TOP_BOX) {
    difference() {
        union() {
            top_box();
        }
        
        audio_jack();
        potentiometer();
        segment_led(); 
        wifi_logo();
        translate([0, 0, 5])
        hole_power();
        rf_text();
    }
}

if (DISPLAY_NUT_JOINER) {
    difference() {
        union() {
            translate([229, 51.5, 0])
            scale([0.30, 0.30, 0.6])
            import("../Common/bolt_25x8_socket.stl");
            
            translate([229, 30, 0])
            scale([0.30, 0.30, 0.6])
            import("../Common/bolt_25x8_socket.stl");
        }
    
        translate([220, 0, 7])
        cube([20, 80, 15]);
    }
}

   
//* End Top of Box