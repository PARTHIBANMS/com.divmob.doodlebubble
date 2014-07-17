package org.anddev.andengine.engine.handler.collision;

import org.anddev.andengine.entity.shape.IShape;

public abstract interface ICollisionCallback
{
  public abstract boolean onCollision(IShape paramIShape1, IShape paramIShape2);
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.engine.handler.collision.ICollisionCallback
 * JD-Core Version:    0.7.0.1
 */