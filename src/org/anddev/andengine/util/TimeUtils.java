package org.anddev.andengine.util;

import org.anddev.andengine.util.constants.TimeConstants;

public class TimeUtils
  implements TimeConstants
{
  public static String formatSeconds(int paramInt)
  {
    return formatSeconds(paramInt, new StringBuilder());
  }
  
  public static String formatSeconds(int paramInt, StringBuilder paramStringBuilder)
  {
    int i = paramInt / 60;
    int j = paramInt % 60;
    paramStringBuilder.append(i);
    paramStringBuilder.append(':');
    if (j < 10) {
      paramStringBuilder.append('0');
    }
    paramStringBuilder.append(j);
    return paramStringBuilder.toString();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.TimeUtils
 * JD-Core Version:    0.7.0.1
 */