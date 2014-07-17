.class public Lorg/anddev/andengine/entity/util/ScreenGrabber;
.super Lorg/anddev/andengine/entity/Entity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;
    }
.end annotation


# instance fields
.field private mGrabHeight:I

.field private mGrabWidth:I

.field private mGrabX:I

.field private mGrabY:I

.field private mScreenGrabCallback:Lorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;

.field private mScreenGrabPending:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/anddev/andengine/entity/Entity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mScreenGrabPending:Z

    return-void
.end method

.method private static grab(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v2, 0x0

    add-int v0, p1, p3

    mul-int/2addr v0, p2

    new-array v8, v0, [I

    invoke-static {v8}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    add-int v4, p1, p3

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object v0, p4

    move v1, p0

    move v3, p2

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    mul-int v0, p2, p3

    new-array v3, v0, [I

    move v1, v2

    :goto_0
    if-lt v1, p3, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    :goto_1
    if-lt v0, p2, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    add-int v4, p1, v1

    mul-int/2addr v4, p2

    add-int/2addr v4, v0

    aget v4, v8, v4

    const/high16 v5, 0xff

    and-int/2addr v5, v4

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v6, v4, 0xff

    shl-int/lit8 v6, v6, 0x10

    const v7, -0xff0100

    and-int/2addr v4, v7

    sub-int v7, p3, v1

    add-int/lit8 v7, v7, -0x1

    mul-int/2addr v7, p2

    add-int/2addr v7, v0

    or-int/2addr v4, v6

    or-int/2addr v4, v5

    aput v4, v3, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public grab(IIIILorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;)V
    .locals 1

    iput p1, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mGrabX:I

    iput p2, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mGrabY:I

    iput p3, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mGrabWidth:I

    iput p4, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mGrabHeight:I

    iput-object p5, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mScreenGrabCallback:Lorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mScreenGrabPending:Z

    return-void
.end method

.method public grab(IILorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/anddev/andengine/entity/util/ScreenGrabber;->grab(IIIILorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;)V

    return-void
.end method

.method protected onManagedDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 4

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mScreenGrabPending:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget v0, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mGrabX:I

    iget v1, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mGrabY:I

    iget v2, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mGrabWidth:I

    iget v3, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mGrabHeight:I

    invoke-static {v0, v1, v2, v3, p1}, Lorg/anddev/andengine/entity/util/ScreenGrabber;->grab(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mScreenGrabCallback:Lorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;

    invoke-interface {v1, v0}, Lorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;->onScreenGrabbed(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mScreenGrabPending:Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/anddev/andengine/entity/util/ScreenGrabber;->mScreenGrabCallback:Lorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;

    invoke-interface {v1, v0}, Lorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;->onScreenGrabFailed(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onManagedUpdate(F)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method
