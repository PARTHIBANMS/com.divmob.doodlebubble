package org.anddev.andengine.util.progress;

public abstract interface ProgressCallable<T>
{
  public abstract T call(IProgressListener paramIProgressListener)
    throws Exception;
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.progress.ProgressCallable
 * JD-Core Version:    0.7.0.1
 */