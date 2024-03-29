package com.google.android.gms.drive;

import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public final class b
  extends Metadata
{
  private final MetadataBundle CZ;
  
  public b(MetadataBundle paramMetadataBundle)
  {
    this.CZ = paramMetadataBundle;
  }
  
  protected <T> T a(MetadataField<T> paramMetadataField)
  {
    return this.CZ.a(paramMetadataField);
  }
  
  public Metadata eQ()
  {
    return new b(MetadataBundle.a(this.CZ));
  }
  
  public boolean isDataValid()
  {
    return this.CZ != null;
  }
  
  public String toString()
  {
    return "Metadata [mImpl=" + this.CZ + "]";
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.b
 * JD-Core Version:    0.7.0.1
 */