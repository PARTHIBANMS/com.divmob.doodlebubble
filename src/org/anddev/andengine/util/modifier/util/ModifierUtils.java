package org.anddev.andengine.util.modifier.util;

import org.anddev.andengine.util.modifier.IModifier;

public class ModifierUtils
{
  public static float getSequenceDurationOfModifier(IModifier<?>[] paramArrayOfIModifier)
  {
    float f = 1.4E-45F;
    for (int i = -1 + paramArrayOfIModifier.length;; i--)
    {
      if (i < 0) {
        return f;
      }
      f += paramArrayOfIModifier[i].getDuration();
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.modifier.util.ModifierUtils
 * JD-Core Version:    0.7.0.1
 */