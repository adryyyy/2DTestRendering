int LEVEL=0;
int currentScreen=1;
void setup() {
  fullScreen();
  orientation(LANDSCAPE);
  frameRate(1024);

}

void draw() {
  if (currentScreen==1) {initScreen();}
  else if (currentScreen==2) {main();} 
  }
  void initScreen(){
    fill(255);
    background(#650274);
    textSize(height/50);
    textAlign(CENTER);
    text("Click to start this OpenGL 2D rendering test based on 10 levels. By Adryyyy", width/2, height/2);
    }
  void main(){
    background(#650274);
  fill(random(255), random(255), random(255));
  stroke(random(255), random(255), random(255));
  Test();
  FPS();
  LEVEL();
  }
  void FPS() {
    fill(0);
    textSize(height/50);
  text("FPS:"+frameRate, 10, 20);
  }
    void LEVEL() {
  text("Level "+LEVEL, (height/50)*8, 20);
  println("LEVEL "+LEVEL+" REACHED AT "+frameRate+"FPS");
  }
    public void mousePressed() {
      LEVEL=LEVEL+1;
      if (currentScreen==1) {currentScreen=2;}
      }
