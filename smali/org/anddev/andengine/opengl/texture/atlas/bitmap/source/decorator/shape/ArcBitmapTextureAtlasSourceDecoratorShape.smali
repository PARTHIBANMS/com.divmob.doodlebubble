.class public Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;


# static fields
.field private static final STARTANGLE_DEFAULT:F = 0.0f

.field private static final SWEEPANGLE_DEFAULT:F = 360.0f

.field private static final USECENTER_DEFAULT:Z = true

.field private static sDefaultInstance:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;


# instance fields
.field private final mRectF:Landroid/graphics/RectF;

.field private final mStartAngle:F

.field private final mSweepAngle:F

.field private final mUseCenter:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x43b4

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;-><init>(FFZ)V

    return-void
.end method

.method public constructor <init>(FFZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->mRectF:Landroid/graphics/RectF;

    iput p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->mStartAngle:F

    iput p2, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->mSweepAngle:F

    iput-boolean p3, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->mUseCenter:Z

    return-void
.end method

.method public static getDefaultInstance()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;

    if-nez v0, :cond_0

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;

    invoke-direct {v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;-><init>()V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;

    :cond_0
    sget-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->sDefaultInstance:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;

    return-object v0
.end method


# virtual methods
.method public onDecorateBitmap(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 6

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

    iget-object v4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->mRectF:Landroid/graphics/RectF;

    iget v2, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->mStartAngle:F

    iget v3, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->mSweepAngle:F

    iget-boolean v4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/ArcBitmapTextureAtlasSourceDecoratorShape;->mUseCenter:Z

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method
