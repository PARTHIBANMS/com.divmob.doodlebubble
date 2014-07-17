package org.anddev.andengine.opengl.texture.compressed.pvr;

import java.io.IOException;
import java.util.zip.GZIPInputStream;
import org.anddev.andengine.opengl.texture.ITexture.ITextureStateListener;
import org.anddev.andengine.opengl.texture.TextureOptions;

public abstract class PVRGZTexture
  extends PVRTexture
{
  public PVRGZTexture(PVRTexture.PVRTextureFormat paramPVRTextureFormat)
    throws IllegalArgumentException, IOException
  {
    super(paramPVRTextureFormat);
  }
  
  public PVRGZTexture(PVRTexture.PVRTextureFormat paramPVRTextureFormat, ITexture.ITextureStateListener paramITextureStateListener)
    throws IllegalArgumentException, IOException
  {
    super(paramPVRTextureFormat, paramITextureStateListener);
  }
  
  public PVRGZTexture(PVRTexture.PVRTextureFormat paramPVRTextureFormat, TextureOptions paramTextureOptions)
    throws IllegalArgumentException, IOException
  {
    super(paramPVRTextureFormat, paramTextureOptions);
  }
  
  public PVRGZTexture(PVRTexture.PVRTextureFormat paramPVRTextureFormat, TextureOptions paramTextureOptions, ITexture.ITextureStateListener paramITextureStateListener)
    throws IllegalArgumentException, IOException
  {
    super(paramPVRTextureFormat, paramTextureOptions, paramITextureStateListener);
  }
  
  protected GZIPInputStream getInputStream()
    throws IOException
  {
    return new GZIPInputStream(onGetInputStream());
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.compressed.pvr.PVRGZTexture
 * JD-Core Version:    0.7.0.1
 */