.class public Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;
.super Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDrawableResourceID:I

.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;-><init>(Landroid/content/Context;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2

    invoke-direct {p0, p3, p4}, Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;-><init>(II)V

    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mContext:Landroid/content/Context;

    iput p2, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mDrawableResourceID:I

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mHeight:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;IIIII)V
    .locals 0

    invoke-direct {p0, p3, p4}, Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;-><init>(II)V

    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mContext:Landroid/content/Context;

    iput p2, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mDrawableResourceID:I

    iput p5, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mWidth:I

    iput p6, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mHeight:I

    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;
    .locals 7

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mContext:Landroid/content/Context;

    iget v2, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mDrawableResourceID:I

    iget v3, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mTexturePositionX:I

    iget v4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mTexturePositionY:I

    iget v5, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mWidth:I

    iget v6, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mHeight:I

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;-><init>(Landroid/content/Context;IIIII)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mWidth:I

    return v0
.end method

.method public onLoadBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 3

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mDrawableResourceID:I

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/ResourceBitmapTextureAtlasSource;->mDrawableResourceID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
