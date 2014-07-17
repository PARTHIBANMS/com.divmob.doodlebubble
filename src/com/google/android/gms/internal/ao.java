package com.google.android.gms.internal;

import java.util.Map;

public final class ao
  implements ar
{
  private final ap lV;
  
  public ao(ap paramap)
  {
    this.lV = paramap;
  }
  
  public void a(dd paramdd, Map<String, String> paramMap)
  {
    String str = (String)paramMap.get("name");
    if (str == null)
    {
      da.w("App event with no name parameter.");
      return;
    }
    this.lV.onAppEvent(str, (String)paramMap.get("info"));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ao
 * JD-Core Version:    0.7.0.1
 */