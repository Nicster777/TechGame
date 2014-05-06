#define generateChunk
MaxHeight = argument0
MinHeight = argument1
stone = argument2
dirt = argument3


if x< room_width
{
for
  (i=0;i<room_height-y;i+=32)
{
b=dirt
instance_create(x,y,b)
instance_create(x,y+i,stone)
}

{
x+=32
y+=4*round(random(1))*choose(MaxHeight, MinHeight);
}};



