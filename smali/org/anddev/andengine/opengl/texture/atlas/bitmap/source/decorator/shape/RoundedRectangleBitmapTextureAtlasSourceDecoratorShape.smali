.class public Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;


# static fields
.field private static final CORNER_RADIUS_DEFAULT:F = 1.0f

.field private static sDefaultInstance:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;


# instance fields
.field private final mCornerRadiusX:F

.field private final mCornerRadiusY:F

.field private final mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f80

    invoke-direct {p0, v0, v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;->mRectF:Landroid/graphics/RectF;

    iput p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;->mCornerRadiusX:F

    iput p2, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;->mCornerRadiusY:F

    return-void
.end method

.method public static getDefaultInstance()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;

    if-nez v0, :cond_0

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;

    invoke-direct {v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;-><init>()V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;

    :cond_0
    sget-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;

    return-object v0
.end method


# virtual methods
.method public onDecorateBitmap(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 5

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetLeft()F

    move-result v0

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetTop()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetRight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetBottom()F

    move-result v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;->mCornerRadiusX:F

    iget v2, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RoundedRectangleBitmapTextureAtlasSourceDecoratorShape;->mCornerRadiusY:F

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
