package org.anddev.andengine.collision;

import org.anddev.andengine.engine.camera.Camera;
import org.anddev.andengine.entity.primitive.Line;
import org.anddev.andengine.entity.shape.RectangularShape;
import org.anddev.andengine.util.MathUtils;
import org.anddev.andengine.util.Transformation;

public class RectangularShapeCollisionChecker
  extends ShapeCollisionChecker
{
  private static final int LINE_VERTEX_COUNT = 2;
  private static final int RECTANGULARSHAPE_VERTEX_COUNT = 4;
  private static final float[] VERTICES_COLLISION_TMP_A = new float[8];
  private static final float[] VERTICES_COLLISION_TMP_B = new float[8];
  private static final float[] VERTICES_CONTAINS_TMP = new float[8];
  
  public static boolean checkCollision(RectangularShape paramRectangularShape, Line paramLine)
  {
    fillVertices(paramRectangularShape, VERTICES_COLLISION_TMP_A);
    LineCollisionChecker.fillVertices(paramLine, VERTICES_COLLISION_TMP_B);
    return ShapeCollisionChecker.checkCollision(8, VERTICES_COLLISION_TMP_A, 4, VERTICES_COLLISION_TMP_B);
  }
  
  public static boolean checkCollision(RectangularShape paramRectangularShape1, RectangularShape paramRectangularShape2)
  {
    fillVertices(paramRectangularShape1, VERTICES_COLLISION_TMP_A);
    fillVertices(paramRectangularShape2, VERTICES_COLLISION_TMP_B);
    return ShapeCollisionChecker.checkCollision(8, VERTICES_COLLISION_TMP_A, 8, VERTICES_COLLISION_TMP_B);
  }
  
  public static boolean checkContains(RectangularShape paramRectangularShape, float paramFloat1, float paramFloat2)
  {
    fillVertices(paramRectangularShape, VERTICES_CONTAINS_TMP);
    return ShapeCollisionChecker.checkContains(VERTICES_CONTAINS_TMP, 8, paramFloat1, paramFloat2);
  }
  
  private static void fillVertices(Camera paramCamera, float[] paramArrayOfFloat)
  {
    paramArrayOfFloat[0] = paramCamera.getMinX();
    paramArrayOfFloat[1] = paramCamera.getMinY();
    paramArrayOfFloat[2] = paramCamera.getMaxX();
    paramArrayOfFloat[3] = paramCamera.getMinY();
    paramArrayOfFloat[4] = paramCamera.getMaxX();
    paramArrayOfFloat[5] = paramCamera.getMaxY();
    paramArrayOfFloat[6] = paramCamera.getMinX();
    paramArrayOfFloat[7] = paramCamera.getMaxY();
    MathUtils.rotateAroundCenter(paramArrayOfFloat, paramCamera.getRotation(), paramCamera.getCenterX(), paramCamera.getCenterY());
  }
  
  public static void fillVertices(RectangularShape paramRectangularShape, float[] paramArrayOfFloat)
  {
    float f1 = paramRectangularShape.getWidth();
    float f2 = paramRectangularShape.getHeight();
    paramArrayOfFloat[0] = 0.0F;
    paramArrayOfFloat[1] = 0.0F;
    paramArrayOfFloat[2] = f1;
    paramArrayOfFloat[3] = 0.0F;
    paramArrayOfFloat[4] = f1;
    paramArrayOfFloat[5] = f2;
    paramArrayOfFloat[6] = 0.0F;
    paramArrayOfFloat[7] = f2;
    paramRectangularShape.getLocalToSceneTransformation().transform(paramArrayOfFloat);
  }
  
  public static boolean isVisible(Camera paramCamera, Line paramLine)
  {
    fillVertices(paramCamera, VERTICES_COLLISION_TMP_A);
    LineCollisionChecker.fillVertices(paramLine, VERTICES_COLLISION_TMP_B);
    return ShapeCollisionChecker.checkCollision(8, VERTICES_COLLISION_TMP_A, 4, VERTICES_COLLISION_TMP_B);
  }
  
  public static boolean isVisible(Camera paramCamera, RectangularShape paramRectangularShape)
  {
    fillVertices(paramCamera, VERTICES_COLLISION_TMP_A);
    fillVertices(paramRectangularShape, VERTICES_COLLISION_TMP_B);
    return ShapeCollisionChecker.checkCollision(8, VERTICES_COLLISION_TMP_A, 8, VERTICES_COLLISION_TMP_B);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.collision.RectangularShapeCollisionChecker
 * JD-Core Version:    0.7.0.1
 */