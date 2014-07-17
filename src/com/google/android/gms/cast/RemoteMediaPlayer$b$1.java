package com.google.android.gms.cast;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.dx;
import org.json.JSONObject;

class RemoteMediaPlayer$b$1
  implements dx
{
  RemoteMediaPlayer$b$1(RemoteMediaPlayer.b paramb) {}
  
  public void a(long paramLong, int paramInt, JSONObject paramJSONObject)
  {
    this.xz.a(new RemoteMediaPlayer.c(new Status(paramInt), paramJSONObject));
  }
  
  public void k(long paramLong)
  {
    this.xz.a(this.xz.j(new Status(4)));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.cast.RemoteMediaPlayer.b.1
 * JD-Core Version:    0.7.0.1
 */