package org.anddev.andengine.engine.options;

public class RenderOptions
{
  private boolean mDisableExtensionDrawTexture = false;
  private boolean mDisableExtensionVertexBufferObjects = false;
  
  public RenderOptions disableExtensionDrawTexture()
  {
    return setDisableExtensionDrawTexture(true);
  }
  
  public RenderOptions disableExtensionVertexBufferObjects()
  {
    return setDisableExtensionVertexBufferObjects(true);
  }
  
  public RenderOptions enableExtensionDrawTexture()
  {
    return setDisableExtensionDrawTexture(false);
  }
  
  public RenderOptions enableExtensionVertexBufferObjects()
  {
    return setDisableExtensionVertexBufferObjects(false);
  }
  
  public boolean isDisableExtensionDrawTexture()
  {
    return this.mDisableExtensionDrawTexture;
  }
  
  public boolean isDisableExtensionVertexBufferObjects()
  {
    return this.mDisableExtensionVertexBufferObjects;
  }
  
  public RenderOptions setDisableExtensionDrawTexture(boolean paramBoolean)
  {
    this.mDisableExtensionDrawTexture = paramBoolean;
    return this;
  }
  
  public RenderOptions setDisableExtensionVertexBufferObjects(boolean paramBoolean)
  {
    this.mDisableExtensionVertexBufferObjects = paramBoolean;
    return this;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.engine.options.RenderOptions
 * JD-Core Version:    0.7.0.1
 */