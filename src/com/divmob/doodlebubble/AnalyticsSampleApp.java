package com.divmob.doodlebubble;

import android.app.Application;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.Tracker;
import java.util.HashMap;

public class AnalyticsSampleApp
  extends Application
{
  public static int a = 0;
  private static final String c = "UA-50652953-1";
  HashMap<a, Tracker> b = new HashMap();
  
  Tracker a(a parama)
  {
    try
    {
      if (!this.b.containsKey(parama))
      {
        Tracker localTracker2 = GoogleAnalytics.getInstance(this).newTracker("UA-50652953-1");
        this.b.put(parama, localTracker2);
      }
      Tracker localTracker1 = (Tracker)this.b.get(parama);
      return localTracker1;
    }
    finally {}
  }
  
  public static enum a
  {
    static
    {
      a[] arrayOfa = new a[1];
      arrayOfa[0] = a;
      b = arrayOfa;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.doodlebubble.AnalyticsSampleApp
 * JD-Core Version:    0.7.0.1
 */