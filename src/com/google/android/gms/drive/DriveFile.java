package com.google.android.gms.drive;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;

public abstract interface DriveFile
  extends DriveResource
{
  public static final int MODE_READ_ONLY = 268435456;
  public static final int MODE_READ_WRITE = 805306368;
  public static final int MODE_WRITE_ONLY = 536870912;
  
  public abstract PendingResult<Status> commitAndCloseContents(GoogleApiClient paramGoogleApiClient, Contents paramContents);
  
  public abstract PendingResult<Status> commitAndCloseContents(GoogleApiClient paramGoogleApiClient, Contents paramContents, MetadataChangeSet paramMetadataChangeSet);
  
  public abstract PendingResult<Status> discardContents(GoogleApiClient paramGoogleApiClient, Contents paramContents);
  
  public abstract PendingResult<DriveApi.ContentsResult> openContents(GoogleApiClient paramGoogleApiClient, int paramInt, DownloadProgressListener paramDownloadProgressListener);
  
  public static abstract interface DownloadProgressListener
  {
    public abstract void onProgress(long paramLong1, long paramLong2);
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.DriveFile
 * JD-Core Version:    0.7.0.1
 */