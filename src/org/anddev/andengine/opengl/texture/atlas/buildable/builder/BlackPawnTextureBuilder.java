package org.anddev.andengine.opengl.texture.atlas.buildable.builder;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import org.anddev.andengine.opengl.texture.atlas.ITextureAtlas;
import org.anddev.andengine.opengl.texture.atlas.buildable.BuildableTextureAtlas.TextureAtlasSourceWithWithLocationCallback;
import org.anddev.andengine.opengl.texture.source.ITextureAtlasSource;
import org.anddev.andengine.util.Callback;

public class BlackPawnTextureBuilder<T extends ITextureAtlasSource, A extends ITextureAtlas<T>>
  implements ITextureBuilder<T, A>
{
  private static final Comparator<BuildableTextureAtlas.TextureAtlasSourceWithWithLocationCallback<?>> TEXTURESOURCE_COMPARATOR = new BlackPawnTextureBuilder.1();
  private final int mTextureAtlasSourceSpacing;
  
  public BlackPawnTextureBuilder(int paramInt)
  {
    this.mTextureAtlasSourceSpacing = paramInt;
  }
  
  public void pack(A paramA, ArrayList<BuildableTextureAtlas.TextureAtlasSourceWithWithLocationCallback<T>> paramArrayList)
    throws ITextureBuilder.TextureAtlasSourcePackingException
  {
    Collections.sort(paramArrayList, TEXTURESOURCE_COMPARATOR);
    Node localNode1 = new Node(new Rect(0, 0, paramA.getWidth(), paramA.getHeight()));
    int i = paramArrayList.size();
    for (int j = 0;; j++)
    {
      if (j >= i) {
        return;
      }
      BuildableTextureAtlas.TextureAtlasSourceWithWithLocationCallback localTextureAtlasSourceWithWithLocationCallback = (BuildableTextureAtlas.TextureAtlasSourceWithWithLocationCallback)paramArrayList.get(j);
      ITextureAtlasSource localITextureAtlasSource = localTextureAtlasSourceWithWithLocationCallback.getTextureAtlasSource();
      Node localNode2 = localNode1.insert(localITextureAtlasSource, paramA.getWidth(), paramA.getHeight(), this.mTextureAtlasSourceSpacing);
      if (localNode2 == null) {
        throw new ITextureBuilder.TextureAtlasSourcePackingException("Could not pack: " + localITextureAtlasSource.toString());
      }
      paramA.addTextureAtlasSource(localITextureAtlasSource, Node.access$0(localNode2).mLeft, Node.access$0(localNode2).mTop);
      localTextureAtlasSourceWithWithLocationCallback.getCallback().onCallback(localITextureAtlasSource);
    }
  }
  
  protected static class Node
  {
    private Node mChildA;
    private Node mChildB;
    private final BlackPawnTextureBuilder.Rect mRect;
    private ITextureAtlasSource mTextureAtlasSource;
    
    public Node(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      this(new BlackPawnTextureBuilder.Rect(paramInt1, paramInt2, paramInt3, paramInt4));
    }
    
    public Node(BlackPawnTextureBuilder.Rect paramRect)
    {
      this.mRect = paramRect;
    }
    
    private Node createChildren(ITextureAtlasSource paramITextureAtlasSource, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
    {
      BlackPawnTextureBuilder.Rect localRect = this.mRect;
      if (paramInt4 >= paramInt5) {
        this.mChildA = new Node(localRect.getLeft(), localRect.getTop(), paramInt3 + paramITextureAtlasSource.getWidth(), localRect.getHeight());
      }
      for (this.mChildB = new Node(localRect.getLeft() + (paramInt3 + paramITextureAtlasSource.getWidth()), localRect.getTop(), localRect.getWidth() - (paramInt3 + paramITextureAtlasSource.getWidth()), localRect.getHeight());; this.mChildB = new Node(localRect.getLeft(), localRect.getTop() + (paramInt3 + paramITextureAtlasSource.getHeight()), localRect.getWidth(), localRect.getHeight() - (paramInt3 + paramITextureAtlasSource.getHeight())))
      {
        return this.mChildA.insert(paramITextureAtlasSource, paramInt1, paramInt2, paramInt3);
        this.mChildA = new Node(localRect.getLeft(), localRect.getTop(), localRect.getWidth(), paramInt3 + paramITextureAtlasSource.getHeight());
      }
    }
    
    public Node getChildA()
    {
      return this.mChildA;
    }
    
    public Node getChildB()
    {
      return this.mChildB;
    }
    
    public BlackPawnTextureBuilder.Rect getRect()
    {
      return this.mRect;
    }
    
    public Node insert(ITextureAtlasSource paramITextureAtlasSource, int paramInt1, int paramInt2, int paramInt3)
      throws IllegalArgumentException
    {
      int i = 1;
      if ((this.mChildA != null) && (this.mChildB != null))
      {
        Node localNode = this.mChildA.insert(paramITextureAtlasSource, paramInt1, paramInt2, paramInt3);
        if (localNode != null) {
          return localNode;
        }
        return this.mChildB.insert(paramITextureAtlasSource, paramInt1, paramInt2, paramInt3);
      }
      if (this.mTextureAtlasSource != null) {
        return null;
      }
      int j = paramITextureAtlasSource.getWidth();
      int k = paramITextureAtlasSource.getHeight();
      int m = this.mRect.getWidth();
      int n = this.mRect.getHeight();
      if ((j > m) || (k > n)) {
        return null;
      }
      int i1 = j + paramInt3;
      int i2 = k + paramInt3;
      int i3 = this.mRect.getLeft();
      int i4 = this.mRect.getTop();
      int i5;
      if ((k == n) && (i4 + k == paramInt2))
      {
        i5 = i;
        if ((j != m) || (i3 + j != paramInt1)) {
          break label206;
        }
      }
      for (;;)
      {
        if (i1 == m)
        {
          if (i2 == n)
          {
            this.mTextureAtlasSource = paramITextureAtlasSource;
            return this;
            i5 = 0;
            break;
            label206:
            i = 0;
            continue;
          }
          if (i5 != 0)
          {
            this.mTextureAtlasSource = paramITextureAtlasSource;
            return this;
          }
        }
      }
      if (i != 0)
      {
        if (i2 == n)
        {
          this.mTextureAtlasSource = paramITextureAtlasSource;
          return this;
        }
        if (i5 != 0)
        {
          this.mTextureAtlasSource = paramITextureAtlasSource;
          return this;
        }
        if (i2 > n) {
          return null;
        }
        return createChildren(paramITextureAtlasSource, paramInt1, paramInt2, paramInt3, m - j, n - i2);
      }
      if (i5 != 0)
      {
        if (i1 == m)
        {
          this.mTextureAtlasSource = paramITextureAtlasSource;
          return this;
        }
        if (i1 > m) {
          return null;
        }
        return createChildren(paramITextureAtlasSource, paramInt1, paramInt2, paramInt3, m - i1, n - k);
      }
      if ((i1 > m) || (i2 > n)) {
        return null;
      }
      return createChildren(paramITextureAtlasSource, paramInt1, paramInt2, paramInt3, m - i1, n - i2);
    }
  }
  
  protected static class Rect
  {
    private final int mHeight;
    private final int mLeft;
    private final int mTop;
    private final int mWidth;
    
    public Rect(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    {
      this.mLeft = paramInt1;
      this.mTop = paramInt2;
      this.mWidth = paramInt3;
      this.mHeight = paramInt4;
    }
    
    public int getBottom()
    {
      return this.mTop + this.mHeight;
    }
    
    public int getHeight()
    {
      return this.mHeight;
    }
    
    public int getLeft()
    {
      return this.mLeft;
    }
    
    public int getRight()
    {
      return this.mLeft + this.mWidth;
    }
    
    public int getTop()
    {
      return this.mTop;
    }
    
    public int getWidth()
    {
      return this.mWidth;
    }
    
    public String toString()
    {
      return "@: " + this.mLeft + "/" + this.mTop + " * " + this.mWidth + "x" + this.mHeight;
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.buildable.builder.BlackPawnTextureBuilder
 * JD-Core Version:    0.7.0.1
 */