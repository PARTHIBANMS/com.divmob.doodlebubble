package com.divmob.maegame.f.c;

import java.util.ArrayList;

public class a
  extends ArrayList<b>
{
  private static final long serialVersionUID = 1L;
  
  public void a(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > -1 + size())) {
      paramInt = 0;
    }
    ((b)get(paramInt)).c();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.f.c.a
 * JD-Core Version:    0.7.0.1
 */