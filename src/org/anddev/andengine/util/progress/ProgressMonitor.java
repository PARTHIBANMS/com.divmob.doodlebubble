package org.anddev.andengine.util.progress;

public class ProgressMonitor
  implements IProgressListener
{
  private final IProgressListener mListener;
  private final ProgressMonitor mParentProgressMonitor;
  private int mProgress = 0;
  private int mSubMonitorRangeFrom = 0;
  private int mSubMonitorRangeTo = 100;
  
  public ProgressMonitor(IProgressListener paramIProgressListener)
  {
    this.mListener = paramIProgressListener;
    this.mParentProgressMonitor = null;
  }
  
  public ProgressMonitor(ProgressMonitor paramProgressMonitor)
  {
    this.mListener = null;
    this.mParentProgressMonitor = paramProgressMonitor;
  }
  
  private void onSubProgressChanged(int paramInt)
  {
    int i = this.mSubMonitorRangeTo - this.mSubMonitorRangeFrom;
    int j = this.mSubMonitorRangeFrom + (int)(i * paramInt / 100.0F);
    if (this.mParentProgressMonitor != null)
    {
      this.mParentProgressMonitor.onSubProgressChanged(j);
      return;
    }
    this.mListener.onProgressChanged(j);
  }
  
  public ProgressMonitor getParentProgressMonitor()
  {
    return this.mParentProgressMonitor;
  }
  
  public int getProgress()
  {
    return this.mProgress;
  }
  
  public void onProgressChanged(int paramInt)
  {
    this.mProgress = paramInt;
    if (this.mParentProgressMonitor != null)
    {
      this.mParentProgressMonitor.onSubProgressChanged(paramInt);
      return;
    }
    this.mListener.onProgressChanged(paramInt);
  }
  
  public void setSubMonitorRange(int paramInt1, int paramInt2)
  {
    this.mSubMonitorRangeFrom = paramInt1;
    this.mSubMonitorRangeTo = paramInt2;
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.util.progress.ProgressMonitor
 * JD-Core Version:    0.7.0.1
 */