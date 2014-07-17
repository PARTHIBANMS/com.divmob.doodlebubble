.class public Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ExternalStorageFileBitmapTextureAtlasSource;
.super Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-static {p1, p2}, Lorg/anddev/andengine/util/FileUtils;->getAbsolutePathOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/FileBitmapTextureAtlasSource;-><init>(Ljava/io/File;)V

    return-void
.end method
