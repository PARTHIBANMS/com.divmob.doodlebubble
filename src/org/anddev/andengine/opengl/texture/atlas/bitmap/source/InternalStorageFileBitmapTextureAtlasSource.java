package org.anddev.andengine.opengl.texture.atlas.bitmap.source;

import android.content.Context;
import java.io.File;
import org.anddev.andengine.util.FileUtils;

public class InternalStorageFileBitmapTextureAtlasSource
  extends FileBitmapTextureAtlasSource
{
  public InternalStorageFileBitmapTextureAtlasSource(Context paramContext, String paramString)
  {
    super(new File(FileUtils.getAbsolutePathOnInternalStorage(paramContext, paramString)));
  }
}


/* Location:           C:\Users\PARTHIBAN\Desktop\source\dex2jar-0.0.9.15\classes_dex2jar.jar
 * Qualified Name:     org.anddev.andengine.opengl.texture.atlas.bitmap.source.InternalStorageFileBitmapTextureAtlasSource
 * JD-Core Version:    0.7.0.1
 */