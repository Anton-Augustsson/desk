// Milling Template 
// Finger Grip

oakTthickness = 21;
routerHight = 20;
fingerDepth = 14;
height      = 18;
routerWidth = 12;
with        = routerWidth+2;
lenght      = 18;

distanceFromEdge  = 15;
tamplateWith      = 31+30*2;
tamplateLenght    = 80;
bracketsThickness = 10;
bracketsHight = height
                +oakTthickness
                -4;
extraRemoval  = 1;


difference() {
union(){
translate([
    -tamplateWith/2,
    -distanceFromEdge, 
    0]) 
    cube(size = [
    tamplateWith,
    tamplateLenght,
    height]);
    
translate([
    -tamplateWith/2,
    -distanceFromEdge
    -bracketsThickness,
    0]) 
    cube(size = [
    tamplateWith,
    bracketsThickness,
    bracketsHight]);
}

union(){  // removal finger
translate([
    -(lenght/2
    -with/2),
    -with/2,
    -extraRemoval]) 
    cube(size = [
    lenght-with,
    with,
    height+extraRemoval*2]);
    
translate([
    -(lenght/2
    -with/2),
    0,
    -extraRemoval]) 
    cylinder(
    h = height+extraRemoval*2, 
    r = with/2);

translate([
    +(lenght/2
    -with/2),
    0,
    -extraRemoval]) 
    cylinder(
    h = height+extraRemoval*2, 
    r = with/2);
}
}
 