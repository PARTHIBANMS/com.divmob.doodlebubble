.class public Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;


# static fields
.field private static sDefaultInstance:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultInstance()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;

    if-nez v0, :cond_0

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;

    invoke-direct {v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;-><init>()V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;

    :cond_0
    sget-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/RectangleBitmapTextureAtlasSourceDecoratorShape;

    return-object v0
.end method


# virtual methods
.method public onDecorateBitmap(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 6

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetLeft()F

    move-result v1

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetTop()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetRight()F

    move-result v3

    sub-float v3, v0, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->getInsetBottom()F

    move-result v4

    sub-float v4, v0, v4

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
