.class public Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;
.super Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;


# static fields
.field private static final TOLERANCE_DEFAULT:I


# instance fields
.field protected final mColorKeyColor:I

.field protected final mColorSwapColor:I

.field protected final mTolerance:I


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;II)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;-><init>(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IIILorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;III)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;-><init>(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IIILorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IIILorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 3

    invoke-direct {p0, p1, p2, p6}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;-><init>(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    iput p3, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->mColorKeyColor:I

    iput p4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->mTolerance:I

    iput p5, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->mColorSwapColor:I

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/AvoidXfermode;

    sget-object v2, Landroid/graphics/AvoidXfermode$Mode;->TARGET:Landroid/graphics/AvoidXfermode$Mode;

    invoke-direct {v1, p3, p4, v2}, Landroid/graphics/AvoidXfermode;-><init>(IILandroid/graphics/AvoidXfermode$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IILorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;-><init>(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IIILorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;
    .locals 7

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->mBitmapTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

    iget-object v2, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->mBitmapTextureAtlasSourceDecoratorShape:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;

    iget v3, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->mColorKeyColor:I

    iget v4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->mTolerance:I

    iget v5, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->mColorSwapColor:I

    iget-object v6, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->mTextureAtlasSourceDecoratorOptions:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;-><init>(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IIILorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/ColorSwapBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method
