package com.google.android.gms.dynamic;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.util.LinkedList;

public abstract class a<T extends LifecycleDelegate>
{
  private T Fp;
  private Bundle Fq;
  private LinkedList<a> Fr;
  private final d<T> Fs = new a.1(this);
  
  private void a(Bundle paramBundle, a parama)
  {
    if (this.Fp != null)
    {
      parama.b(this.Fp);
      return;
    }
    if (this.Fr == null) {
      this.Fr = new LinkedList();
    }
    this.Fr.add(parama);
    if (paramBundle != null)
    {
      if (this.Fq != null) {
        break label76;
      }
      this.Fq = ((Bundle)paramBundle.clone());
    }
    for (;;)
    {
      a(this.Fs);
      return;
      label76:
      this.Fq.putAll(paramBundle);
    }
  }
  
  private void aO(int paramInt)
  {
    while ((!this.Fr.isEmpty()) && (((a)this.Fr.getLast()).getState() >= paramInt)) {
      this.Fr.removeLast();
    }
  }
  
  public static void b(FrameLayout paramFrameLayout)
  {
    Context localContext = paramFrameLayout.getContext();
    int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(localContext);
    String str1 = GooglePlayServicesUtil.b(localContext, i, -1);
    String str2 = GooglePlayServicesUtil.b(localContext, i);
    LinearLayout localLinearLayout = new LinearLayout(paramFrameLayout.getContext());
    localLinearLayout.setOrientation(1);
    localLinearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
    paramFrameLayout.addView(localLinearLayout);
    TextView localTextView = new TextView(paramFrameLayout.getContext());
    localTextView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
    localTextView.setText(str1);
    localLinearLayout.addView(localTextView);
    if (str2 != null)
    {
      Button localButton = new Button(localContext);
      localButton.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
      localButton.setText(str2);
      localLinearLayout.addView(localButton);
      localButton.setOnClickListener(new a.5(localContext, i));
    }
  }
  
  protected void a(FrameLayout paramFrameLayout)
  {
    b(paramFrameLayout);
  }
  
  protected abstract void a(d<T> paramd);
  
  public T fj()
  {
    return this.Fp;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    a(paramBundle, new a.3(this, paramBundle));
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    FrameLayout localFrameLayout = new FrameLayout(paramLayoutInflater.getContext());
    a(paramBundle, new a.4(this, localFrameLayout, paramLayoutInflater, paramViewGroup, paramBundle));
    if (this.Fp == null) {
      a(localFrameLayout);
    }
    return localFrameLayout;
  }
  
  public void onDestroy()
  {
    if (this.Fp != null)
    {
      this.Fp.onDestroy();
      return;
    }
    aO(1);
  }
  
  public void onDestroyView()
  {
    if (this.Fp != null)
    {
      this.Fp.onDestroyView();
      return;
    }
    aO(2);
  }
  
  public void onInflate(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
  {
    a(paramBundle2, new a.2(this, paramActivity, paramBundle1, paramBundle2));
  }
  
  public void onLowMemory()
  {
    if (this.Fp != null) {
      this.Fp.onLowMemory();
    }
  }
  
  public void onPause()
  {
    if (this.Fp != null)
    {
      this.Fp.onPause();
      return;
    }
    aO(5);
  }
  
  public void onResume()
  {
    a(null, new a.6(this));
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    if (this.Fp != null) {
      this.Fp.onSaveInstanceState(paramBundle);
    }
    while (this.Fq == null) {
      return;
    }
    paramBundle.putAll(this.Fq);
  }
  
  private static abstract interface a
  {
    public abstract void b(LifecycleDelegate paramLifecycleDelegate);
    
    public abstract int getState();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.dynamic.a
 * JD-Core Version:    0.7.0.1
 */