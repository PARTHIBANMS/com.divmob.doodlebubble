package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import com.google.android.gms.internal.d.a;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

class ao
  extends aj
{
  private static final String ID = a.al.toString();
  private static final String US = b.bt.toString();
  private static final String UU = b.cS.toString();
  private static final String UY = b.bk.toString();
  
  public ao()
  {
    super(str, arrayOfString);
  }
  
  private byte[] c(String paramString, byte[] paramArrayOfByte)
    throws NoSuchAlgorithmException
  {
    MessageDigest localMessageDigest = MessageDigest.getInstance(paramString);
    localMessageDigest.update(paramArrayOfByte);
    return localMessageDigest.digest();
  }
  
  public boolean iy()
  {
    return true;
  }
  
  public d.a u(Map<String, d.a> paramMap)
  {
    d.a locala1 = (d.a)paramMap.get(US);
    if ((locala1 == null) || (locala1 == di.ku())) {
      return di.ku();
    }
    String str1 = di.j(locala1);
    d.a locala2 = (d.a)paramMap.get(UY);
    String str2;
    d.a locala3;
    String str3;
    label79:
    byte[] arrayOfByte;
    if (locala2 == null)
    {
      str2 = "MD5";
      locala3 = (d.a)paramMap.get(UU);
      if (locala3 != null) {
        break label124;
      }
      str3 = "text";
      if (!"text".equals(str3)) {
        break label134;
      }
      arrayOfByte = str1.getBytes();
    }
    for (;;)
    {
      label134:
      try
      {
        d.a locala4 = di.r(j.d(c(str2, arrayOfByte)));
        return locala4;
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        label124:
        bh.t("Hash: unknown algorithm: " + str2);
      }
      str2 = di.j(locala2);
      break;
      str3 = di.j(locala3);
      break label79;
      if ("base16".equals(str3))
      {
        arrayOfByte = j.aX(str1);
      }
      else
      {
        bh.t("Hash: unknown input format: " + str3);
        return di.ku();
      }
    }
    return di.ku();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.tagmanager.ao
 * JD-Core Version:    0.7.0.1
 */