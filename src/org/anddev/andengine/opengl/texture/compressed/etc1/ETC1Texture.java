package org.anddev.andengine.opengl.texture.compressed.etc1;

import android.opengl.ETC1;
import android.opengl.ETC1Util;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import javax.microedition.khronos.opengles.GL10;
import org.anddev.andengine.opengl.texture.ITexture.ITextureStateListener;
import org.anddev.andengine.opengl.texture.Texture;
import org.anddev.andengine.opengl.texture.Texture.PixelFormat;
import org.anddev.andengine.opengl.texture.TextureOptions;
import org.anddev.andengine.util.StreamUtils;

public abstract class ETC1Texture
  extends Texture
{
  private ETC1TextureHeader mETC1TextureHeader;
  
  public ETC1Texture()
    throws IOException
  {
    this(TextureOptions.DEFAULT, null);
  }
  
  public ETC1Texture(ITexture.ITextureStateListener paramITextureStateListener)
    throws IOException
  {
    this(TextureOptions.DEFAULT, paramITextureStateListener);
  }
  
  public ETC1Texture(TextureOptions paramTextureOptions)
    throws IOException
  {
    this(paramTextureOptions, null);
  }
  
  public ETC1Texture(TextureOptions paramTextureOptions, ITexture.ITextureStateListener paramITextureStateListener)
    throws IOException
  {
    super(Texture.PixelFormat.RGB_565, paramTextureOptions, paramITextureStateListener);
    InputStream localInputStream = null;
    try
    {
      localInputStream = getInputStream();
      this.mETC1TextureHeader = new ETC1TextureHeader(StreamUtils.streamToBytes(localInputStream, 16));
      return;
    }
    finally
    {
      StreamUtils.close(localInputStream);
    }
  }
  
  public int getHeight()
  {
    return this.mETC1TextureHeader.getHeight();
  }
  
  protected abstract InputStream getInputStream()
    throws IOException;
  
  public int getWidth()
  {
    return this.mETC1TextureHeader.getWidth();
  }
  
  protected void writeTextureToHardware(GL10 paramGL10)
    throws IOException
  {
    InputStream localInputStream = getInputStream();
    ETC1Util.loadTexture(3553, 0, 0, this.mPixelFormat.getGLFormat(), this.mPixelFormat.getGLType(), localInputStream);
  }
  
  public static class ETC1TextureHeader
  {
    private final ByteBuffer mDataByteBuffer;
    private final int mHeight;
    private final int mWidth;
    
    public ETC1TextureHeader(byte[] paramArrayOfByte)
    {
      if (paramArrayOfByte.length != 16) {
        throw new IllegalArgumentException("Invalid " + getClass().getSimpleName() + "!");
      }
      this.mDataByteBuffer = ByteBuffer.allocateDirect(16).order(ByteOrder.nativeOrder());
      this.mDataByteBuffer.put(paramArrayOfByte, 0, 16);
      this.mDataByteBuffer.position(0);
      if (!ETC1.isValid(this.mDataByteBuffer)) {
        throw new IllegalArgumentException("Invalid " + getClass().getSimpleName() + "!");
      }
      this.mWidth = ETC1.getWidth(this.mDataByteBuffer);
      this.mHeight = ETC1.getHeight(this.mDataByteBuffer);
    }
    
    public int getHeight()
    {
      return this.mHeight;
    }
    
    public int getWidth()
    {
      return this.mWidth;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.compressed.etc1.ETC1Texture
 * JD-Core Version:    0.7.0.1
 */