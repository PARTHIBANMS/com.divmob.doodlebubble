package com.google.android.gms.drive.metadata;

import com.google.android.gms.common.data.DataHolder;
import java.util.Collection;

public abstract class CollectionMetadataField<T>
  extends MetadataField<Collection<T>>
{
  protected CollectionMetadataField(String paramString, int paramInt)
  {
    super(paramString, paramInt);
  }
  
  protected Collection<T> a(DataHolder paramDataHolder, int paramInt1, int paramInt2)
  {
    throw new UnsupportedOperationException("Cannot read collections from a dataHolder.");
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.metadata.CollectionMetadataField
 * JD-Core Version:    0.7.0.1
 */