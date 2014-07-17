package com.google.android.gms.drive;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.drive.internal.l;
import com.google.android.gms.drive.internal.n;
import com.google.android.gms.drive.internal.p;

public final class Drive
{
  public static final Api API;
  public static final Scope Da;
  public static final c Db = new p();
  public static final DriveApi DriveApi;
  public static final Scope SCOPE_APPFOLDER;
  public static final Scope SCOPE_FILE;
  public static final Api.b<n> va = new Drive.1();
  
  static
  {
    SCOPE_FILE = new Scope("https://www.googleapis.com/auth/drive.file");
    SCOPE_APPFOLDER = new Scope("https://www.googleapis.com/auth/drive.appdata");
    Da = new Scope("https://www.googleapis.com/auth/drive");
    API = new Api(va, new Scope[0]);
    DriveApi = new l();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.Drive
 * JD-Core Version:    0.7.0.1
 */