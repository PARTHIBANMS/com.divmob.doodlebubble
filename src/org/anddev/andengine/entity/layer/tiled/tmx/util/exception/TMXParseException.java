package org.anddev.andengine.entity.layer.tiled.tmx.util.exception;

import org.xml.sax.SAXException;

public class TMXParseException
  extends SAXException
{
  private static final long serialVersionUID = 2213964295487921492L;
  
  public TMXParseException() {}
  
  public TMXParseException(Exception paramException)
  {
    super(paramException);
  }
  
  public TMXParseException(String paramString)
  {
    super(paramString);
  }
  
  public TMXParseException(String paramString, Exception paramException)
  {
    super(paramString, paramException);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.layer.tiled.tmx.util.exception.TMXParseException
 * JD-Core Version:    0.7.0.1
 */