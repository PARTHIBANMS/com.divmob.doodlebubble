package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.drive.metadata.CollectionMetadataField;
import java.util.ArrayList;
import java.util.Collection;

public class g<T extends Parcelable>
  extends CollectionMetadataField<T>
{
  public g(String paramString, int paramInt)
  {
    super(paramString, paramInt);
  }
  
  protected void a(Bundle paramBundle, Collection<T> paramCollection)
  {
    paramBundle.putParcelableArrayList(getName(), new ArrayList(paramCollection));
  }
  
  protected Collection<T> j(Bundle paramBundle)
  {
    return paramBundle.getParcelableArrayList(getName());
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.metadata.internal.g
 * JD-Core Version:    0.7.0.1
 */