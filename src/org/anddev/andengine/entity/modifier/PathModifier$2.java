package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.util.modifier.IModifier;

class PathModifier$2
  implements IEntityModifier.IEntityModifierListener
{
  PathModifier$2(PathModifier paramPathModifier) {}
  
  public void onModifierFinished(IModifier<IEntity> paramIModifier, IEntity paramIEntity)
  {
    PathModifier.access$5(this.this$0, paramIEntity);
    if (PathModifier.access$3(this.this$0) != null) {
      PathModifier.access$3(this.this$0).onPathFinished(this.this$0, paramIEntity);
    }
  }
  
  public void onModifierStarted(IModifier<IEntity> paramIModifier, IEntity paramIEntity)
  {
    PathModifier.access$4(this.this$0, paramIEntity);
    if (PathModifier.access$3(this.this$0) != null) {
      PathModifier.access$3(this.this$0).onPathStarted(this.this$0, paramIEntity);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.PathModifier.2
 * JD-Core Version:    0.7.0.1
 */