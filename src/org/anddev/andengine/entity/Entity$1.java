package org.anddev.andengine.entity;

import org.anddev.andengine.util.ParameterCallable;

class Entity$1
  implements ParameterCallable<IEntity>
{
  public void call(IEntity paramIEntity)
  {
    paramIEntity.setParent(null);
    paramIEntity.onDetached();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.Entity.1
 * JD-Core Version:    0.7.0.1
 */