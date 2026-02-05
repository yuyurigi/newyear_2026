import hype.*;
import hype.extended.colorist.HColorPool;
import java.util.Calendar;

HColorPool colors;
HShape     s0, s1, s2, s3, s4, s5, s6, s7, s8;
float padding = 70;
float width2, height2;
float width3, width6, height3, height6;
PVector pos0, pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8;
float sw = 10; //線の太さ
float sc = 0.4; //スケール

void setup() {
  size(800,800);
  colorMode(RGB, 255, 255, 255, 100);
  H.init(this).background(color(237, 237, 239, 100));
  frameRate(3);
  
  colors = new HColorPool(color(55, 93, 167, 80), color(234, 94, 144, 80), color(180, 223, 211, 80), color(243,115,54,80), color(253,185,49,80), color(246,208,189,80), color(244, 186, 213, 80));
  
  width3 = (width-padding*2)/3;
  width6 = (width-padding*2)/6;
  height3 = (height-padding*2)/3;
  height6 = (height-padding*2)/6;
  PVector pos0 = new PVector(padding+width6, padding+height6);
  PVector pos1 = new PVector(pos0.x+width3, pos0.y);
  PVector pos2 = new PVector(pos1.x+width3, pos0.y);
  PVector pos3 = new PVector(pos0.x, pos0.y+height3);
  PVector pos4 = new PVector(pos1.x, pos3.y);
  PVector pos5 = new PVector(pos2.x, pos3.y);
  PVector pos6 = new PVector(pos0.x, pos3.y+height3);
  PVector pos7 = new PVector(pos1.x, pos6.y);
  PVector pos8 = new PVector(pos2.x, pos6.y);

  H.add(s0 = new HShape("0.svg")).scale(sc).strokeWeight(sw).anchorAt(H.CENTER).loc(pos0).strokeJoin(ROUND);
  H.add(s1 = new HShape("1.svg")).scale(sc).strokeWeight(sw).anchorAt(H.CENTER).loc(pos1).strokeJoin(ROUND);
  H.add(s2 = new HShape("2.svg")).scale(sc).strokeWeight(sw).anchorAt(H.CENTER).loc(pos2).strokeJoin(ROUND);
  H.add(s3 = new HShape("3.svg")).scale(sc).strokeWeight(sw).anchorAt(H.CENTER).loc(pos3).strokeJoin(ROUND);
  H.add(s4 = new HShape("4.svg")).scale(sc*1.2).strokeWeight(sw).anchorAt(H.CENTER).loc(pos4).strokeJoin(ROUND);
  H.add(s5 = new HShape("5.svg")).scale(sc).strokeWeight(sw).anchorAt(H.CENTER).loc(pos5).strokeJoin(ROUND);
  H.add(s6 = new HShape("6.svg")).scale(sc).strokeWeight(sw).anchorAt(H.CENTER).loc(pos6).strokeJoin(ROUND);
  H.add(s7 = new HShape("7.svg")).scale(sc).strokeWeight(sw).anchorAt(H.CENTER).loc(pos7).strokeJoin(ROUND);
  H.add(s8 = new HShape("8.svg")).scale(sc).strokeWeight(sw).anchorAt(H.CENTER).loc(pos8).strokeJoin(ROUND);
 
  s0.randomColors(colors.fillAndStroke());
  s1.randomColors(colors.fillAndStroke());
  s2.randomColors(colors.fillAndStroke());
  s3.randomColors(colors.fillAndStroke());
  s4.randomColors(colors.fillAndStroke());
  s5.randomColors(colors.fillAndStroke());
  s6.randomColors(colors.fillAndStroke());
  s7.randomColors(colors.fillAndStroke());
  s8.randomColors(colors.fillAndStroke());
  
  }

void draw() {
  s0.randomColors(colors.fillAndStroke());
  s1.randomColors(colors.fillAndStroke());
  s2.randomColors(colors.fillAndStroke());
  s3.randomColors(colors.fillAndStroke());
  s4.randomColors(colors.fillAndStroke());
  s5.randomColors(colors.fillAndStroke());
  s6.randomColors(colors.fillAndStroke());
  s7.randomColors(colors.fillAndStroke());
  s8.randomColors(colors.fillAndStroke());
  
  
  H.drawStage();
}

void keyReleased(){
  if(key == 's' || key == 'S')saveFrame(timestamp()+"_####.png");
}


String timestamp(){
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}
