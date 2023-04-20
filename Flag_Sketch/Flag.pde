class Flag 
{
  int xpos = 250;
  int ypos = 250;
  int moveDirectionX = 1;
  int moveDirectionY = 1;
  
  Flag(int x, int y)
  {
    xpos = x;
    ypos = y;
  }
  
    int[] rectColors = new int[6];
    {
      rectColors[0] = 0;
      rectColors[1] = 40;
      rectColors[2] = 100;
      rectColors[3] = 130;
      rectColors[4] = 180;
      rectColors[5] = 220;
    }
    
    int[][] triangleColors = {
      new int[] {0,0,0},
      new int[] {20, 255, 130},
      new int[] {220, 130, 255},
      new int[] {40, 255, 255},
                              };
  void create()
  {
    //x & y = 250
    int h = 0;
    int s = 0;
    int b = 0;
    
    for(int i = 1; i <= 6; i ++)
    {
       fill(rectColors[i - 1], 255, 255);
       rect(xpos, ypos + (i* 10), 120, 10);
    }
    for(int a = 0; a < 4; a++)
    {
      h = triangleColors[a][0];
      s = triangleColors[a][1];
      b = triangleColors[a][2];
      fill(h,s,b);
      triangle(xpos, (ypos + 10) + (a * 8), xpos, (ypos + 70) - (a * 8), (xpos + 70) - (a * 10), ypos + 40);
    }
  }
  
  void move()
  {
    if (xpos == 380 || xpos == 0)
    {
      moveDirectionX = moveDirectionX * -1;
    }
    if (ypos == 440 || ypos == 0)
    {
      moveDirectionY = moveDirectionY * -1;
    }
    xpos += moveDirectionX;
    ypos += moveDirectionY;
  }
  
  
}
