ArrayList<Particle> particles;
float radius;
float noise_value;

void setup()
{
  size(512, 512);
  frameRate(30);
  colorMode(HSB);
  
  particles = new ArrayList<Particle>();
  
  for(int i = 0; i < 25; i++)
  {
    particles.add(new Particle(new PVector(width / 2, height / 2), 20 + 10 * i, 30 * i, 0));
    particles.add(new Particle(new PVector(width / 2, height / 2), 20 + 10 * i, 120 + 30 * i, 85));
    particles.add(new Particle(new PVector(width / 2, height / 2), 20 + 10 * i, 240 + 30 * i, 170));
  }
}

void draw()
{
  background(0);
  noise_value += 0.05;
  
  for(Particle p : particles)
  {
    p.update();
    p.display();    
  }
  
  /*
  println(frameCount);
  saveFrame("screen-#####.png");
  if(frameCount > 3600)
  {
     exit();
  }
  */
}