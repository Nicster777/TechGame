randomize();
var sh = (room_height/2) - irandom(room_height/3);
sh = (sh/32)*32

var startingRoom = argument0;
var endingRoom = argument0 + 1600;

var ah = sh

var surface;
var dirtLevel;
var stoneLevel;
var l;

for (xx = startingRoom; xx < endingRoom; xx += 32)
{
    instance_create(xx,ah,oGrass);

    dirtLevel = ((room_height-ah)/32)*32;
    stoneLevel = ((room_height)/32)*32

    // dirt level
    for (yy = ah; yy < dirtLevel; yy += 32)
    {
        instance_create(xx,yy,oDirt);
        l = yy;
    }

    // stone level
    for (yy = l; yy < stoneLevel; yy += 32)
    {
        if (yy >= ah)
        instance_create(xx,yy,oStone);
    }

    ah += choose(32,-32,0);
}

return endingRoom;



