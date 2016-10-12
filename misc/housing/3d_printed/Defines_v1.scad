/* spacing between the leds
 * usually around 12, can be forced
 * to 6-10 by bending strip
 */
space = 6;  

/* some space for the outermost leds
 * for better viewing angle
 */
margin = 10;

/* 15 leds (type 5050) with above spacing */
width = 15 * (5 + space) + 10 + 2 * margin;

/* box height, min. 42mm */
height = 47;

/* box depth, min 100mm for 4x3-keypad */
depth = 105;

/* max wall thickness */
thick=10;

/* grade of feet smoothness
 * below 10 looks bad
 * 10-16 is reasonable
 * above 16 takes much time to render
 */
grade = 12;

/* length of side stands 
 * should be enough to get box in right angle
 * should not exceed back of box
 */
stand = min(height + 20, depth - 40);

/* offset of usb plug from center */
usb_offs = 60;

/* calculated values */
bwidth = width + 14;
bheight = depth + 7;

/* size of led holes 
 * includes some margin for 5050 leds
 */
led = 5.75;

minimal = 1;