package org.anddev.andengine.entity.scene.menu.animator;

import java.util.ArrayList;
import org.anddev.andengine.entity.scene.menu.item.IMenuItem;

public abstract interface IMenuAnimator
{
  public static final IMenuAnimator DEFAULT = new AlphaMenuAnimator();
  
  public abstract void buildAnimations(ArrayList<IMenuItem> paramArrayList, float paramFloat1, float paramFloat2);
  
  public abstract void prepareAnimations(ArrayList<IMenuItem> paramArrayList, float paramFloat1, float paramFloat2);
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.scene.menu.animator.IMenuAnimator
 * JD-Core Version:    0.7.0.1
 */