package org.anddev.andengine.opengl.texture.compressed.pvr;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.zip.GZIPInputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import org.anddev.andengine.opengl.texture.ITexture.ITextureStateListener;
import org.anddev.andengine.opengl.texture.TextureOptions;
import org.anddev.andengine.util.ArrayUtils;
import org.anddev.andengine.util.StreamUtils;

public abstract class PVRCCZTexture
  extends PVRTexture
{
  private CCZHeader mCCZHeader;
  
  public PVRCCZTexture(PVRTexture.PVRTextureFormat paramPVRTextureFormat)
    throws IllegalArgumentException, IOException
  {
    super(paramPVRTextureFormat);
  }
  
  public PVRCCZTexture(PVRTexture.PVRTextureFormat paramPVRTextureFormat, ITexture.ITextureStateListener paramITextureStateListener)
    throws IllegalArgumentException, IOException
  {
    super(paramPVRTextureFormat, paramITextureStateListener);
  }
  
  public PVRCCZTexture(PVRTexture.PVRTextureFormat paramPVRTextureFormat, TextureOptions paramTextureOptions)
    throws IllegalArgumentException, IOException
  {
    super(paramPVRTextureFormat, paramTextureOptions);
  }
  
  public PVRCCZTexture(PVRTexture.PVRTextureFormat paramPVRTextureFormat, TextureOptions paramTextureOptions, ITexture.ITextureStateListener paramITextureStateListener)
    throws IllegalArgumentException, IOException
  {
    super(paramPVRTextureFormat, paramTextureOptions, paramITextureStateListener);
  }
  
  protected final InputStream getInputStream()
    throws IOException
  {
    InputStream localInputStream = onGetInputStream();
    this.mCCZHeader = new CCZHeader(StreamUtils.streamToBytes(localInputStream, 16));
    return this.mCCZHeader.getCCZCompressionFormat().wrap(localInputStream);
  }
  
  protected ByteBuffer getPVRDataBuffer()
    throws IOException
  {
    InputStream localInputStream = getInputStream();
    try
    {
      byte[] arrayOfByte = new byte[this.mCCZHeader.getUncompressedSize()];
      StreamUtils.copy(localInputStream, arrayOfByte);
      ByteBuffer localByteBuffer = ByteBuffer.wrap(arrayOfByte);
      return localByteBuffer;
    }
    finally
    {
      StreamUtils.close(localInputStream);
    }
  }
  
  public static enum CCZCompressionFormat
  {
    NONE((short)3),  GZIP((short)2),  BZIP2((short)1),  ZLIB((short)0);
    
    private final short mID;
    
    private CCZCompressionFormat(short paramShort)
    {
      this.mID = paramShort;
    }
    
    public static CCZCompressionFormat fromID(short paramShort)
    {
      CCZCompressionFormat[] arrayOfCCZCompressionFormat = values();
      int i = arrayOfCCZCompressionFormat.length;
      for (int j = 0;; j++)
      {
        if (j >= i) {
          throw new IllegalArgumentException("Unexpected " + CCZCompressionFormat.class.getSimpleName() + "-ID: '" + paramShort + "'.");
        }
        CCZCompressionFormat localCCZCompressionFormat = arrayOfCCZCompressionFormat[j];
        if (localCCZCompressionFormat.mID == paramShort) {
          return localCCZCompressionFormat;
        }
      }
    }
    
    public InputStream wrap(InputStream paramInputStream)
      throws IOException
    {
      switch (this)
      {
      case GZIP: 
      default: 
        throw new IllegalArgumentException("Unexpected " + CCZCompressionFormat.class.getSimpleName() + ": '" + this + "'.");
      case NONE: 
        return new GZIPInputStream(paramInputStream);
      }
      return new InflaterInputStream(paramInputStream, new Inflater());
    }
  }
  
  public static class CCZHeader
  {
    public static final byte[] MAGIC_IDENTIFIER = { 67, 67, 90, 33 };
    public static final int SIZE = 16;
    private final PVRCCZTexture.CCZCompressionFormat mCCZCompressionFormat;
    private final ByteBuffer mDataByteBuffer;
    
    public CCZHeader(byte[] paramArrayOfByte)
    {
      this.mDataByteBuffer = ByteBuffer.wrap(paramArrayOfByte);
      this.mDataByteBuffer.rewind();
      this.mDataByteBuffer.order(ByteOrder.BIG_ENDIAN);
      if (!ArrayUtils.equals(paramArrayOfByte, 0, MAGIC_IDENTIFIER, 0, MAGIC_IDENTIFIER.length)) {
        throw new IllegalArgumentException("Invalid " + getClass().getSimpleName() + "!");
      }
      this.mCCZCompressionFormat = PVRCCZTexture.CCZCompressionFormat.fromID(getCCZCompressionFormatID());
    }
    
    private short getCCZCompressionFormatID()
    {
      return this.mDataByteBuffer.getShort(4);
    }
    
    public PVRCCZTexture.CCZCompressionFormat getCCZCompressionFormat()
    {
      return this.mCCZCompressionFormat;
    }
    
    public int getUncompressedSize()
    {
      return this.mDataByteBuffer.getInt(12);
    }
    
    public int getUserdata()
    {
      return this.mDataByteBuffer.getInt(8);
    }
    
    public short getVersion()
    {
      return this.mDataByteBuffer.getShort(6);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.compressed.pvr.PVRCCZTexture
 * JD-Core Version:    0.7.0.1
 */