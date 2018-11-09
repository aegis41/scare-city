/// Creating a new Person object
// You can write your code in this editor

image_blend = make_color_rgb(irandom(255), irandom(255), irandom(255));

walkingSpeed = irandom_range(5,10);
xDirection = choose(-1,1);
yDirection = choose(-1,1);
fearLevel = 0;
fearTolerance = irandom_range(3, 10);
afraid = false;
stepCount = 0;