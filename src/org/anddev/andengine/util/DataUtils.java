package org.anddev.andengine.util;

import org.anddev.andengine.util.constants.DataConstants;

public class DataUtils
  implements DataConstants
{
  public static int unsignedByteToInt(byte paramByte)
  {
    return paramByte & 0xFF;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.DataUtils
 * JD-Core Version:    0.7.0.1
 */