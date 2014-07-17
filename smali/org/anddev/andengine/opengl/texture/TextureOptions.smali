.class public Lorg/anddev/andengine/opengl/texture/TextureOptions;
.super Ljava/lang/Object;


# static fields
.field public static final BILINEAR:Lorg/anddev/andengine/opengl/texture/TextureOptions;

.field public static final BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

.field public static final DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

.field public static final NEAREST:Lorg/anddev/andengine/opengl/texture/TextureOptions;

.field public static final NEAREST_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

.field public static final REPEATING_BILINEAR:Lorg/anddev/andengine/opengl/texture/TextureOptions;

.field public static final REPEATING_BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

.field public static final REPEATING_NEAREST:Lorg/anddev/andengine/opengl/texture/TextureOptions;

.field public static final REPEATING_NEAREST_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;


# instance fields
.field public final mMagFilter:I

.field public final mMinFilter:I

.field public final mPreMultipyAlpha:Z

.field public final mWrapS:F

.field public final mWrapT:F


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v5, 0x0

    const v3, 0x812f

    const/16 v14, 0x2901

    const/16 v7, 0x2601

    const/16 v1, 0x2600

    new-instance v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->NEAREST:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    new-instance v6, Lorg/anddev/andengine/opengl/texture/TextureOptions;

    move v8, v7

    move v9, v3

    move v10, v3

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lorg/anddev/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v6, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    new-instance v8, Lorg/anddev/andengine/opengl/texture/TextureOptions;

    move v9, v1

    move v10, v1

    move v11, v14

    move v12, v14

    move v13, v5

    invoke-direct/range {v8 .. v13}, Lorg/anddev/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v8, Lorg/anddev/andengine/opengl/texture/TextureOptions;->REPEATING_NEAREST:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    new-instance v6, Lorg/anddev/andengine/opengl/texture/TextureOptions;

    move v8, v7

    move v9, v14

    move v10, v14

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lorg/anddev/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v6, Lorg/anddev/andengine/opengl/texture/TextureOptions;->REPEATING_BILINEAR:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    new-instance v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;

    const/4 v5, 0x1

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->NEAREST_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    new-instance v6, Lorg/anddev/andengine/opengl/texture/TextureOptions;

    const/4 v11, 0x1

    move v8, v7

    move v9, v3

    move v10, v3

    invoke-direct/range {v6 .. v11}, Lorg/anddev/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v6, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    new-instance v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;

    const/4 v5, 0x1

    move v2, v1

    move v3, v14

    move v4, v14

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->REPEATING_NEAREST_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    new-instance v6, Lorg/anddev/andengine/opengl/texture/TextureOptions;

    const/4 v11, 0x1

    move v8, v7

    move v9, v14

    move v10, v14

    invoke-direct/range {v6 .. v11}, Lorg/anddev/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v6, Lorg/anddev/andengine/opengl/texture/TextureOptions;->REPEATING_BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    sget-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->NEAREST_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    sput-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mMinFilter:I

    iput p2, p0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mMagFilter:I

    int-to-float v0, p3

    iput v0, p0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mWrapT:F

    int-to-float v0, p4

    iput v0, p0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mWrapS:F

    iput-boolean p5, p0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mPreMultipyAlpha:Z

    return-void
.end method


# virtual methods
.method public apply(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    const/16 v2, 0xde1

    const/16 v0, 0x2801

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mMinFilter:I

    int-to-float v1, v1

    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mMagFilter:I

    int-to-float v1, v1

    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mWrapS:F

    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mWrapT:F

    invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/high16 v2, 0x4604

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    return-void
.end method
