// Hight of router is 14
height = 16;  // 2 depth 
removalHeight = height+31;
cylinderRadius = 15.25;
rectangerlWith = 
    cylinderRadius*2;
rectangerlLenght = 8;
tamplateWith = 100;
tamplateLenght = 80;
bracketsExtraHight = 15;
bracketsExtraWith = 30;
bracketsThicknes = 10;



difference() {
union(){    
translate([
    -tamplateWith/2,
    -tamplateLenght+
    rectangerlLenght,
    -height/2]) 
    cube(size = [
    tamplateWith,
    tamplateLenght,
    height]);

translate([
    -tamplateWith/2
    -bracketsExtraWith,
    +rectangerlLenght,
    -height/2]) 
    cube(size = [
    tamplateWith
    +bracketsExtraWith*2,
    bracketsThicknes,
    height
    +bracketsExtraHight]);
}
translate([
    -rectangerlWith/2,
    0,
    -removalHeight/2]) 
    cube(size = [
    rectangerlWith,
    rectangerlLenght+16,
    removalHeight]);

}
