package org.anddev.andengine.util;

import android.app.Dialog;
import android.view.Window;

public class DialogUtils
{
  public static void keepScreenOn(Dialog paramDialog)
  {
    paramDialog.getWindow().addFlags(128);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.DialogUtils
 * JD-Core Version:    0.7.0.1
 */