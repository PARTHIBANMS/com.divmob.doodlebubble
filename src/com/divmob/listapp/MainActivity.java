package com.divmob.listapp;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MotionEvent;
import com.divmob.c.c;
import com.divmob.c.i;
import com.divmob.c.r;

public class MainActivity
  extends Activity
{
  c a;
  r b;
  i c;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(a.d.activity_main);
    this.a = new c(this, false, true);
    this.a.b();
    this.c = new i(this, false, 1);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(a.e.activity_main, paramMenu);
    return true;
  }
  
  protected void onDestroy()
  {
    this.c.d();
    this.a.e();
    super.onDestroy();
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 1) && (!this.c.a())) {
      this.c.b();
    }
    return super.onTouchEvent(paramMotionEvent);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.listapp.MainActivity
 * JD-Core Version:    0.7.0.1
 */