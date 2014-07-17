package org.anddev.andengine.opengl.buffer;

import javax.microedition.khronos.opengles.GL11;
import org.anddev.andengine.opengl.util.FastFloatBuffer;
import org.anddev.andengine.opengl.util.GLHelper;

public abstract class BufferObject
{
  private static final int[] HARDWAREBUFFERID_FETCHER = new int[1];
  protected final int[] mBufferData;
  private final int mDrawType;
  protected final FastFloatBuffer mFloatBuffer;
  private int mHardwareBufferID = -1;
  private boolean mHardwareBufferNeedsUpdate = true;
  private boolean mLoadedToHardware;
  private boolean mManaged;
  
  public BufferObject(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    this.mDrawType = paramInt2;
    this.mManaged = paramBoolean;
    this.mBufferData = new int[paramInt1];
    this.mFloatBuffer = new FastFloatBuffer(paramInt1);
    if (paramBoolean) {
      loadToActiveBufferObjectManager();
    }
  }
  
  private void deleteBufferOnHardware(GL11 paramGL11)
  {
    GLHelper.deleteBuffer(paramGL11, this.mHardwareBufferID);
  }
  
  private int generateHardwareBufferID(GL11 paramGL11)
  {
    paramGL11.glGenBuffers(1, HARDWAREBUFFERID_FETCHER, 0);
    return HARDWAREBUFFERID_FETCHER[0];
  }
  
  public FastFloatBuffer getFloatBuffer()
  {
    return this.mFloatBuffer;
  }
  
  public int getHardwareBufferID()
  {
    return this.mHardwareBufferID;
  }
  
  public boolean isLoadedToHardware()
  {
    return this.mLoadedToHardware;
  }
  
  public boolean isManaged()
  {
    return this.mManaged;
  }
  
  public void loadToActiveBufferObjectManager()
  {
    BufferObjectManager.getActiveInstance().loadBufferObject(this);
  }
  
  public void loadToHardware(GL11 paramGL11)
  {
    this.mHardwareBufferID = generateHardwareBufferID(paramGL11);
    this.mLoadedToHardware = true;
  }
  
  public void selectOnHardware(GL11 paramGL11)
  {
    int i = this.mHardwareBufferID;
    if (i == -1) {}
    do
    {
      return;
      GLHelper.bindBuffer(paramGL11, i);
    } while (!this.mHardwareBufferNeedsUpdate);
    this.mHardwareBufferNeedsUpdate = false;
    try
    {
      GLHelper.bufferData(paramGL11, this.mFloatBuffer.mByteBuffer, this.mDrawType);
      return;
    }
    finally {}
  }
  
  public void setHardwareBufferNeedsUpdate()
  {
    this.mHardwareBufferNeedsUpdate = true;
  }
  
  void setLoadedToHardware(boolean paramBoolean)
  {
    this.mLoadedToHardware = paramBoolean;
  }
  
  public void setManaged(boolean paramBoolean)
  {
    this.mManaged = paramBoolean;
  }
  
  public void unloadFromActiveBufferObjectManager()
  {
    BufferObjectManager.getActiveInstance().unloadBufferObject(this);
  }
  
  public void unloadFromHardware(GL11 paramGL11)
  {
    deleteBufferOnHardware(paramGL11);
    this.mHardwareBufferID = -1;
    this.mLoadedToHardware = false;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.buffer.BufferObject
 * JD-Core Version:    0.7.0.1
 */