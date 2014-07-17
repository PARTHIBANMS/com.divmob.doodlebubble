package org.anddev.andengine.entity.scene.popup;

import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.entity.modifier.IEntityModifier;
import org.anddev.andengine.entity.scene.Scene;
import org.anddev.andengine.entity.text.Text;
import org.anddev.andengine.opengl.font.Font;
import org.anddev.andengine.util.HorizontalAlign;

public class TextPopupScene
  extends PopupScene
{
  private final Text mText;
  
  public TextPopupScene(Camera paramCamera, Scene paramScene, Font paramFont, String paramString, float paramFloat)
  {
    this(paramCamera, paramScene, paramFont, paramString, paramFloat, null, null);
  }
  
  public TextPopupScene(Camera paramCamera, Scene paramScene, Font paramFont, String paramString, float paramFloat, Runnable paramRunnable)
  {
    this(paramCamera, paramScene, paramFont, paramString, paramFloat, null, paramRunnable);
  }
  
  public TextPopupScene(Camera paramCamera, Scene paramScene, Font paramFont, String paramString, float paramFloat, IEntityModifier paramIEntityModifier)
  {
    this(paramCamera, paramScene, paramFont, paramString, paramFloat, paramIEntityModifier, null);
  }
  
  public TextPopupScene(Camera paramCamera, Scene paramScene, Font paramFont, String paramString, float paramFloat, IEntityModifier paramIEntityModifier, Runnable paramRunnable)
  {
    super(paramCamera, paramScene, paramFloat, paramRunnable);
    this.mText = new Text(0.0F, 0.0F, paramFont, paramString, HorizontalAlign.CENTER);
    centerShapeInCamera(this.mText);
    if (paramIEntityModifier != null) {
      this.mText.registerEntityModifier(paramIEntityModifier);
    }
    attachChild(this.mText);
  }
  
  public Text getText()
  {
    return this.mText;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.scene.popup.TextPopupScene
 * JD-Core Version:    0.7.0.1
 */