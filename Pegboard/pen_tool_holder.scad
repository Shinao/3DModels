
union()
{
    scale(0.75)
    import("pen_tool_holder_3_fixed.stl");

 for (i = [0 : 1 : 1])
    {
        translate([-40 + i * 45, 127.2, 15])
            rotate([0, 0, 90])
            import("pegboard_support_cross.stl");
    }
}