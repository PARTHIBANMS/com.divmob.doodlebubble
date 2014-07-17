package org.anddev.andengine.util;

import java.util.ArrayList;

public class ListUtils
{
  public static <T> ArrayList<? extends T> toList(T paramT)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramT);
    return localArrayList;
  }
  
  public static <T> ArrayList<? extends T> toList(T... paramVarArgs)
  {
    ArrayList localArrayList = new ArrayList();
    int i = paramVarArgs.length;
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return localArrayList;
      }
      localArrayList.add(paramVarArgs[j]);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.ListUtils
 * JD-Core Version:    0.7.0.1
 */