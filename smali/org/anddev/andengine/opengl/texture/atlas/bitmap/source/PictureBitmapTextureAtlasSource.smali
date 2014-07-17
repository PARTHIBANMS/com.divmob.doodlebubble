.class public abstract Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;
.super Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;


# instance fields
.field protected final mHeight:I

.field protected final mPicture:Landroid/graphics/Picture;

.field protected final mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Picture;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;-><init>(Landroid/graphics/Picture;II)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Picture;II)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;-><init>(Landroid/graphics/Picture;IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Picture;IIF)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;-><init>(Landroid/graphics/Picture;IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Picture;IIII)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;-><init>(II)V

    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mPicture:Landroid/graphics/Picture;

    iput p4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mWidth:I

    iput p5, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mHeight:I

    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public abstract deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mWidth:I

    return v0
.end method

.method public onLoadBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mPicture:Landroid/graphics/Picture;

    if-nez v1, :cond_0

    const-string v0, "Failed loading Bitmap in PictureBitmapTextureAtlasSource."

    invoke-static {v0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mWidth:I

    iget v2, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mHeight:I

    invoke-static {v0, v2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget v3, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mWidth:I

    int-to-float v3, v3

    iget-object v4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v4}, Landroid/graphics/Picture;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mHeight:I

    int-to-float v4, v4

    iget-object v5, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/PictureBitmapTextureAtlasSource;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v5}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v2, v3, v4, v6, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    invoke-virtual {v1, v2}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
