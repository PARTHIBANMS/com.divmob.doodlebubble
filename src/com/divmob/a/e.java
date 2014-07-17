package com.divmob.a;

import android.content.Context;
import java.io.IOException;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.DefaultHttpClient;

public class e
  extends h
{
  public e(Context paramContext)
  {
    super(paramContext);
  }
  
  public e(Context paramContext, c paramc)
  {
    super(paramContext, paramc);
  }
  
  public static HttpEntity a(String paramString)
  {
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient();
    HttpGet localHttpGet = new HttpGet(paramString);
    try
    {
      HttpResponse localHttpResponse = localDefaultHttpClient.execute(localHttpGet);
      if (localHttpResponse.getStatusLine().getStatusCode() != 200) {
        return null;
      }
      HttpEntity localHttpEntity = localHttpResponse.getEntity();
      return localHttpEntity;
    }
    catch (IOException localIOException)
    {
      localHttpGet.abort();
      return null;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      localHttpGet.abort();
      return null;
    }
    catch (Exception localException)
    {
      localHttpGet.abort();
    }
    return null;
  }
  
  /* Error */
  public boolean a(h.a parama)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 59	com/divmob/a/e:g	Lcom/divmob/a/c;
    //   4: ifnull +14 -> 18
    //   7: aload_0
    //   8: getfield 59	com/divmob/a/e:g	Lcom/divmob/a/c;
    //   11: aload_0
    //   12: aload_1
    //   13: invokeinterface 64 3 0
    //   18: aload_1
    //   19: getfield 70	com/divmob/a/h$a:b	Ljava/lang/String;
    //   22: invokestatic 72	com/divmob/a/e:a	(Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    //   25: astore_2
    //   26: aload_2
    //   27: ifnull +90 -> 117
    //   30: aload_2
    //   31: invokeinterface 78 1 0
    //   36: lstore 5
    //   38: aload_2
    //   39: invokeinterface 82 1 0
    //   44: astore 10
    //   46: aload_1
    //   47: getfield 86	com/divmob/a/h$a:c	I
    //   50: iconst_2
    //   51: if_icmpeq +22 -> 73
    //   54: aload_0
    //   55: getfield 59	com/divmob/a/e:g	Lcom/divmob/a/c;
    //   58: ifnull +15 -> 73
    //   61: aload_0
    //   62: getfield 59	com/divmob/a/e:g	Lcom/divmob/a/c;
    //   65: aload_1
    //   66: aload 10
    //   68: invokeinterface 89 3 0
    //   73: aload_1
    //   74: getfield 86	com/divmob/a/h$a:c	I
    //   77: ifeq +40 -> 117
    //   80: aload_0
    //   81: getfield 92	com/divmob/a/e:a	Landroid/content/Context;
    //   84: aload_1
    //   85: getfield 86	com/divmob/a/h$a:c	I
    //   88: aload_1
    //   89: getfield 95	com/divmob/a/h$a:d	I
    //   92: aload_1
    //   93: getfield 98	com/divmob/a/h$a:e	I
    //   96: aload 10
    //   98: aload_1
    //   99: getfield 70	com/divmob/a/h$a:b	Ljava/lang/String;
    //   102: new 100	com/divmob/a/f
    //   105: dup
    //   106: aload_0
    //   107: aload_1
    //   108: lload 5
    //   110: invokespecial 103	com/divmob/a/f:<init>	(Lcom/divmob/a/e;Lcom/divmob/a/h$a;J)V
    //   113: invokestatic 108	com/divmob/a/d:a	(Landroid/content/Context;IIILjava/io/InputStream;Ljava/lang/String;Lcom/divmob/a/h$b;)Z
    //   116: pop
    //   117: aload_0
    //   118: getfield 59	com/divmob/a/e:g	Lcom/divmob/a/c;
    //   121: ifnull +14 -> 135
    //   124: aload_0
    //   125: getfield 59	com/divmob/a/e:g	Lcom/divmob/a/c;
    //   128: aload_0
    //   129: aload_1
    //   130: invokeinterface 110 3 0
    //   135: aload_0
    //   136: getfield 114	com/divmob/a/e:f	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   139: iconst_0
    //   140: invokevirtual 120	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   143: aload_0
    //   144: getfield 114	com/divmob/a/e:f	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   147: astore_3
    //   148: aload_3
    //   149: monitorenter
    //   150: aload_0
    //   151: getfield 114	com/divmob/a/e:f	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   154: invokevirtual 125	java/lang/Object:notifyAll	()V
    //   157: aload_3
    //   158: monitorexit
    //   159: iconst_1
    //   160: ireturn
    //   161: astore 9
    //   163: aload 9
    //   165: invokevirtual 128	java/lang/IllegalStateException:printStackTrace	()V
    //   168: goto -51 -> 117
    //   171: astore 8
    //   173: aload 8
    //   175: invokevirtual 129	java/io/IOException:printStackTrace	()V
    //   178: goto -61 -> 117
    //   181: astore 7
    //   183: aload 7
    //   185: invokevirtual 130	java/lang/Exception:printStackTrace	()V
    //   188: iconst_0
    //   189: ireturn
    //   190: astore 4
    //   192: aload_3
    //   193: monitorexit
    //   194: aload 4
    //   196: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	197	0	this	e
    //   0	197	1	parama	h.a
    //   25	14	2	localHttpEntity	HttpEntity
    //   190	5	4	localObject	java.lang.Object
    //   36	73	5	l	long
    //   181	3	7	localException	Exception
    //   171	3	8	localIOException	IOException
    //   161	3	9	localIllegalStateException	IllegalStateException
    //   44	53	10	localInputStream	java.io.InputStream
    // Exception table:
    //   from	to	target	type
    //   38	73	161	java/lang/IllegalStateException
    //   73	117	161	java/lang/IllegalStateException
    //   38	73	171	java/io/IOException
    //   73	117	171	java/io/IOException
    //   38	73	181	java/lang/Exception
    //   73	117	181	java/lang/Exception
    //   150	159	190	finally
    //   192	194	190	finally
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.divmob.a.e
 * JD-Core Version:    0.7.0.1
 */