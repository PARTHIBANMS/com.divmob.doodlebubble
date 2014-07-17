package org.anddev.andengine.util;

import java.io.UnsupportedEncodingException;

public class Base64
{
  public static final int CRLF = 4;
  public static final int DEFAULT = 0;
  public static final int NO_CLOSE = 16;
  public static final int NO_PADDING = 1;
  public static final int NO_WRAP = 2;
  public static final int URL_SAFE = 8;
  
  static
  {
    if (!Base64.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  public static byte[] decode(String paramString, int paramInt)
  {
    return decode(paramString.getBytes(), paramInt);
  }
  
  public static byte[] decode(byte[] paramArrayOfByte, int paramInt)
  {
    return decode(paramArrayOfByte, 0, paramArrayOfByte.length, paramInt);
  }
  
  public static byte[] decode(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    Decoder localDecoder = new Decoder(paramInt3, new byte[paramInt2 * 3 / 4]);
    if (!localDecoder.process(paramArrayOfByte, paramInt1, paramInt2, true)) {
      throw new IllegalArgumentException("bad base-64");
    }
    if (localDecoder.op == localDecoder.output.length) {
      return localDecoder.output;
    }
    byte[] arrayOfByte = new byte[localDecoder.op];
    System.arraycopy(localDecoder.output, 0, arrayOfByte, 0, localDecoder.op);
    return arrayOfByte;
  }
  
  public static byte[] encode(byte[] paramArrayOfByte, int paramInt)
  {
    return encode(paramArrayOfByte, 0, paramArrayOfByte.length, paramInt);
  }
  
  public static byte[] encode(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    Encoder localEncoder = new Encoder(paramInt3, null);
    int i = 4 * (paramInt2 / 3);
    int j;
    if (localEncoder.do_padding)
    {
      if (paramInt2 % 3 > 0) {
        i += 4;
      }
      if ((localEncoder.do_newline) && (paramInt2 > 0))
      {
        j = 1 + (paramInt2 - 1) / 57;
        if (!localEncoder.do_cr) {
          break label167;
        }
      }
    }
    label167:
    for (int k = 2;; k = 1)
    {
      i += k * j;
      localEncoder.output = new byte[i];
      localEncoder.process(paramArrayOfByte, paramInt1, paramInt2, true);
      if (($assertionsDisabled) || (localEncoder.op == i)) {
        break label173;
      }
      throw new AssertionError();
      switch (paramInt2 % 3)
      {
      case 0: 
      default: 
        break;
      case 1: 
        i += 2;
        break;
      case 2: 
        i += 3;
        break;
      }
    }
    label173:
    return localEncoder.output;
  }
  
  public static String encodeToString(byte[] paramArrayOfByte, int paramInt)
  {
    try
    {
      String str = new String(encode(paramArrayOfByte, paramInt), "US-ASCII");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError(localUnsupportedEncodingException);
    }
  }
  
  public static String encodeToString(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      String str = new String(encode(paramArrayOfByte, paramInt1, paramInt2, paramInt3), "US-ASCII");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError(localUnsupportedEncodingException);
    }
  }
  
  static abstract class Coder
  {
    public int op;
    public byte[] output;
    
    public abstract int maxOutputSize(int paramInt);
    
    public abstract boolean process(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean);
  }
  
  static class Decoder
    extends Base64.Coder
  {
    private static final int[] DECODE;
    private static final int[] DECODE_WEBSAFE;
    private static final int EQUALS = -2;
    private static final int SKIP = -1;
    private final int[] alphabet;
    private int state;
    private int value;
    
    static
    {
      int[] arrayOfInt1 = new int[256];
      arrayOfInt1[0] = -1;
      arrayOfInt1[1] = -1;
      arrayOfInt1[2] = -1;
      arrayOfInt1[3] = -1;
      arrayOfInt1[4] = -1;
      arrayOfInt1[5] = -1;
      arrayOfInt1[6] = -1;
      arrayOfInt1[7] = -1;
      arrayOfInt1[8] = -1;
      arrayOfInt1[9] = -1;
      arrayOfInt1[10] = -1;
      arrayOfInt1[11] = -1;
      arrayOfInt1[12] = -1;
      arrayOfInt1[13] = -1;
      arrayOfInt1[14] = -1;
      arrayOfInt1[15] = -1;
      arrayOfInt1[16] = -1;
      arrayOfInt1[17] = -1;
      arrayOfInt1[18] = -1;
      arrayOfInt1[19] = -1;
      arrayOfInt1[20] = -1;
      arrayOfInt1[21] = -1;
      arrayOfInt1[22] = -1;
      arrayOfInt1[23] = -1;
      arrayOfInt1[24] = -1;
      arrayOfInt1[25] = -1;
      arrayOfInt1[26] = -1;
      arrayOfInt1[27] = -1;
      arrayOfInt1[28] = -1;
      arrayOfInt1[29] = -1;
      arrayOfInt1[30] = -1;
      arrayOfInt1[31] = -1;
      arrayOfInt1[32] = -1;
      arrayOfInt1[33] = -1;
      arrayOfInt1[34] = -1;
      arrayOfInt1[35] = -1;
      arrayOfInt1[36] = -1;
      arrayOfInt1[37] = -1;
      arrayOfInt1[38] = -1;
      arrayOfInt1[39] = -1;
      arrayOfInt1[40] = -1;
      arrayOfInt1[41] = -1;
      arrayOfInt1[42] = -1;
      arrayOfInt1[43] = 62;
      arrayOfInt1[44] = -1;
      arrayOfInt1[45] = -1;
      arrayOfInt1[46] = -1;
      arrayOfInt1[47] = 63;
      arrayOfInt1[48] = 52;
      arrayOfInt1[49] = 53;
      arrayOfInt1[50] = 54;
      arrayOfInt1[51] = 55;
      arrayOfInt1[52] = 56;
      arrayOfInt1[53] = 57;
      arrayOfInt1[54] = 58;
      arrayOfInt1[55] = 59;
      arrayOfInt1[56] = 60;
      arrayOfInt1[57] = 61;
      arrayOfInt1[58] = -1;
      arrayOfInt1[59] = -1;
      arrayOfInt1[60] = -1;
      arrayOfInt1[61] = -2;
      arrayOfInt1[62] = -1;
      arrayOfInt1[63] = -1;
      arrayOfInt1[64] = -1;
      arrayOfInt1[66] = 1;
      arrayOfInt1[67] = 2;
      arrayOfInt1[68] = 3;
      arrayOfInt1[69] = 4;
      arrayOfInt1[70] = 5;
      arrayOfInt1[71] = 6;
      arrayOfInt1[72] = 7;
      arrayOfInt1[73] = 8;
      arrayOfInt1[74] = 9;
      arrayOfInt1[75] = 10;
      arrayOfInt1[76] = 11;
      arrayOfInt1[77] = 12;
      arrayOfInt1[78] = 13;
      arrayOfInt1[79] = 14;
      arrayOfInt1[80] = 15;
      arrayOfInt1[81] = 16;
      arrayOfInt1[82] = 17;
      arrayOfInt1[83] = 18;
      arrayOfInt1[84] = 19;
      arrayOfInt1[85] = 20;
      arrayOfInt1[86] = 21;
      arrayOfInt1[87] = 22;
      arrayOfInt1[88] = 23;
      arrayOfInt1[89] = 24;
      arrayOfInt1[90] = 25;
      arrayOfInt1[91] = -1;
      arrayOfInt1[92] = -1;
      arrayOfInt1[93] = -1;
      arrayOfInt1[94] = -1;
      arrayOfInt1[95] = -1;
      arrayOfInt1[96] = -1;
      arrayOfInt1[97] = 26;
      arrayOfInt1[98] = 27;
      arrayOfInt1[99] = 28;
      arrayOfInt1[100] = 29;
      arrayOfInt1[101] = 30;
      arrayOfInt1[102] = 31;
      arrayOfInt1[103] = 32;
      arrayOfInt1[104] = 33;
      arrayOfInt1[105] = 34;
      arrayOfInt1[106] = 35;
      arrayOfInt1[107] = 36;
      arrayOfInt1[108] = 37;
      arrayOfInt1[109] = 38;
      arrayOfInt1[110] = 39;
      arrayOfInt1[111] = 40;
      arrayOfInt1[112] = 41;
      arrayOfInt1[113] = 42;
      arrayOfInt1[114] = 43;
      arrayOfInt1[115] = 44;
      arrayOfInt1[116] = 45;
      arrayOfInt1[117] = 46;
      arrayOfInt1[118] = 47;
      arrayOfInt1[119] = 48;
      arrayOfInt1[120] = 49;
      arrayOfInt1[121] = 50;
      arrayOfInt1[122] = 51;
      arrayOfInt1[123] = -1;
      arrayOfInt1[124] = -1;
      arrayOfInt1[125] = -1;
      arrayOfInt1[126] = -1;
      arrayOfInt1[127] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[' '] = -1;
      arrayOfInt1['¡'] = -1;
      arrayOfInt1['¢'] = -1;
      arrayOfInt1['£'] = -1;
      arrayOfInt1['¤'] = -1;
      arrayOfInt1['¥'] = -1;
      arrayOfInt1['¦'] = -1;
      arrayOfInt1['§'] = -1;
      arrayOfInt1['¨'] = -1;
      arrayOfInt1['©'] = -1;
      arrayOfInt1['ª'] = -1;
      arrayOfInt1['«'] = -1;
      arrayOfInt1['¬'] = -1;
      arrayOfInt1['­'] = -1;
      arrayOfInt1['®'] = -1;
      arrayOfInt1['¯'] = -1;
      arrayOfInt1['°'] = -1;
      arrayOfInt1['±'] = -1;
      arrayOfInt1['²'] = -1;
      arrayOfInt1['³'] = -1;
      arrayOfInt1['´'] = -1;
      arrayOfInt1['µ'] = -1;
      arrayOfInt1['¶'] = -1;
      arrayOfInt1['·'] = -1;
      arrayOfInt1['¸'] = -1;
      arrayOfInt1['¹'] = -1;
      arrayOfInt1['º'] = -1;
      arrayOfInt1['»'] = -1;
      arrayOfInt1['¼'] = -1;
      arrayOfInt1['½'] = -1;
      arrayOfInt1['¾'] = -1;
      arrayOfInt1['¿'] = -1;
      arrayOfInt1['À'] = -1;
      arrayOfInt1['Á'] = -1;
      arrayOfInt1['Â'] = -1;
      arrayOfInt1['Ã'] = -1;
      arrayOfInt1['Ä'] = -1;
      arrayOfInt1['Å'] = -1;
      arrayOfInt1['Æ'] = -1;
      arrayOfInt1['Ç'] = -1;
      arrayOfInt1['È'] = -1;
      arrayOfInt1['É'] = -1;
      arrayOfInt1['Ê'] = -1;
      arrayOfInt1['Ë'] = -1;
      arrayOfInt1['Ì'] = -1;
      arrayOfInt1['Í'] = -1;
      arrayOfInt1['Î'] = -1;
      arrayOfInt1['Ï'] = -1;
      arrayOfInt1['Ð'] = -1;
      arrayOfInt1['Ñ'] = -1;
      arrayOfInt1['Ò'] = -1;
      arrayOfInt1['Ó'] = -1;
      arrayOfInt1['Ô'] = -1;
      arrayOfInt1['Õ'] = -1;
      arrayOfInt1['Ö'] = -1;
      arrayOfInt1['×'] = -1;
      arrayOfInt1['Ø'] = -1;
      arrayOfInt1['Ù'] = -1;
      arrayOfInt1['Ú'] = -1;
      arrayOfInt1['Û'] = -1;
      arrayOfInt1['Ü'] = -1;
      arrayOfInt1['Ý'] = -1;
      arrayOfInt1['Þ'] = -1;
      arrayOfInt1['ß'] = -1;
      arrayOfInt1['à'] = -1;
      arrayOfInt1['á'] = -1;
      arrayOfInt1['â'] = -1;
      arrayOfInt1['ã'] = -1;
      arrayOfInt1['ä'] = -1;
      arrayOfInt1['å'] = -1;
      arrayOfInt1['æ'] = -1;
      arrayOfInt1['ç'] = -1;
      arrayOfInt1['è'] = -1;
      arrayOfInt1['é'] = -1;
      arrayOfInt1['ê'] = -1;
      arrayOfInt1['ë'] = -1;
      arrayOfInt1['ì'] = -1;
      arrayOfInt1['í'] = -1;
      arrayOfInt1['î'] = -1;
      arrayOfInt1['ï'] = -1;
      arrayOfInt1['ð'] = -1;
      arrayOfInt1['ñ'] = -1;
      arrayOfInt1['ò'] = -1;
      arrayOfInt1['ó'] = -1;
      arrayOfInt1['ô'] = -1;
      arrayOfInt1['õ'] = -1;
      arrayOfInt1['ö'] = -1;
      arrayOfInt1['÷'] = -1;
      arrayOfInt1['ø'] = -1;
      arrayOfInt1['ù'] = -1;
      arrayOfInt1['ú'] = -1;
      arrayOfInt1['û'] = -1;
      arrayOfInt1['ü'] = -1;
      arrayOfInt1['ý'] = -1;
      arrayOfInt1['þ'] = -1;
      arrayOfInt1['ÿ'] = -1;
      DECODE = arrayOfInt1;
      int[] arrayOfInt2 = new int[256];
      arrayOfInt2[0] = -1;
      arrayOfInt2[1] = -1;
      arrayOfInt2[2] = -1;
      arrayOfInt2[3] = -1;
      arrayOfInt2[4] = -1;
      arrayOfInt2[5] = -1;
      arrayOfInt2[6] = -1;
      arrayOfInt2[7] = -1;
      arrayOfInt2[8] = -1;
      arrayOfInt2[9] = -1;
      arrayOfInt2[10] = -1;
      arrayOfInt2[11] = -1;
      arrayOfInt2[12] = -1;
      arrayOfInt2[13] = -1;
      arrayOfInt2[14] = -1;
      arrayOfInt2[15] = -1;
      arrayOfInt2[16] = -1;
      arrayOfInt2[17] = -1;
      arrayOfInt2[18] = -1;
      arrayOfInt2[19] = -1;
      arrayOfInt2[20] = -1;
      arrayOfInt2[21] = -1;
      arrayOfInt2[22] = -1;
      arrayOfInt2[23] = -1;
      arrayOfInt2[24] = -1;
      arrayOfInt2[25] = -1;
      arrayOfInt2[26] = -1;
      arrayOfInt2[27] = -1;
      arrayOfInt2[28] = -1;
      arrayOfInt2[29] = -1;
      arrayOfInt2[30] = -1;
      arrayOfInt2[31] = -1;
      arrayOfInt2[32] = -1;
      arrayOfInt2[33] = -1;
      arrayOfInt2[34] = -1;
      arrayOfInt2[35] = -1;
      arrayOfInt2[36] = -1;
      arrayOfInt2[37] = -1;
      arrayOfInt2[38] = -1;
      arrayOfInt2[39] = -1;
      arrayOfInt2[40] = -1;
      arrayOfInt2[41] = -1;
      arrayOfInt2[42] = -1;
      arrayOfInt2[43] = -1;
      arrayOfInt2[44] = -1;
      arrayOfInt2[45] = 62;
      arrayOfInt2[46] = -1;
      arrayOfInt2[47] = -1;
      arrayOfInt2[48] = 52;
      arrayOfInt2[49] = 53;
      arrayOfInt2[50] = 54;
      arrayOfInt2[51] = 55;
      arrayOfInt2[52] = 56;
      arrayOfInt2[53] = 57;
      arrayOfInt2[54] = 58;
      arrayOfInt2[55] = 59;
      arrayOfInt2[56] = 60;
      arrayOfInt2[57] = 61;
      arrayOfInt2[58] = -1;
      arrayOfInt2[59] = -1;
      arrayOfInt2[60] = -1;
      arrayOfInt2[61] = -2;
      arrayOfInt2[62] = -1;
      arrayOfInt2[63] = -1;
      arrayOfInt2[64] = -1;
      arrayOfInt2[66] = 1;
      arrayOfInt2[67] = 2;
      arrayOfInt2[68] = 3;
      arrayOfInt2[69] = 4;
      arrayOfInt2[70] = 5;
      arrayOfInt2[71] = 6;
      arrayOfInt2[72] = 7;
      arrayOfInt2[73] = 8;
      arrayOfInt2[74] = 9;
      arrayOfInt2[75] = 10;
      arrayOfInt2[76] = 11;
      arrayOfInt2[77] = 12;
      arrayOfInt2[78] = 13;
      arrayOfInt2[79] = 14;
      arrayOfInt2[80] = 15;
      arrayOfInt2[81] = 16;
      arrayOfInt2[82] = 17;
      arrayOfInt2[83] = 18;
      arrayOfInt2[84] = 19;
      arrayOfInt2[85] = 20;
      arrayOfInt2[86] = 21;
      arrayOfInt2[87] = 22;
      arrayOfInt2[88] = 23;
      arrayOfInt2[89] = 24;
      arrayOfInt2[90] = 25;
      arrayOfInt2[91] = -1;
      arrayOfInt2[92] = -1;
      arrayOfInt2[93] = -1;
      arrayOfInt2[94] = -1;
      arrayOfInt2[95] = 63;
      arrayOfInt2[96] = -1;
      arrayOfInt2[97] = 26;
      arrayOfInt2[98] = 27;
      arrayOfInt2[99] = 28;
      arrayOfInt2[100] = 29;
      arrayOfInt2[101] = 30;
      arrayOfInt2[102] = 31;
      arrayOfInt2[103] = 32;
      arrayOfInt2[104] = 33;
      arrayOfInt2[105] = 34;
      arrayOfInt2[106] = 35;
      arrayOfInt2[107] = 36;
      arrayOfInt2[108] = 37;
      arrayOfInt2[109] = 38;
      arrayOfInt2[110] = 39;
      arrayOfInt2[111] = 40;
      arrayOfInt2[112] = 41;
      arrayOfInt2[113] = 42;
      arrayOfInt2[114] = 43;
      arrayOfInt2[115] = 44;
      arrayOfInt2[116] = 45;
      arrayOfInt2[117] = 46;
      arrayOfInt2[118] = 47;
      arrayOfInt2[119] = 48;
      arrayOfInt2[120] = 49;
      arrayOfInt2[121] = 50;
      arrayOfInt2[122] = 51;
      arrayOfInt2[123] = -1;
      arrayOfInt2[124] = -1;
      arrayOfInt2[125] = -1;
      arrayOfInt2[126] = -1;
      arrayOfInt2[127] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[' '] = -1;
      arrayOfInt2['¡'] = -1;
      arrayOfInt2['¢'] = -1;
      arrayOfInt2['£'] = -1;
      arrayOfInt2['¤'] = -1;
      arrayOfInt2['¥'] = -1;
      arrayOfInt2['¦'] = -1;
      arrayOfInt2['§'] = -1;
      arrayOfInt2['¨'] = -1;
      arrayOfInt2['©'] = -1;
      arrayOfInt2['ª'] = -1;
      arrayOfInt2['«'] = -1;
      arrayOfInt2['¬'] = -1;
      arrayOfInt2['­'] = -1;
      arrayOfInt2['®'] = -1;
      arrayOfInt2['¯'] = -1;
      arrayOfInt2['°'] = -1;
      arrayOfInt2['±'] = -1;
      arrayOfInt2['²'] = -1;
      arrayOfInt2['³'] = -1;
      arrayOfInt2['´'] = -1;
      arrayOfInt2['µ'] = -1;
      arrayOfInt2['¶'] = -1;
      arrayOfInt2['·'] = -1;
      arrayOfInt2['¸'] = -1;
      arrayOfInt2['¹'] = -1;
      arrayOfInt2['º'] = -1;
      arrayOfInt2['»'] = -1;
      arrayOfInt2['¼'] = -1;
      arrayOfInt2['½'] = -1;
      arrayOfInt2['¾'] = -1;
      arrayOfInt2['¿'] = -1;
      arrayOfInt2['À'] = -1;
      arrayOfInt2['Á'] = -1;
      arrayOfInt2['Â'] = -1;
      arrayOfInt2['Ã'] = -1;
      arrayOfInt2['Ä'] = -1;
      arrayOfInt2['Å'] = -1;
      arrayOfInt2['Æ'] = -1;
      arrayOfInt2['Ç'] = -1;
      arrayOfInt2['È'] = -1;
      arrayOfInt2['É'] = -1;
      arrayOfInt2['Ê'] = -1;
      arrayOfInt2['Ë'] = -1;
      arrayOfInt2['Ì'] = -1;
      arrayOfInt2['Í'] = -1;
      arrayOfInt2['Î'] = -1;
      arrayOfInt2['Ï'] = -1;
      arrayOfInt2['Ð'] = -1;
      arrayOfInt2['Ñ'] = -1;
      arrayOfInt2['Ò'] = -1;
      arrayOfInt2['Ó'] = -1;
      arrayOfInt2['Ô'] = -1;
      arrayOfInt2['Õ'] = -1;
      arrayOfInt2['Ö'] = -1;
      arrayOfInt2['×'] = -1;
      arrayOfInt2['Ø'] = -1;
      arrayOfInt2['Ù'] = -1;
      arrayOfInt2['Ú'] = -1;
      arrayOfInt2['Û'] = -1;
      arrayOfInt2['Ü'] = -1;
      arrayOfInt2['Ý'] = -1;
      arrayOfInt2['Þ'] = -1;
      arrayOfInt2['ß'] = -1;
      arrayOfInt2['à'] = -1;
      arrayOfInt2['á'] = -1;
      arrayOfInt2['â'] = -1;
      arrayOfInt2['ã'] = -1;
      arrayOfInt2['ä'] = -1;
      arrayOfInt2['å'] = -1;
      arrayOfInt2['æ'] = -1;
      arrayOfInt2['ç'] = -1;
      arrayOfInt2['è'] = -1;
      arrayOfInt2['é'] = -1;
      arrayOfInt2['ê'] = -1;
      arrayOfInt2['ë'] = -1;
      arrayOfInt2['ì'] = -1;
      arrayOfInt2['í'] = -1;
      arrayOfInt2['î'] = -1;
      arrayOfInt2['ï'] = -1;
      arrayOfInt2['ð'] = -1;
      arrayOfInt2['ñ'] = -1;
      arrayOfInt2['ò'] = -1;
      arrayOfInt2['ó'] = -1;
      arrayOfInt2['ô'] = -1;
      arrayOfInt2['õ'] = -1;
      arrayOfInt2['ö'] = -1;
      arrayOfInt2['÷'] = -1;
      arrayOfInt2['ø'] = -1;
      arrayOfInt2['ù'] = -1;
      arrayOfInt2['ú'] = -1;
      arrayOfInt2['û'] = -1;
      arrayOfInt2['ü'] = -1;
      arrayOfInt2['ý'] = -1;
      arrayOfInt2['þ'] = -1;
      arrayOfInt2['ÿ'] = -1;
      DECODE_WEBSAFE = arrayOfInt2;
    }
    
    public Decoder(int paramInt, byte[] paramArrayOfByte)
    {
      this.output = paramArrayOfByte;
      if ((paramInt & 0x8) == 0) {}
      for (int[] arrayOfInt = DECODE;; arrayOfInt = DECODE_WEBSAFE)
      {
        this.alphabet = arrayOfInt;
        this.state = 0;
        this.value = 0;
        return;
      }
    }
    
    public int maxOutputSize(int paramInt)
    {
      return 10 + paramInt * 3 / 4;
    }
    
    public boolean process(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
    {
      if (this.state == 6) {
        return false;
      }
      int i = paramInt2 + paramInt1;
      int j = this.state;
      int k = this.value;
      int m = 0;
      byte[] arrayOfByte = this.output;
      int[] arrayOfInt = this.alphabet;
      int n = j;
      int i1 = paramInt1;
      int i5;
      if (i1 >= i)
      {
        i5 = k;
        if (!paramBoolean)
        {
          this.state = n;
          this.value = i5;
          this.op = m;
          return true;
        }
      }
      else
      {
        if (n == 0) {
          for (;;)
          {
            if (i1 + 4 <= i)
            {
              k = arrayOfInt[(0xFF & paramArrayOfByte[i1])] << 18 | arrayOfInt[(0xFF & paramArrayOfByte[(i1 + 1)])] << 12 | arrayOfInt[(0xFF & paramArrayOfByte[(i1 + 2)])] << 6 | arrayOfInt[(0xFF & paramArrayOfByte[(i1 + 3)])];
              if (k >= 0) {}
            }
            else
            {
              if (i1 < i) {
                break label226;
              }
              i5 = k;
              break;
            }
            arrayOfByte[(m + 2)] = ((byte)k);
            arrayOfByte[(m + 1)] = ((byte)(k >> 8));
            arrayOfByte[m] = ((byte)(k >> 16));
            m += 3;
            i1 += 4;
          }
        }
        label226:
        int i2 = i1 + 1;
        int i3 = arrayOfInt[(0xFF & paramArrayOfByte[i1])];
        switch (n)
        {
        }
        do
        {
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    i1 = i2;
                    break;
                    if (i3 >= 0)
                    {
                      n++;
                      k = i3;
                      i1 = i2;
                      break;
                    }
                  } while (i3 == -1);
                  this.state = 6;
                  return false;
                  if (i3 >= 0)
                  {
                    k = i3 | k << 6;
                    n++;
                    i1 = i2;
                    break;
                  }
                } while (i3 == -1);
                this.state = 6;
                return false;
                if (i3 >= 0)
                {
                  k = i3 | k << 6;
                  n++;
                  i1 = i2;
                  break;
                }
                if (i3 == -2)
                {
                  int i4 = m + 1;
                  arrayOfByte[m] = ((byte)(k >> 4));
                  n = 4;
                  m = i4;
                  i1 = i2;
                  break;
                }
              } while (i3 == -1);
              this.state = 6;
              return false;
              if (i3 >= 0)
              {
                k = i3 | k << 6;
                arrayOfByte[(m + 2)] = ((byte)k);
                arrayOfByte[(m + 1)] = ((byte)(k >> 8));
                arrayOfByte[m] = ((byte)(k >> 16));
                m += 3;
                i1 = i2;
                n = 0;
                break;
              }
              if (i3 == -2)
              {
                arrayOfByte[(m + 1)] = ((byte)(k >> 2));
                arrayOfByte[m] = ((byte)(k >> 10));
                m += 2;
                n = 5;
                i1 = i2;
                break;
              }
            } while (i3 == -1);
            this.state = 6;
            return false;
            if (i3 == -2)
            {
              n++;
              i1 = i2;
              break;
            }
          } while (i3 == -1);
          this.state = 6;
          return false;
        } while (i3 == -1);
        this.state = 6;
        return false;
      }
      switch (n)
      {
      case 0: 
      default: 
      case 1: 
      case 2: 
      case 3: 
        for (;;)
        {
          this.state = n;
          this.op = m;
          return true;
          this.state = 6;
          return false;
          int i7 = m + 1;
          arrayOfByte[m] = ((byte)(i5 >> 4));
          m = i7;
          continue;
          int i6 = m + 1;
          arrayOfByte[m] = ((byte)(i5 >> 10));
          m = i6 + 1;
          arrayOfByte[i6] = ((byte)(i5 >> 2));
        }
      }
      this.state = 6;
      return false;
    }
  }
  
  static class Encoder
    extends Base64.Coder
  {
    private static final byte[] ENCODE;
    private static final byte[] ENCODE_WEBSAFE;
    public static final int LINE_GROUPS = 19;
    private final byte[] alphabet;
    private int count;
    public final boolean do_cr;
    public final boolean do_newline;
    public final boolean do_padding;
    private final byte[] tail;
    int tailLen;
    
    static
    {
      if (!Base64.class.desiredAssertionStatus()) {}
      for (boolean bool = true;; bool = false)
      {
        $assertionsDisabled = bool;
        ENCODE = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
        ENCODE_WEBSAFE = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
        return;
      }
    }
    
    public Encoder(int paramInt, byte[] paramArrayOfByte)
    {
      this.output = paramArrayOfByte;
      boolean bool2;
      boolean bool3;
      label35:
      label47:
      byte[] arrayOfByte;
      if ((paramInt & 0x1) == 0)
      {
        bool2 = bool1;
        this.do_padding = bool2;
        if ((paramInt & 0x2) != 0) {
          break label106;
        }
        bool3 = bool1;
        this.do_newline = bool3;
        if ((paramInt & 0x4) == 0) {
          break label112;
        }
        this.do_cr = bool1;
        if ((paramInt & 0x8) != 0) {
          break label117;
        }
        arrayOfByte = ENCODE;
        label64:
        this.alphabet = arrayOfByte;
        this.tail = new byte[2];
        this.tailLen = 0;
        if (!this.do_newline) {
          break label125;
        }
      }
      label106:
      label112:
      label117:
      label125:
      for (int i = 19;; i = -1)
      {
        this.count = i;
        return;
        bool2 = false;
        break;
        bool3 = false;
        break label35;
        bool1 = false;
        break label47;
        arrayOfByte = ENCODE_WEBSAFE;
        break label64;
      }
    }
    
    public int maxOutputSize(int paramInt)
    {
      return 10 + paramInt * 8 / 5;
    }
    
    public boolean process(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean)
    {
      byte[] arrayOfByte1 = this.alphabet;
      byte[] arrayOfByte2 = this.output;
      int i = this.count;
      int j = paramInt2 + paramInt1;
      int k = -1;
      int n;
      label59:
      int i1;
      int i33;
      switch (this.tailLen)
      {
      default: 
        n = paramInt1;
        i1 = 0;
        if (k != -1)
        {
          arrayOfByte2[0] = arrayOfByte1[(0x3F & k >> 18)];
          arrayOfByte2[1] = arrayOfByte1[(0x3F & k >> 12)];
          arrayOfByte2[2] = arrayOfByte1[(0x3F & k >> 6)];
          i1 = 4;
          arrayOfByte2[3] = arrayOfByte1[(k & 0x3F)];
          i--;
          if (i == 0)
          {
            if (!this.do_cr) {
              break label1248;
            }
            i33 = 5;
            arrayOfByte2[i1] = 13;
          }
        }
        break;
      }
      for (;;)
      {
        int i34 = i33 + 1;
        arrayOfByte2[i33] = 10;
        int i2 = 19;
        int i3 = i34;
        for (;;)
        {
          int i27;
          int i25;
          int i26;
          label228:
          int i30;
          if (n + 3 > j)
          {
            if (!paramBoolean) {
              break label1074;
            }
            if (n - this.tailLen != j - 1) {
              break label725;
            }
            if (this.tailLen <= 0) {
              break label703;
            }
            byte[] arrayOfByte8 = this.tail;
            i27 = 1;
            i25 = arrayOfByte8[0];
            i26 = n;
            int i28 = (i25 & 0xFF) << 4;
            this.tailLen -= i27;
            int i29 = i3 + 1;
            arrayOfByte2[i3] = arrayOfByte1[(0x3F & i28 >> 6)];
            i30 = i29 + 1;
            arrayOfByte2[i29] = arrayOfByte1[(i28 & 0x3F)];
            if (this.do_padding)
            {
              int i32 = i30 + 1;
              arrayOfByte2[i30] = 61;
              i30 = i32 + 1;
              arrayOfByte2[i32] = 61;
            }
            if (!this.do_newline) {
              break label1219;
            }
            if (this.do_cr)
            {
              int i31 = i30 + 1;
              arrayOfByte2[i30] = 13;
              i30 = i31;
            }
            i3 = i30 + 1;
            arrayOfByte2[i30] = 10;
            n = i26;
            label371:
            if (($assertionsDisabled) || (this.tailLen == 0)) {
              break label1053;
            }
            throw new AssertionError();
            n = paramInt1;
            break label59;
            if (paramInt1 + 2 > j) {
              break;
            }
            int i35 = (0xFF & this.tail[0]) << 16;
            int i36 = paramInt1 + 1;
            int i37 = i35 | (0xFF & paramArrayOfByte[paramInt1]) << 8;
            int i38 = i36 + 1;
            k = i37 | 0xFF & paramArrayOfByte[i36];
            this.tailLen = 0;
            n = i38;
            break label59;
            if (paramInt1 + 1 > j) {
              break;
            }
            int m = (0xFF & this.tail[0]) << 16 | (0xFF & this.tail[1]) << 8;
            n = paramInt1 + 1;
            k = m | 0xFF & paramArrayOfByte[paramInt1];
            this.tailLen = 0;
            break label59;
          }
          int i4 = (0xFF & paramArrayOfByte[n]) << 16 | (0xFF & paramArrayOfByte[(n + 1)]) << 8 | 0xFF & paramArrayOfByte[(n + 2)];
          arrayOfByte2[i3] = arrayOfByte1[(0x3F & i4 >> 18)];
          arrayOfByte2[(i3 + 1)] = arrayOfByte1[(0x3F & i4 >> 12)];
          arrayOfByte2[(i3 + 2)] = arrayOfByte1[(0x3F & i4 >> 6)];
          arrayOfByte2[(i3 + 3)] = arrayOfByte1[(i4 & 0x3F)];
          n += 3;
          i1 = i3 + 4;
          i = i2 - 1;
          if (i == 0)
          {
            int i5;
            if (this.do_cr)
            {
              i5 = i1 + 1;
              arrayOfByte2[i1] = 13;
            }
            for (;;)
            {
              int i6 = i5 + 1;
              arrayOfByte2[i5] = 10;
              i2 = 19;
              i3 = i6;
              break;
              label703:
              int i24 = n + 1;
              i25 = paramArrayOfByte[n];
              i26 = i24;
              i27 = 0;
              break label228;
              label725:
              int i13;
              int i12;
              label762:
              int i16;
              label803:
              int i20;
              int i21;
              if (n - this.tailLen == j - 2) {
                if (this.tailLen > 1)
                {
                  byte[] arrayOfByte7 = this.tail;
                  i13 = 1;
                  i12 = arrayOfByte7[0];
                  int i14 = (i12 & 0xFF) << 10;
                  if (this.tailLen <= 0) {
                    break label979;
                  }
                  byte[] arrayOfByte6 = this.tail;
                  int i23 = i13 + 1;
                  i16 = arrayOfByte6[i13];
                  i13 = i23;
                  int i17 = i14 | (i16 & 0xFF) << 2;
                  this.tailLen -= i13;
                  int i18 = i3 + 1;
                  arrayOfByte2[i3] = arrayOfByte1[(0x3F & i17 >> 12)];
                  int i19 = i18 + 1;
                  arrayOfByte2[i18] = arrayOfByte1[(0x3F & i17 >> 6)];
                  i20 = i19 + 1;
                  arrayOfByte2[i19] = arrayOfByte1[(i17 & 0x3F)];
                  if (!this.do_padding) {
                    break label1212;
                  }
                  i21 = i20 + 1;
                  arrayOfByte2[i20] = 61;
                }
              }
              for (;;)
              {
                if (this.do_newline)
                {
                  if (this.do_cr)
                  {
                    int i22 = i21 + 1;
                    arrayOfByte2[i21] = 13;
                    i21 = i22;
                  }
                  i3 = i21 + 1;
                  arrayOfByte2[i21] = 10;
                  break;
                  int i11 = n + 1;
                  i12 = paramArrayOfByte[n];
                  n = i11;
                  i13 = 0;
                  break label762;
                  label979:
                  int i15 = n + 1;
                  i16 = paramArrayOfByte[n];
                  n = i15;
                  break label803;
                  if ((!this.do_newline) || (i3 <= 0) || (i2 == 19)) {
                    break;
                  }
                  int i10;
                  if (this.do_cr)
                  {
                    i10 = i3 + 1;
                    arrayOfByte2[i3] = 13;
                  }
                  for (;;)
                  {
                    i3 = i10 + 1;
                    arrayOfByte2[i10] = 10;
                    break;
                    label1053:
                    if ((!$assertionsDisabled) && (n != j))
                    {
                      throw new AssertionError();
                      label1074:
                      if (n != j - 1) {
                        break label1126;
                      }
                      byte[] arrayOfByte5 = this.tail;
                      int i9 = this.tailLen;
                      this.tailLen = (i9 + 1);
                      arrayOfByte5[i9] = paramArrayOfByte[n];
                    }
                    for (;;)
                    {
                      this.op = i3;
                      this.count = i2;
                      return true;
                      label1126:
                      if (n == j - 2)
                      {
                        byte[] arrayOfByte3 = this.tail;
                        int i7 = this.tailLen;
                        this.tailLen = (i7 + 1);
                        arrayOfByte3[i7] = paramArrayOfByte[n];
                        byte[] arrayOfByte4 = this.tail;
                        int i8 = this.tailLen;
                        this.tailLen = (i8 + 1);
                        arrayOfByte4[i8] = paramArrayOfByte[(n + 1)];
                      }
                    }
                    i10 = i3;
                  }
                }
                i3 = i21;
                break;
                label1212:
                i21 = i20;
              }
              label1219:
              n = i26;
              i3 = i30;
              break label371;
              i5 = i1;
            }
          }
          i2 = i;
          i3 = i1;
        }
        label1248:
        i33 = i1;
      }
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.Base64
 * JD-Core Version:    0.7.0.1
 */