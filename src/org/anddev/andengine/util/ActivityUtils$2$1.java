package org.anddev.andengine.util;

import org.anddev.andengine.util.progress.IProgressListener;

class ActivityUtils$2$1
  implements IProgressListener
{
  ActivityUtils$2$1(ActivityUtils.2 param2) {}
  
  public void onProgressChanged(int paramInt)
  {
    ActivityUtils.2 local2 = this.this$1;
    Integer[] arrayOfInteger = new Integer[1];
    arrayOfInteger[0] = Integer.valueOf(paramInt);
    local2.onProgressUpdate(arrayOfInteger);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.ActivityUtils.2.1
 * JD-Core Version:    0.7.0.1
 */