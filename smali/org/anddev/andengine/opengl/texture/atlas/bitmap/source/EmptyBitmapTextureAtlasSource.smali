.class public Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;
.super Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;-><init>(IIII)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/opengl/texture/source/BaseTextureAtlasSource;-><init>(II)V

    iput p3, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->mWidth:I

    iput p4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->mHeight:I

    return-void
.end method


# virtual methods
.method public deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;
    .locals 5

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->mTexturePositionX:I

    iget v2, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->mTexturePositionY:I

    iget v3, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->mWidth:I

    iget v4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->mHeight:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;-><init>(IIII)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->mWidth:I

    return v0
.end method

.method public onLoadBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->mWidth:I

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->mHeight:I

    invoke-static {v0, v1, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

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

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
