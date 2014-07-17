package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveApi.ContentsResult;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveFile.DownloadProgressListener;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataChangeSet;

public class o
  extends r
  implements DriveFile
{
  public o(DriveId paramDriveId)
  {
    super(paramDriveId);
  }
  
  public PendingResult<Status> commitAndCloseContents(GoogleApiClient paramGoogleApiClient, Contents paramContents)
  {
    if (paramContents == null) {
      throw new IllegalArgumentException("Contents must be provided.");
    }
    return paramGoogleApiClient.b(new o.2(this, paramContents));
  }
  
  public PendingResult<Status> commitAndCloseContents(GoogleApiClient paramGoogleApiClient, Contents paramContents, MetadataChangeSet paramMetadataChangeSet)
  {
    if (paramContents == null) {
      throw new IllegalArgumentException("Contents must be provided.");
    }
    return paramGoogleApiClient.b(new o.3(this, paramContents, paramMetadataChangeSet));
  }
  
  public PendingResult<Status> discardContents(GoogleApiClient paramGoogleApiClient, Contents paramContents)
  {
    return Drive.DriveApi.discardContents(paramGoogleApiClient, paramContents);
  }
  
  public PendingResult<DriveApi.ContentsResult> openContents(GoogleApiClient paramGoogleApiClient, int paramInt, DriveFile.DownloadProgressListener paramDownloadProgressListener)
  {
    if ((paramInt != 268435456) && (paramInt != 536870912) && (paramInt != 805306368)) {
      throw new IllegalArgumentException("Invalid mode provided.");
    }
    return paramGoogleApiClient.a(new o.1(this, paramInt, paramDownloadProgressListener));
  }
  
  private abstract class a
    extends m<Status>
  {
    private a() {}
    
    public Status f(Status paramStatus)
    {
      return paramStatus;
    }
  }
  
  private abstract class b
    extends m<Status>
  {
    private b() {}
    
    public Status f(Status paramStatus)
    {
      return paramStatus;
    }
  }
  
  private static class c
    extends c
  {
    private final DriveFile.DownloadProgressListener DL;
    private final a.c<DriveApi.ContentsResult> vj;
    
    public c(a.c<DriveApi.ContentsResult> paramc, DriveFile.DownloadProgressListener paramDownloadProgressListener)
    {
      this.vj = paramc;
      this.DL = paramDownloadProgressListener;
    }
    
    public void a(OnContentsResponse paramOnContentsResponse)
      throws RemoteException
    {
      this.vj.b(new l.a(Status.zQ, paramOnContentsResponse.eX()));
    }
    
    public void a(OnDownloadProgressResponse paramOnDownloadProgressResponse)
      throws RemoteException
    {
      if (this.DL != null) {
        this.DL.onProgress(paramOnDownloadProgressResponse.eY(), paramOnDownloadProgressResponse.eZ());
      }
    }
    
    public void l(Status paramStatus)
      throws RemoteException
    {
      this.vj.b(new l.a(paramStatus, null));
    }
  }
  
  private abstract class d
    extends m<DriveApi.ContentsResult>
  {
    private d() {}
    
    public DriveApi.ContentsResult n(Status paramStatus)
    {
      return new l.a(paramStatus, null);
    }
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.internal.o
 * JD-Core Version:    0.7.0.1
 */