package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.d.a;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

abstract class aj
{
  private final Set<String> UW;
  private final String UX;
  
  public aj(String paramString, String... paramVarArgs)
  {
    this.UX = paramString;
    this.UW = new HashSet(paramVarArgs.length);
    int i = paramVarArgs.length;
    for (int j = 0; j < i; j++)
    {
      String str = paramVarArgs[j];
      this.UW.add(str);
    }
  }
  
  boolean a(Set<String> paramSet)
  {
    return paramSet.containsAll(this.UW);
  }
  
  public abstract boolean iy();
  
  public String jc()
  {
    return this.UX;
  }
  
  public Set<String> jd()
  {
    return this.UW;
  }
  
  public abstract d.a u(Map<String, d.a> paramMap);
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.tagmanager.aj
 * JD-Core Version:    0.7.0.1
 */