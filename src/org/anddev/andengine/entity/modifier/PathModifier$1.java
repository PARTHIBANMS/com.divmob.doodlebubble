package org.anddev.andengine.entity.modifier;

import org.anddev.andengine.entity.IEntity;
import org.anddev.andengine.util.modifier.IModifier;
import org.anddev.andengine.util.modifier.SequenceModifier.ISubSequenceModifierListener;

class PathModifier$1
  implements SequenceModifier.ISubSequenceModifierListener<IEntity>
{
  PathModifier$1(PathModifier paramPathModifier) {}
  
  public void onSubSequenceFinished(IModifier<IEntity> paramIModifier, IEntity paramIEntity, int paramInt)
  {
    if (PathModifier.access$3(this.this$0) != null) {
      PathModifier.access$3(this.this$0).onPathWaypointFinished(this.this$0, paramIEntity, paramInt);
    }
  }
  
  public void onSubSequenceStarted(IModifier<IEntity> paramIModifier, IEntity paramIEntity, int paramInt)
  {
    if (PathModifier.access$3(this.this$0) != null) {
      PathModifier.access$3(this.this$0).onPathWaypointStarted(this.this$0, paramIEntity, paramInt);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.modifier.PathModifier.1
 * JD-Core Version:    0.7.0.1
 */