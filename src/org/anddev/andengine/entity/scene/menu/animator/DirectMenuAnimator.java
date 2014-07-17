package org.anddev.andengine.entity.scene.menu.animator;

import java.util.ArrayList;
import org.anddev.andengine.entity.scene.menu.item.IMenuItem;
import org.anddev.andengine.util.HorizontalAlign;

public class DirectMenuAnimator
  extends BaseMenuAnimator
{
  public DirectMenuAnimator() {}
  
  public DirectMenuAnimator(float paramFloat)
  {
    super(paramFloat);
  }
  
  public DirectMenuAnimator(HorizontalAlign paramHorizontalAlign)
  {
    super(paramHorizontalAlign);
  }
  
  public DirectMenuAnimator(HorizontalAlign paramHorizontalAlign, float paramFloat)
  {
    super(paramHorizontalAlign, paramFloat);
  }
  
  public void buildAnimations(ArrayList<IMenuItem> paramArrayList, float paramFloat1, float paramFloat2) {}
  
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
 * Qualified Name:     org.anddev.andengine.entity.scene.menu.animator.DirectMenuAnimator
 * JD-Core Version:    0.7.0.1
 */