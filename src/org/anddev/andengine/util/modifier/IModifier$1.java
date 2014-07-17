package org.anddev.andengine.util.modifier;

import java.util.Comparator;

class IModifier$1
  implements Comparator<IModifier<?>>
{
  public int compare(IModifier<?> paramIModifier1, IModifier<?> paramIModifier2)
  {
    float f1 = paramIModifier1.getDuration();
    float f2 = paramIModifier2.getDuration();
    if (f1 < f2) {
      return 1;
    }
    if (f1 > f2) {
      return -1;
    }
    return 0;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.IModifier.1
 * JD-Core Version:    0.7.0.1
 */