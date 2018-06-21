
color randomArtDecoColor(){
  
  color[] colors = {
    color(239, 62, 91),
    color(242, 98, 121),
    color(246, 143, 160),
    color(75, 37, 109),
    color(111, 84, 149),
    color(160, 158, 214),
    color(63, 100, 126),
    color(104, 143, 173),
    color(159, 193, 211),
    color(0, 176, 178),
    color(82, 204, 206),
    color(149, 212, 122),
    color(103, 124, 138),
    color(178, 162, 150),
    color(201, 201, 201)
  };
  
  return colors[int(random(15))]; 
}
