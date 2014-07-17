package org.anddev.andengine.entity.scene;

import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.entity.modifier.ScaleModifier;
import org.anddev.andengine.entity.sprite.Sprite;
import org.anddev.andengine.opengl.texture.region.TextureRegion;
import org.anddev.andengine.util.modifier.ease.IEaseFunction;

public class SplashScene
  extends Scene
{
  public SplashScene(Camera paramCamera, TextureRegion paramTextureRegion)
  {
    this(paramCamera, paramTextureRegion, -1.0F, 1.0F, 1.0F);
  }
  
  public SplashScene(Camera paramCamera, TextureRegion paramTextureRegion, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    Sprite localSprite = new Sprite(paramCamera.getMinX(), paramCamera.getMinY(), paramCamera.getWidth(), paramCamera.getHeight(), paramTextureRegion);
    if ((paramFloat2 != 1.0F) || (paramFloat3 != 1.0F))
    {
      localSprite.setScale(paramFloat2);
      localSprite.registerEntityModifier(new ScaleModifier(paramFloat1, paramFloat2, paramFloat3, IEaseFunction.DEFAULT));
    }
    attachChild(localSprite);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.scene.SplashScene
 * JD-Core Version:    0.7.0.1
 */