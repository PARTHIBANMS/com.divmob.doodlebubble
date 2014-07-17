.class public Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/CircleBitmapTextureAtlasSourceDecoratorShape;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;


# static fields
.field private static sDefaultInstance:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/CircleBitmapTextureAtlasSourceDecoratorShape;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultInstance()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/CircleBitmapTextureAtlasSourceDecoratorShape;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/CircleBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/CircleBitmapTextureAtlasSourceDecoratorShape;

    if-nez v0, :cond_0

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/CircleBitmapTextureAtlasSourceDecoratorShape;

    invoke-direct {v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/CircleBitmapTextureAtlasSourceDecoratorShape;-><init>()V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/CircleBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/CircleBitmapTextureAtlasSourceDecoratorShape;

    :cond_0
    sget-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/CircleBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/CircleBitmapTextureAtlasSourceDecoratorShape;

    return-object v0
.end method


# virtual methods
.method public onDecorateBitmap(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 6

    const/high16 v5, 0x3f00

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetLeft()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetRight()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetTop()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetBottom()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetLeft()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetRight()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetTop()F

    move-result v4

    add-float/2addr v3, v4

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetBottom()F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v5

    mul-float/2addr v0, v5

    mul-float/2addr v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p1, v2, v3, v0, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
