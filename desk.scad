/* List of meterials

# Done
2* speakerWidth
    *speakerLength
1* amplifierLength
    *amplifierWidth
4* speakerHeight
    *speakerLength,
    (328*350)
2* topWidth
    *topLength,
    (1002*360)
    
# Not done

*/

oakThicknes = 28;
speakerWidth = 200;
speakerHeight = 300
    +oakThicknes;
speakerLength = 350; 
amplifierWidth = 450;
amplifierHeight = 160;
amplifierLength = speakerLength;
topExtensionWidth = 20;
topExtensionLength = 10;
topWidth = speakerWidth*2 
    + amplifierWidth
    + oakThicknes*4
    + topExtensionWidth*2;
topLength = speakerLength
    +topExtensionLength;
wallmountWith = 69;
wallmountLength = speakerWidth*2 
    + amplifierWidth
    + oakThicknes*2;

// speaker box 1 left side 
cube(size = [oakThicknes,
    speakerLength,
    speakerHeight]);

// speaker box 1 right side 
translate([
    oakThicknes+speakerWidth,
    0,
    0]) 
    cube(size = [oakThicknes,
    speakerLength,
    speakerHeight]);

// speaker box 1 bottom 
translate([
    oakThicknes,
    0,
    0]) 
    cube(size = [speakerWidth,
    speakerLength,
    oakThicknes]);
    
// speaker box 2 left side 
translate([     
    oakThicknes*2+speakerWidth
    +amplifierWidth,
    0,
    0]) 
    cube(size = [oakThicknes,
    speakerLength,
    speakerHeight]);
    
// speaker box 2 right side 
translate([     
    oakThicknes*3+speakerWidth*2
    +amplifierWidth,
    0,
    0]) 
    cube(size = [oakThicknes,
    speakerLength,
    speakerHeight]);

// speaker box 2 bottom 
translate([
    oakThicknes*3+speakerWidth
    +amplifierWidth,
    0,
    0]) 
    cube(size = [speakerWidth,
    speakerLength,
    oakThicknes]);
    
// amplifier shelf
translate([
    oakThicknes*2+speakerWidth,
    0,
    speakerHeight-oakThicknes
    -amplifierHeight]) 
    cube(size = [amplifierWidth,
    amplifierLength,
    oakThicknes]);
    
// table top
translate([
    -topExtensionWidth,
    -topExtensionLength,
    speakerHeight]) 
    cube(size = [topWidth,
    topLength,
    oakThicknes]);


// table top foldebal
translate([
    -topExtensionWidth,
    -topExtensionLength,
    oakThicknes+speakerHeight]) 
    cube(size = [topWidth,
    topLength,
    oakThicknes]);
/*
// table top folded
translate([
    -topExtensionWidth,
    -topLength
    -topExtensionLength,
    speakerHeight]) 
    cube(size = [topWidth,
    topLength,
    oakThicknes]);
*/
// wallmount
translate([
    oakThicknes,
    speakerLength-oakThicknes,
    speakerHeight-wallmountWith]) 
    cube(size = [
    wallmountLength,
    oakThicknes,
    wallmountWith]);
