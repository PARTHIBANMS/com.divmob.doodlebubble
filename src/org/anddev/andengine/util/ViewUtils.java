package org.anddev.andengine.util;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

public class ViewUtils
{
  public static View inflate(Context paramContext, int paramInt)
  {
    return LayoutInflater.from(paramContext).inflate(paramInt, null);
  }
  
  public static View inflate(Context paramContext, int paramInt, ViewGroup paramViewGroup)
  {
    return LayoutInflater.from(paramContext).inflate(paramInt, paramViewGroup, true);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.ViewUtils
 * JD-Core Version:    0.7.0.1
 */