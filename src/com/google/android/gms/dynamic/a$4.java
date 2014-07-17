package com.google.android.gms.dynamic;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;

class a$4
  implements a.a
{
  a$4(a parama, FrameLayout paramFrameLayout, LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {}
  
  public void b(LifecycleDelegate paramLifecycleDelegate)
  {
    this.Fx.removeAllViews();
    this.Fx.addView(a.b(this.Ft).onCreateView(this.Fy, this.Fz, this.Fw));
  }
  
  public int getState()
  {
    return 2;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.dynamic.a.4
 * JD-Core Version:    0.7.0.1
 */