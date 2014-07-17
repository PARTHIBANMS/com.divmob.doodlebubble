.class public Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;


# static fields
.field private static sDefaultInstance:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;


# instance fields
.field private final mRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;->mRectF:Landroid/graphics/RectF;

    return-void
.end method

.method public static getDefaultInstance()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;

    if-nez v0, :cond_0

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;

    invoke-direct {v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;-><init>()V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;

    :cond_0
    sget-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;

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

    iget-object v4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/EllipseBitmapTextureAtlasSourceDecoratorShape;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method
