height = 10;  // 2 depth 
removalHeight = height+1;
cylinderRadius = 15;
rectangerlWith = 
    cylinderRadius*2;
rectangerlLenght = 17;
tamplateWith = 150;
tamplateLenght = 100;

/*
difference()  {cube(12, center=true); sphere(8);} //
*/

difference() {
translate([
    -tamplateWith/2,
    -tamplateLenght+
    rectangerlLenght,
    -height/2]) 
    cube(size = [
    tamplateWith,
    tamplateLenght,
    height]);
    
union(){
translate([
    -rectangerlWith/2,
    0,
    -removalHeight/2]) 
    cube(size = [
    rectangerlWith,
    rectangerlLenght+1,
    removalHeight]);
    
cylinder(
    h = removalHeight, 
    r = cylinderRadius,
    center = true);
}
}
