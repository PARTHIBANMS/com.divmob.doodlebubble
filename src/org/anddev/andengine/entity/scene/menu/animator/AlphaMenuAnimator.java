package org.anddev.andengine.entity.scene.menu.animator;

import java.util.ArrayList;
import org.anddev.andengine.entity.modifier.AlphaModifier;
import org.anddev.andengine.entity.scene.menu.item.IMenuItem;
import org.anddev.andengine.util.HorizontalAlign;
import org.anddev.andengine.util.modifier.ease.IEaseFunction;

public class AlphaMenuAnimator
  extends BaseMenuAnimator
{
  private static final float ALPHA_FROM = 0.0F;
  private static final float ALPHA_TO = 1.0F;
  
  public AlphaMenuAnimator() {}
  
  public AlphaMenuAnimator(float paramFloat)
  {
    super(paramFloat);
  }
  
  public AlphaMenuAnimator(float paramFloat, IEaseFunction paramIEaseFunction)
  {
    super(paramFloat, paramIEaseFunction);
  }
  
  public AlphaMenuAnimator(HorizontalAlign paramHorizontalAlign)
  {
    super(paramHorizontalAlign);
  }
  
  public AlphaMenuAnimator(HorizontalAlign paramHorizontalAlign, float paramFloat)
  {
    super(paramHorizontalAlign, paramFloat);
  }
  
  public AlphaMenuAnimator(HorizontalAlign paramHorizontalAlign, float paramFloat, IEaseFunction paramIEaseFunction)
  {
    super(paramHorizontalAlign, paramFloat, paramIEaseFunction);
  }
  
  public AlphaMenuAnimator(HorizontalAlign paramHorizontalAlign, IEaseFunction paramIEaseFunction)
  {
    super(paramHorizontalAlign, paramIEaseFunction);
  }
  
  public AlphaMenuAnimator(IEaseFunction paramIEaseFunction)
  {
    super(paramIEaseFunction);
  }
  
  public void buildAnimations(ArrayList<IMenuItem> paramArrayList, float paramFloat1, float paramFloat2)
  {
    IEaseFunction localIEaseFunction = this.mEaseFunction;
    for (int i = -1 + paramArrayList.size();; i--)
    {
      if (i < 0) {
        return;
      }
      AlphaModifier localAlphaModifier = new AlphaModifier(1.0F, 0.0F, 1.0F, localIEaseFunction);
      localAlphaModifier.setRemoveWhenFinished(false);
      ((IMenuItem)paramArrayList.get(i)).registerEntityModifier(localAlphaModifier);
    }
  }
  
  public void prepareAnimations(ArrayList<IMenuItem> paramArrayList, float paramFloat1, float paramFloat2)
  {
    float f1 = getMaximumWidth(paramArrayList);
    float f2 = getOverallHeight(paramArrayList);
    float f3 = 0.5F * (paramFloat1 - f1);
    float f4 = 0.5F * (paramFloat2 - f2);
    float f5 = this.mMenuItemSpacing;
    int i = paramArrayList.size();
    int j = 0;
    float f6 = 0.0F;
    if (j >= i) {
      return;
    }
    IMenuItem localIMenuItem = (IMenuItem)paramArrayList.get(j);
    float f7;
    switch (this.mHorizontalAlign)
    {
    case LEFT: 
    default: 
      f7 = 0.5F * (f1 - localIMenuItem.getWidthScaled());
    }
    for (;;)
    {
      localIMenuItem.setPosition(f7 + f3, f4 + f6);
      localIMenuItem.setAlpha(0.0F);
      float f8 = f6 + (f5 + localIMenuItem.getHeight());
      j++;
      f6 = f8;
      break;
      f7 = 0.0F;
      continue;
      f7 = f1 - localIMenuItem.getWidthScaled();
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.scene.menu.animator.AlphaMenuAnimator
 * JD-Core Version:    0.7.0.1
 */