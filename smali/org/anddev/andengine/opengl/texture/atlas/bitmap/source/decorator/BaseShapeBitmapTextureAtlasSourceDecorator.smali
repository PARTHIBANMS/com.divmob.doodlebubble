.class public abstract Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;
.super Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;


# instance fields
.field protected final mBitmapTextureAtlasSourceDecoratorShape:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;-><init>(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    iput-object p2, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;->mBitmapTextureAtlasSourceDecoratorShape:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;

    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method

.method public abstract deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method

.method protected onDecorateBitmap(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;->mBitmapTextureAtlasSourceDecoratorShape:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;

    iget-object v2, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;->mTextureAtlasSourceDecoratorOptions:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    if-nez v0, :cond_0

    sget-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    :goto_0
    invoke-interface {v1, p1, v2, v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;->onDecorateBitmap(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;->mTextureAtlasSourceDecoratorOptions:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    goto :goto_0
.end method
