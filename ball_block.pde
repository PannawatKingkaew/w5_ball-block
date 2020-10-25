Block[] blocks;
Ball[] balls;

int amount = 10;
int size = 10;
int posX = 50;
int posY = 50;

int blockWidth = 50;
int blockHeight = 50;

void setup()
{
 size(600,600);
 blocks = new Block[amount]; 
 balls =new Ball[amount]; 
}

void draw()
{
 for(int i = 0; i < blocks.length; i++)
 {     
  int tmpBallX = posX + (i * (size*5));
  balls[i] = new Ball(size, tmpBallX, posY + blockHeight);
  balls[i].draw(); 
    
  int tmpBlockX = posX + (i * blockWidth ); 
  blocks[i] =  new Block(tmpBlockX, posY, blockWidth, blockHeight); 
  blocks[i].draw(); 
 }
}

class Ball
{
   float size;
 
   int position_x;
   int position_y;
 
   Ball(float s, int posX, int posY)
   {
    size = s;
    position_x = posX;
    position_y = posY;
   }
 
   void draw()
   {
    size = 2 * size; 
    fill(255);
    ellipse(position_x, position_y, size, size);
   }
}

class Block
{
 int posX;
 int posY;
 int blockWidth;
 int blockHeight;
 Block(int x, int y, int bW, int bH)
 {
  posX = x;
  posY = y;
  blockWidth = bW;
  blockHeight = bH;
 }
 
 void draw()
 {
  fill(255);
  rectMode(CENTER);
  rect(posX, posY, blockWidth, blockHeight);  
 }
}
