.class public Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;
.super Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$anddev$andengine$opengl$texture$atlas$bitmap$source$decorator$RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection:[I

.field private static final POSITIONS_DEFAULT:[F


# instance fields
.field protected final mColors:[I

.field protected final mPositions:[F

.field protected final mRadialGradientDirection:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;


# direct methods
.method static synthetic $SWITCH_TABLE$org$anddev$andengine$opengl$texture$atlas$bitmap$source$decorator$RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection()[I
    .locals 3

    sget-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->$SWITCH_TABLE$org$anddev$andengine$opengl$texture$atlas$bitmap$source$decorator$RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;->values()[Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;->INSIDE_OUT:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;->OUTSIDE_IN:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->$SWITCH_TABLE$org$anddev$andengine$opengl$texture$atlas$bitmap$source$decorator$RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->POSITIONS_DEFAULT:[F

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IILorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;-><init>(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IILorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;IILorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 7

    const/4 v0, 0x2

    new-array v3, v0, [I

    const/4 v0, 0x0

    aput p3, v3, v0

    const/4 v0, 0x1

    aput p4, v3, v0

    sget-object v4, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->POSITIONS_DEFAULT:[F

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;-><init>(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;[I[FLorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;[I[FLorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;-><init>(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;[I[FLorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;[I[FLorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V
    .locals 8

    const/high16 v3, 0x3f00

    invoke-direct {p0, p1, p2, p6}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;-><init>(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    iput-object p3, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mColors:[I

    iput-object p4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mPositions:[F

    iput-object p5, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mRadialGradientDirection:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getWidth()I

    move-result v0

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getHeight()I

    move-result v2

    int-to-float v0, v0

    mul-float v1, v0, v3

    int-to-float v0, v2

    mul-float v2, v0, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->$SWITCH_TABLE$org$anddev$andengine$opengl$texture$atlas$bitmap$source$decorator$RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection()[I

    move-result-object v0

    invoke-virtual {p5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v7, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :pswitch_1
    invoke-static {p3}, Lorg/anddev/andengine/util/ArrayUtils;->reverse([I)V

    iget-object v7, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseShapeBitmapTextureAtlasSourceDecorator;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;
    .locals 7

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mBitmapTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

    iget-object v2, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mBitmapTextureAtlasSourceDecoratorShape:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;

    iget-object v3, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mColors:[I

    iget-object v4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mPositions:[F

    iget-object v5, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mRadialGradientDirection:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;

    iget-object v6, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->mTextureAtlasSourceDecoratorOptions:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;-><init>(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/shape/IBitmapTextureAtlasSourceDecoratorShape;[I[FLorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;->deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator;

    move-result-object v0

    return-object v0
.end method
