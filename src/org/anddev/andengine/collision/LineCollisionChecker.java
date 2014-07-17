package org.anddev.andengine.collision;

import org.anddev.andengine.entity.primitive.Line;
import org.anddev.andengine.util.Transformation;

public class LineCollisionChecker
  extends ShapeCollisionChecker
{
  public static boolean checkLineCollision(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6, float paramFloat7, float paramFloat8)
  {
    return (BaseCollisionChecker.relativeCCW(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat5, paramFloat6) * BaseCollisionChecker.relativeCCW(paramFloat1, paramFloat2, paramFloat3, paramFloat4, paramFloat7, paramFloat8) <= 0) && (BaseCollisionChecker.relativeCCW(paramFloat5, paramFloat6, paramFloat7, paramFloat8, paramFloat1, paramFloat2) * BaseCollisionChecker.relativeCCW(paramFloat5, paramFloat6, paramFloat7, paramFloat8, paramFloat3, paramFloat4) <= 0);
  }
  
  public static void fillVertices(Line paramLine, float[] paramArrayOfFloat)
  {
    paramArrayOfFloat[0] = 0.0F;
    paramArrayOfFloat[1] = 0.0F;
    paramArrayOfFloat[2] = (paramLine.getX2() - paramLine.getX1());
    paramArrayOfFloat[3] = (paramLine.getY2() - paramLine.getY1());
    paramLine.getLocalToSceneTransformation().transform(paramArrayOfFloat);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.collision.LineCollisionChecker
 * JD-Core Version:    0.7.0.1
 */