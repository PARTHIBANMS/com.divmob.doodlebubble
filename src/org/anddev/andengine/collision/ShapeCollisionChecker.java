package org.anddev.andengine.collision;

public class ShapeCollisionChecker
  extends BaseCollisionChecker
{
  public static boolean checkCollision(int paramInt1, float[] paramArrayOfFloat1, int paramInt2, float[] paramArrayOfFloat2)
  {
    int i = paramInt1 - 4;
    if (i < 0) {
      if (!checkCollisionSub(paramInt1 - 2, 0, paramArrayOfFloat1, paramArrayOfFloat2, paramInt2)) {
        break label46;
      }
    }
    label46:
    while ((checkContains(paramArrayOfFloat1, paramInt1, paramArrayOfFloat2[0], paramArrayOfFloat2[1])) || (checkContains(paramArrayOfFloat2, paramInt2, paramArrayOfFloat1[0], paramArrayOfFloat1[1])))
    {
      do
      {
        return true;
      } while (checkCollisionSub(i, i + 2, paramArrayOfFloat1, paramArrayOfFloat2, paramInt2));
      i -= 2;
      break;
    }
    return false;
  }
  
  private static boolean checkCollisionSub(int paramInt1, int paramInt2, float[] paramArrayOfFloat1, float[] paramArrayOfFloat2, int paramInt3)
  {
    float f1 = paramArrayOfFloat1[(paramInt1 + 0)];
    float f2 = paramArrayOfFloat1[(paramInt1 + 1)];
    float f3 = paramArrayOfFloat1[(paramInt2 + 0)];
    float f4 = paramArrayOfFloat1[(paramInt2 + 1)];
    for (int i = paramInt3 - 4;; i -= 2)
    {
      if (i < 0)
      {
        if (!LineCollisionChecker.checkLineCollision(f1, f2, f3, f4, paramArrayOfFloat2[(paramInt3 - 2)], paramArrayOfFloat2[(paramInt3 - 1)], paramArrayOfFloat2[0], paramArrayOfFloat2[1])) {
          break;
        }
        return true;
      }
      if (LineCollisionChecker.checkLineCollision(f1, f2, f3, f4, paramArrayOfFloat2[(i + 0)], paramArrayOfFloat2[(i + 1)], paramArrayOfFloat2[(0 + (i + 2))], paramArrayOfFloat2[(1 + (i + 2))])) {
        return true;
      }
    }
    return false;
  }
  
  public static boolean checkContains(float[] paramArrayOfFloat, int paramInt, float paramFloat1, float paramFloat2)
  {
    int i = paramInt - 4;
    int n;
    int m;
    for (int j = 0;; j = m)
    {
      if (i < 0)
      {
        n = BaseCollisionChecker.relativeCCW(paramArrayOfFloat[(paramInt - 2)], paramArrayOfFloat[(paramInt - 1)], paramArrayOfFloat[0], paramArrayOfFloat[1], paramFloat1, paramFloat2);
        if (n != 0) {
          break;
        }
        return true;
      }
      int k = BaseCollisionChecker.relativeCCW(paramArrayOfFloat[i], paramArrayOfFloat[(i + 1)], paramArrayOfFloat[(i + 2)], paramArrayOfFloat[(i + 3)], paramFloat1, paramFloat2);
      if (k == 0) {
        return true;
      }
      m = j + k;
      i -= 2;
    }
    int i1 = n + j;
    int i2 = paramInt / 2;
    return (i1 == i2) || (i1 == -i2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.collision.ShapeCollisionChecker
 * JD-Core Version:    0.7.0.1
 */