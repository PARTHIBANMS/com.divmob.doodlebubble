package com.google.android.gms.tagmanager;

import java.util.Map;

class TagManager$1
  implements DataLayer.b
{
  TagManager$1(TagManager paramTagManager) {}
  
  public void v(Map<String, Object> paramMap)
  {
    Object localObject = paramMap.get("event");
    if (localObject != null) {
      TagManager.a(this.XC, localObject.toString());
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.tagmanager.TagManager.1
 * JD-Core Version:    0.7.0.1
 */