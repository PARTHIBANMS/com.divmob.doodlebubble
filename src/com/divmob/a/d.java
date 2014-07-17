package com.divmob.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;

public class d
{
  public static final int a = 1;
  public static final int b = 2;
  
  public static InputStream a(String paramString)
    throws FileNotFoundException
  {
    return new FileInputStream(b(paramString));
  }
  
  public static void a(Context paramContext, int paramInt, String paramString)
    throws FileNotFoundException
  {
    a(paramContext, paramContext.getResources().openRawResource(paramInt), paramString);
  }
  
  public static void a(Context paramContext, InputStream paramInputStream, String paramString)
    throws FileNotFoundException
  {
    a(paramContext, paramInputStream, paramString, null);
  }
  
  public static void a(Context paramContext, InputStream paramInputStream, String paramString, h.b paramb)
    throws FileNotFoundException
  {
    if (a())
    {
      i.a(paramInputStream, new FileOutputStream(g(paramContext, paramString)), paramb);
      return;
    }
    throw new IllegalStateException("External Storage is not writeable.");
  }
  
  public static void a(Context paramContext, String paramString1, String paramString2)
    throws IOException
  {
    a(paramContext, paramContext.getAssets().open(paramString1), paramString2);
  }
  
  /* Error */
  public static void a(File paramFile1, File paramFile2)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 18	java/io/FileInputStream
    //   5: dup
    //   6: aload_0
    //   7: invokespecial 79	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   10: astore_3
    //   11: new 48	java/io/FileOutputStream
    //   14: dup
    //   15: aload_1
    //   16: invokespecial 80	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   19: astore 4
    //   21: aload_3
    //   22: aload 4
    //   24: invokestatic 83	com/divmob/a/i:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   27: aload_3
    //   28: invokestatic 86	com/divmob/a/i:a	(Ljava/io/Closeable;)V
    //   31: aload 4
    //   33: invokestatic 86	com/divmob/a/i:a	(Ljava/io/Closeable;)V
    //   36: return
    //   37: astore 5
    //   39: aconst_null
    //   40: astore 4
    //   42: aload_2
    //   43: invokestatic 86	com/divmob/a/i:a	(Ljava/io/Closeable;)V
    //   46: aload 4
    //   48: invokestatic 86	com/divmob/a/i:a	(Ljava/io/Closeable;)V
    //   51: aload 5
    //   53: athrow
    //   54: astore 5
    //   56: aload_3
    //   57: astore_2
    //   58: aconst_null
    //   59: astore 4
    //   61: goto -19 -> 42
    //   64: astore 5
    //   66: aload_3
    //   67: astore_2
    //   68: goto -26 -> 42
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	71	0	paramFile1	File
    //   0	71	1	paramFile2	File
    //   1	67	2	localObject1	Object
    //   10	57	3	localFileInputStream	FileInputStream
    //   19	41	4	localFileOutputStream	FileOutputStream
    //   37	15	5	localObject2	Object
    //   54	1	5	localObject3	Object
    //   64	1	5	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   2	11	37	finally
    //   11	21	54	finally
    //   21	27	64	finally
  }
  
  public static void a(InputStream paramInputStream, String paramString)
    throws FileNotFoundException
  {
    if (a())
    {
      i.b(paramInputStream, new FileOutputStream(b(paramString)));
      return;
    }
    throw new IllegalStateException("External Storage is not writeable.");
  }
  
  public static boolean a()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }
  
  public static boolean a(Context paramContext, int paramInt1, int paramInt2, int paramInt3, InputStream paramInputStream, String paramString, h.b paramb)
  {
    String str = paramString.hashCode();
    switch (paramInt1)
    {
    }
    for (;;)
    {
      return false;
      try
      {
        b(paramContext, paramInputStream, str, paramb);
        return true;
      }
      catch (FileNotFoundException localFileNotFoundException) {}
      Bitmap localBitmap = BitmapFactory.decodeStream(paramInputStream);
      if (localBitmap != null)
      {
        if ((paramInt3 > 0) && (paramInt2 > 0) && ((localBitmap.getHeight() > paramInt3) || (localBitmap.getWidth() > paramInt2))) {
          localBitmap = b.a(new Matrix(), localBitmap, paramInt2, paramInt3, false);
        }
        a(str, localBitmap, paramContext);
        paramb.a(localBitmap);
        return true;
      }
    }
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    if (b())
    {
      File localFile = new File(g(paramContext, paramString));
      return (localFile.exists()) && (localFile.isFile());
    }
    throw new IllegalStateException("External Storage is not readable.");
  }
  
  public static boolean a(File paramFile)
  {
    String[] arrayOfString;
    int i;
    if (paramFile.isDirectory())
    {
      arrayOfString = paramFile.list();
      i = arrayOfString.length;
    }
    for (int j = 0;; j++)
    {
      boolean bool1;
      if (j >= i) {
        bool1 = paramFile.delete();
      }
      boolean bool2;
      do
      {
        return bool1;
        bool2 = a(new File(paramFile, arrayOfString[j]));
        bool1 = false;
      } while (!bool2);
    }
  }
  
  public static boolean a(String paramString, Bitmap paramBitmap, Context paramContext)
  {
    if (a())
    {
      String str = g(paramContext, paramString);
      try
      {
        File localFile1 = new File(str);
        File localFile2 = localFile1.getParentFile();
        if (!localFile2.exists()) {
          localFile2.mkdirs();
        }
        if (localFile1.exists())
        {
          localFile1.delete();
          return true;
        }
        localFile1.createNewFile();
        FileOutputStream localFileOutputStream = new FileOutputStream(localFile1);
        paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localFileOutputStream);
        localFileOutputStream.flush();
        localFileOutputStream.close();
        return false;
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
        localFileNotFoundException.printStackTrace();
        return false;
      }
      catch (IOException localIOException)
      {
        localIOException.printStackTrace();
        return false;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return false;
      }
    }
    throw new IllegalStateException("External Storage is not writeable.");
  }
  
  public static String[] a(Context paramContext, String paramString, FilenameFilter paramFilenameFilter)
    throws FileNotFoundException
  {
    return new File(g(paramContext, paramString)).list(paramFilenameFilter);
  }
  
  public static String b(String paramString)
  {
    return Environment.getExternalStorageDirectory() + "/" + paramString;
  }
  
  public static void b(Context paramContext, int paramInt, String paramString)
    throws FileNotFoundException
  {
    b(paramContext, paramContext.getResources().openRawResource(paramInt), paramString);
  }
  
  private static void b(Context paramContext, InputStream paramInputStream, String paramString)
    throws FileNotFoundException
  {
    i.b(paramInputStream, new FileOutputStream(new File(paramContext.getFilesDir(), paramString)));
  }
  
  public static void b(Context paramContext, InputStream paramInputStream, String paramString, h.b paramb)
    throws FileNotFoundException
  {
    i.a(paramInputStream, new FileOutputStream(new File(paramContext.getFilesDir(), paramString)), paramb);
  }
  
  public static void b(Context paramContext, String paramString1, String paramString2)
    throws IOException
  {
    b(paramContext, paramContext.getAssets().open(paramString1), paramString2);
  }
  
  public static boolean b()
  {
    String str = Environment.getExternalStorageState();
    return (str.equals("mounted")) || (str.equals("mounted_ro"));
  }
  
  public static boolean b(Context paramContext, String paramString)
  {
    if (b())
    {
      File localFile = new File(g(paramContext, paramString));
      return (localFile.exists()) && (localFile.isDirectory());
    }
    throw new IllegalStateException("External Storage is not readable.");
  }
  
  public static boolean c(Context paramContext, String paramString)
  {
    if (b(paramContext, paramString)) {
      return true;
    }
    if (a()) {
      return new File(g(paramContext, paramString)).mkdirs();
    }
    throw new IllegalStateException("External Storage is not writeable.");
  }
  
  public static InputStream d(Context paramContext, String paramString)
    throws FileNotFoundException
  {
    return new FileInputStream(g(paramContext, paramString));
  }
  
  public static String[] e(Context paramContext, String paramString)
    throws FileNotFoundException
  {
    return new File(g(paramContext, paramString)).list();
  }
  
  public static String f(Context paramContext, String paramString)
  {
    return paramContext.getFilesDir().getAbsolutePath() + paramString;
  }
  
  public static String g(Context paramContext, String paramString)
  {
    return Environment.getExternalStorageDirectory() + "/.divmob/" + paramContext.getApplicationInfo().packageName + "/" + paramString;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.a.d
 * JD-Core Version:    0.7.0.1
 */