//creating a simple game with 3 game states: pregame, game, game over
//click the mouse to advance the states

String state= "pregame";

void setup() {
  size (500, 500);
  textAlign(CENTER);
  textSize(36);
}


void draw() {
  if (state=="pregame") {
    background(0);
    text("click to start the game", width/2, height/2);
  } else if (state=="game") {
    background(0, 0, 255);
    text("what a fun game.", width/2, height/2);
    text("click again.", width/2, height/2+50);
  } else if (state=="game over") {
    background(255, 0, 0);
    text("everyone loses.", width/2, height/2);
    text("click to play again.", width/2, height/2 + 50);
  }
  println(state);
}


void mousePressed() {
  if (state== "pregame") {
    state="game";
  } else if (state=="game") {
    state= "game over";
  } else if (state=="game over") {
    state= "pregame";
  }
}
