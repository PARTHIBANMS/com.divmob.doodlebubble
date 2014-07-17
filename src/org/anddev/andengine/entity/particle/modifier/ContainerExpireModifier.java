package org.anddev.andengine.entity.particle.modifier;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.anddev.andengine.entity.particle.Particle;

public class ContainerExpireModifier
  extends ExpireModifier
{
  private final List<BaseSingleValueSpanModifier> mModifiers = new ArrayList();
  
  public ContainerExpireModifier(float paramFloat)
  {
    super(paramFloat);
  }
  
  public ContainerExpireModifier(float paramFloat1, float paramFloat2)
  {
    super(paramFloat1, paramFloat2);
  }
  
  public void addParticleModifier(BaseSingleValueSpanModifier paramBaseSingleValueSpanModifier)
  {
    this.mModifiers.add(paramBaseSingleValueSpanModifier);
  }
  
  public void onUpdateParticle(Particle paramParticle)
  {
    Iterator localIterator = this.mModifiers.iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return;
      }
      ((BaseSingleValueSpanModifier)localIterator.next()).onUpdateParticle(paramParticle, paramParticle.getDeathTime());
    }
  }
  
  public boolean removeParticleModifier(BaseSingleValueSpanModifier paramBaseSingleValueSpanModifier)
  {
    return this.mModifiers.remove(paramBaseSingleValueSpanModifier);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.particle.modifier.ContainerExpireModifier
 * JD-Core Version:    0.7.0.1
 */