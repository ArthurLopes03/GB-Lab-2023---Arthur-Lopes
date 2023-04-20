class Flag 
{
  Flag()
  {
    colors[0] = 0;
    colors[1] = 40;
    colors[2] = 100;
    colors[3] = 130;
    colors[4] = 180;
    colors[5] = 220;
  }
  
    int[] colors = new int[6];
    
  void create()
  {
    for(int i = 1; i <= 6; i ++)
    {
       fill(colors[i - 1], 255, 255);
       rect(250, 250 + (i* 10), 120, 10);
    }
  }
  
  
}
