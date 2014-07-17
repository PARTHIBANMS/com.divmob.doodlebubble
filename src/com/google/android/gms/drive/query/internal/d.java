package com.google.android.gms.drive.query.internal;

import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.util.Iterator;
import java.util.Set;

class d
{
  static MetadataField<?> b(MetadataBundle paramMetadataBundle)
  {
    Set localSet = paramMetadataBundle.fi();
    if (localSet.size() != 1) {
      throw new IllegalArgumentException("bundle should have exactly 1 populated field");
    }
    return (MetadataField)localSet.iterator().next();
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.drive.query.internal.d
 * JD-Core Version:    0.7.0.1
 */