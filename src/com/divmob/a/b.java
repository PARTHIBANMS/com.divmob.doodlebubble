

android.content.Context
android.content.res.Resources
android.graphics.Bitmap
android.graphics.Bitmap.Config
android.graphics.BitmapFactory
android.graphics.BitmapFactory.Options
android.graphics.Canvas
android.graphics.Matrix
android.graphics.Paint
android.graphics.PorterDuff.Mode
android.graphics.PorterDuffXfermode
android.graphics.Rect
android.graphics.RectF
android.text.TextUtils
java.io.File
java.io.FileInputStream
java.io.FileOutputStream
java.io.IOException
java.io.InputStream
java.io.OutputStream

b

  a = -1
  
  a, , , 
  
     = ()
    inJustDecodeBounds = true;
    BitmapFactory.decodeResource(paramResources, paramInt1, localOptions);
    int i = paramInt2 * paramInt3;
    return a(localOptions, Math.min(paramInt2, paramInt3) / 2, i);
  }
  
  public static int a(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    int i = b(paramOptions, paramInt1, paramInt2);
    if (i <= 8)
    {
      int j = 1;
      for (;;)
      {
        if (j >= i) {
          return j;
        }
        j <<= 1;
      }
    }
    return 8 * ((i + 7) / 8);
  }
  
  public static int a(InputStream paramInputStream, int paramInt1, int paramInt2)
  {
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = true;
    BitmapFactory.decodeStream(paramInputStream, null, localOptions);
    int i = paramInt1 * paramInt2;
    return a(localOptions, Math.min(paramInt1, paramInt2) / 2, i);
  }
  
  public static Bitmap a(Context paramContext, int paramInt, float paramFloat1, float paramFloat2)
  {
    if ((a(paramFloat2)) && (a(paramFloat1))) {
      return BitmapFactory.decodeResource(paramContext.getResources(), paramInt);
    }
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    BitmapFactory.decodeResource(paramContext.getResources(), paramInt, localOptions);
    int i;
    if ((paramFloat2 <= 0.0F) || (paramFloat1 <= 0.0F)) {
      i = localOptions.outWidth;
    }
    for (int j = localOptions.outHeight;; j = (int)(paramFloat2 * localOptions.outHeight))
    {
      return a(new Matrix(), BitmapFactory.decodeResource(paramContext.getResources(), paramInt, localOptions), i, j, true);
      i = (int)(paramFloat1 * localOptions.outWidth);
    }
  }
  
  public static Bitmap a(Bitmap paramBitmap)
  {
    Bitmap localBitmap = Bitmap.createBitmap(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888);
    new Canvas(localBitmap).drawBitmap(paramBitmap, 0.0F, 0.0F, null);
    return localBitmap;
  }
  
  public static Bitmap a(Bitmap paramBitmap, float paramFloat)
  {
    Bitmap localBitmap = Bitmap.createBitmap(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    Paint localPaint = new Paint();
    Rect localRect = new Rect(0, 0, paramBitmap.getWidth(), paramBitmap.getHeight());
    RectF localRectF = new RectF(localRect);
    localPaint.setAntiAlias(true);
    localCanvas.drawARGB(0, 0, 0, 0);
    localPaint.setColor(-12434878);
    localCanvas.drawRoundRect(localRectF, paramFloat, paramFloat, localPaint);
    localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    localCanvas.drawBitmap(paramBitmap, localRect, localRect, localPaint);
    if (paramBitmap != localBitmap) {
      paramBitmap.recycle();
    }
    return localBitmap;
  }
  
  public static Bitmap a(Bitmap paramBitmap, float paramFloat1, float paramFloat2)
  {
    if ((a(paramFloat2)) && (a(paramFloat1))) {
      return paramBitmap;
    }
    int i = (int)(paramFloat1 * paramBitmap.getWidth());
    int j = (int)(paramFloat2 * paramBitmap.getHeight());
    return a(new Matrix(), paramBitmap, i, j, true);
  }
  
  public static Bitmap a(Bitmap paramBitmap, int paramInt)
  {
    Matrix localMatrix;
    if ((paramInt != 0) && (paramBitmap != null))
    {
      localMatrix = new Matrix();
      localMatrix.setRotate(paramInt, paramBitmap.getWidth() / 2.0F, paramBitmap.getHeight() / 2.0F);
    }
    try
    {
      int i = paramBitmap.getWidth();
      int j = paramBitmap.getHeight();
      Bitmap localBitmap = Bitmap.createBitmap(paramBitmap, 0, 0, i, j, localMatrix, true);
      if (paramBitmap != localBitmap)
      {
        paramBitmap.recycle();
        paramBitmap = localBitmap;
      }
      return paramBitmap;
    }
    catch (OutOfMemoryError localOutOfMemoryError) {}
    return paramBitmap;
  }
  
  public static Bitmap a(Matrix paramMatrix, Bitmap paramBitmap, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBitmap == null) {
      return null;
    }
    int i = paramBitmap.getWidth() - paramInt1;
    int j = paramBitmap.getHeight() - paramInt2;
    if ((!paramBoolean) && ((i < 0) || (j < 0)))
    {
      Bitmap localBitmap3 = Bitmap.createBitmap(paramInt1, paramInt2, Bitmap.Config.ARGB_8888);
      Canvas localCanvas = new Canvas(localBitmap3);
      int n = Math.max(0, i / 2);
      int i1 = Math.max(0, j / 2);
      Rect localRect = new Rect(n, i1, n + Math.min(paramInt1, paramBitmap.getWidth()), i1 + Math.min(paramInt2, paramBitmap.getHeight()));
      int i2 = (paramInt1 - localRect.width()) / 2;
      int i3 = (paramInt2 - localRect.height()) / 2;
      localCanvas.drawBitmap(paramBitmap, localRect, new Rect(i2, i3, paramInt1 - i2, paramInt2 - i3), null);
      return localBitmap3;
    }
    float f1 = paramBitmap.getWidth();
    float f2 = paramBitmap.getHeight();
    float f3 = paramInt1 / f1;
    Matrix localMatrix;
    if ((f3 == paramInt2 / f2) && (f3 == 1.0F))
    {
      localMatrix = null;
      if (localMatrix == null) {
        break label309;
      }
    }
    label309:
    for (Bitmap localBitmap1 = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), localMatrix, true);; localBitmap1 = paramBitmap)
    {
      int k = Math.max(0, localBitmap1.getWidth() - paramInt1);
      int m = Math.max(0, localBitmap1.getHeight() - paramInt2);
      Bitmap localBitmap2 = Bitmap.createBitmap(localBitmap1, k / 2, m / 2, paramInt1, paramInt2);
      if (localBitmap1 != paramBitmap) {
        localBitmap1.recycle();
      }
      return localBitmap2;
      paramMatrix.setScale(paramInt1 / f1, paramInt2 / f2);
      localMatrix = paramMatrix;
      break;
    }
  }
  
  public static Bitmap a(String paramString, float paramFloat1, float paramFloat2)
  {
    if (TextUtils.isEmpty(paramString)) {
      return null;
    }
    if ((a(paramFloat2)) && (a(paramFloat1))) {
      return BitmapFactory.decodeFile(paramString);
    }
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    BitmapFactory.decodeFile(paramString, localOptions);
    int i = (int)(paramFloat1 * localOptions.outWidth);
    int j = (int)(paramFloat2 * localOptions.outHeight);
    return a(new Matrix(), BitmapFactory.decodeFile(paramString, localOptions), i, j, true);
  }
  
  public static void a(File paramFile1, File paramFile2)
    throws IOException
  {
    a(new FileInputStream(paramFile1), new FileOutputStream(paramFile2));
  }
  
  public static void a(InputStream paramInputStream, OutputStream paramOutputStream)
    throws IOException
  {
    byte[] arrayOfByte = new byte[1024];
    for (;;)
    {
      int i = paramInputStream.read(arrayOfByte);
      if (i <= 0)
      {
        paramInputStream.close();
        paramOutputStream.close();
        return;
      }
      paramOutputStream.write(arrayOfByte, 0, i);
    }
  }
  
  private static boolean a(float paramFloat)
  {
    return (0.97F <= paramFloat) && (paramFloat <= 1.03D);
  }
  
  private static int b(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    double d1 = paramOptions.outWidth;
    double d2 = paramOptions.outHeight;
    int i;
    int j;
    if (paramInt2 == -1)
    {
      i = 1;
      if (paramInt1 != -1) {
        break label60;
      }
      j = 128;
      label31:
      if (j >= i) {
        break label84;
      }
    }
    label60:
    label84:
    do
    {
      return i;
      i = (int)Math.ceil(Math.sqrt(d1 * d2 / paramInt2));
      break;
      j = (int)Math.min(Math.floor(d1 / paramInt1), Math.floor(d2 / paramInt1));
      break label31;
      if ((paramInt2 == -1) && (paramInt1 == -1)) {
        return 1;
      }
    } while (paramInt1 == -1);
    return j;
  }
  
  public static final Bitmap b(Bitmap paramBitmap, int paramInt)
  {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    int k;
    int m;
    if (i > j)
    {
      if (i <= paramInt) {
        break label70;
      }
      int n = paramInt * j / i;
      k = paramInt;
      paramInt = n;
      m = 1;
    }
    for (;;)
    {
      if (m != 0) {
        paramBitmap = Bitmap.createScaledBitmap(paramBitmap, k, paramInt, true);
      }
      return paramBitmap;
      if (j > paramInt)
      {
        k = paramInt * i / j;
        m = 1;
      }
      else
      {
        label70:
        k = paramInt;
        m = 0;
      }
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.a.b
 * JD-Core Version:    0.7.0.1
 */