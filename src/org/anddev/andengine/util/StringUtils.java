package org.anddev.andengine.util;

public class StringUtils
{
  public static int countOccurrences(String paramString, char paramChar)
  {
    int i = 0;
    for (int j = paramString.indexOf(paramChar, 0);; j = paramString.indexOf(paramChar, j + 1))
    {
      if (j == -1) {
        return i;
      }
      i++;
    }
  }
  
  public static String padFront(String paramString, char paramChar, int paramInt)
  {
    int i = paramInt - paramString.length();
    if (i <= 0) {
      return paramString;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    for (int j = i - 1;; j--)
    {
      if (j < 0)
      {
        localStringBuilder.append(paramString);
        return localStringBuilder.toString();
      }
      localStringBuilder.append(paramChar);
    }
  }
  
  public static String[] split(String paramString, char paramChar)
  {
    return split(paramString, paramChar, null);
  }
  
  public static String[] split(String paramString, char paramChar, String[] paramArrayOfString)
  {
    int i = 0;
    int j = 1 + countOccurrences(paramString, paramChar);
    int k;
    if ((paramArrayOfString != null) && (paramArrayOfString.length == j))
    {
      k = 1;
      if (k == 0) {
        break label47;
      }
    }
    for (;;)
    {
      if (j != 0) {
        break label56;
      }
      paramArrayOfString[0] = paramString;
      return paramArrayOfString;
      k = 0;
      break;
      label47:
      paramArrayOfString = new String[j];
    }
    label56:
    int m = 0;
    for (;;)
    {
      if (i >= j - 1)
      {
        paramArrayOfString[(j - 1)] = paramString.substring(m, paramString.length());
        return paramArrayOfString;
      }
      int n = paramString.indexOf(paramChar, m);
      paramArrayOfString[i] = paramString.substring(m, n);
      m = n + 1;
      i++;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.StringUtils
 * JD-Core Version:    0.7.0.1
 */