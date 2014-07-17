package com.divmob.maegame.game;

import android.content.res.Resources;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import org.anddev.andengine.opengl.view.RenderSurfaceView;

public abstract class XMLGame
  extends MBaseGameActivity
{
  protected void onSetContentView()
  {
    int i = getResources().getIdentifier("game_screen", "layout", getPackageName());
    int j = getResources().getIdentifier("game_id", "id", getPackageName());
    super.setContentView(i);
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(j);
    this.mRenderSurfaceView = new RenderSurfaceView(this);
    this.mRenderSurfaceView.setEGLConfigChooser(false);
    this.mRenderSurfaceView.setRenderer(this.mEngine);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(super.createSurfaceViewLayoutParams());
    localLayoutParams.addRule(13);
    localRelativeLayout.addView(this.mRenderSurfaceView, localLayoutParams);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.maegame.game.XMLGame
 * JD-Core Version:    0.7.0.1
 */