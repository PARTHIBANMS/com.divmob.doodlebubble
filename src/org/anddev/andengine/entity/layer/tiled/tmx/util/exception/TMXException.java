package org.anddev.andengine.entity.layer.tiled.tmx.util.exception;

public abstract class TMXException
  extends Exception
{
  private static final long serialVersionUID = 337819550394833109L;
  
  public TMXException() {}
  
  public TMXException(String paramString)
  {
    super(paramString);
  }
  
  public TMXException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }
  
  public TMXException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.entity.layer.tiled.tmx.util.exception.TMXException
 * JD-Core Version:    0.7.0.1
 */