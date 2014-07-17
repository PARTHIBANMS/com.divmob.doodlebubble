package org.anddev.andengine.opengl.texture.region;

import org.anddev.andengine.opengl.texture.ITexture;

public class TiledTextureRegion
  extends BaseTextureRegion
{
  private int mCurrentTileColumn;
  private int mCurrentTileRow;
  private final int mTileColumns;
  private final int mTileCount;
  private final int mTileRows;
  
  public TiledTextureRegion(ITexture paramITexture, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    super(paramITexture, paramInt1, paramInt2, paramInt3, paramInt4);
    this.mTileColumns = paramInt5;
    this.mTileRows = paramInt6;
    this.mTileCount = (this.mTileColumns * this.mTileRows);
    this.mCurrentTileColumn = 0;
    this.mCurrentTileRow = 0;
    initTextureBuffer();
  }
  
  public TiledTextureRegion deepCopy()
  {
    TiledTextureRegion localTiledTextureRegion = new TiledTextureRegion(this.mTexture, getTexturePositionX(), getTexturePositionY(), getWidth(), getHeight(), this.mTileColumns, this.mTileRows);
    localTiledTextureRegion.setCurrentTileIndex(this.mCurrentTileColumn, this.mCurrentTileRow);
    return localTiledTextureRegion;
  }
  
  public int getCurrentTileColumn()
  {
    return this.mCurrentTileColumn;
  }
  
  public int getCurrentTileIndex()
  {
    return this.mCurrentTileRow * this.mTileColumns + this.mCurrentTileColumn;
  }
  
  public int getCurrentTileRow()
  {
    return this.mCurrentTileRow;
  }
  
  public float getTextureCoordinateX1()
  {
    return getTexturePositionOfCurrentTileX() / this.mTexture.getWidth();
  }
  
  public float getTextureCoordinateX2()
  {
    return (getTexturePositionOfCurrentTileX() + getTileWidth()) / this.mTexture.getWidth();
  }
  
  public float getTextureCoordinateY1()
  {
    return getTexturePositionOfCurrentTileY() / this.mTexture.getHeight();
  }
  
  public float getTextureCoordinateY2()
  {
    return (getTexturePositionOfCurrentTileY() + getTileHeight()) / this.mTexture.getHeight();
  }
  
  public int getTexturePositionOfCurrentTileX()
  {
    return super.getTexturePositionX() + this.mCurrentTileColumn * getTileWidth();
  }
  
  public int getTexturePositionOfCurrentTileY()
  {
    return super.getTexturePositionY() + this.mCurrentTileRow * getTileHeight();
  }
  
  public int getTileCount()
  {
    return this.mTileCount;
  }
  
  public int getTileHeight()
  {
    return super.getHeight() / this.mTileRows;
  }
  
  public int getTileWidth()
  {
    return super.getWidth() / this.mTileColumns;
  }
  
  protected void initTextureBuffer()
  {
    if ((this.mTileRows != 0) && (this.mTileColumns != 0)) {
      super.initTextureBuffer();
    }
  }
  
  public void nextTile()
  {
    setCurrentTileIndex((1 + getCurrentTileIndex()) % getTileCount());
  }
  
  public void setCurrentTileIndex(int paramInt)
  {
    if (paramInt < this.mTileCount)
    {
      int i = this.mTileColumns;
      setCurrentTileIndex(paramInt % i, paramInt / i);
    }
  }
  
  public void setCurrentTileIndex(int paramInt1, int paramInt2)
  {
    if ((paramInt1 != this.mCurrentTileColumn) || (paramInt2 != this.mCurrentTileRow))
    {
      this.mCurrentTileColumn = paramInt1;
      this.mCurrentTileRow = paramInt2;
      super.updateTextureRegionBuffer();
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.region.TiledTextureRegion
 * JD-Core Version:    0.7.0.1
 */