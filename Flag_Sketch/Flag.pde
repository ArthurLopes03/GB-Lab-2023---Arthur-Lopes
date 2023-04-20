class Flag 
{
  Flag()
  {
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
    int h = 0;
    int s = 0;
    int b = 0;
    for(int a = 0; a < 4; a++)
    {
      h = triangleColors[a][0];
      s = triangleColors[a][1];
      b = triangleColors[a][2];
      fill(h,s,b);
      triangle(250, 250 + (a * 8), 250, 310 - (a * 8), 370 - (a * 10), 280);
    }
    
    for(int i = 1; i <= 6; i ++)
    {
       fill(rectColors[i - 1], 255, 255);
       rect(250, 250 + (i* 10), 120, 10);
    }
  }
  
  
}
