.class public Lorg/anddev/andengine/entity/util/ScreenCapture;
.super Lorg/anddev/andengine/entity/Entity;

# interfaces
.implements Lorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;
    }
.end annotation


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mScreenCaptureCallback:Lorg/anddev/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;

.field private final mScreenGrabber:Lorg/anddev/andengine/entity/util/ScreenGrabber;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/anddev/andengine/entity/Entity;-><init>()V

    new-instance v0, Lorg/anddev/andengine/entity/util/ScreenGrabber;

    invoke-direct {v0}, Lorg/anddev/andengine/entity/util/ScreenGrabber;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/util/ScreenCapture;->mScreenGrabber:Lorg/anddev/andengine/entity/util/ScreenGrabber;

    return-void
.end method

.method private static saveCapture(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->flushCloseStream(Ljava/io/OutputStream;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error saving file to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public capture(IIIILjava/lang/String;Lorg/anddev/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;)V
    .locals 6

    iput-object p5, p0, Lorg/anddev/andengine/entity/util/ScreenCapture;->mFilePath:Ljava/lang/String;

    iput-object p6, p0, Lorg/anddev/andengine/entity/util/ScreenCapture;->mScreenCaptureCallback:Lorg/anddev/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;

    iget-object v0, p0, Lorg/anddev/andengine/entity/util/ScreenCapture;->mScreenGrabber:Lorg/anddev/andengine/entity/util/ScreenGrabber;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lorg/anddev/andengine/entity/util/ScreenGrabber;->grab(IIIILorg/anddev/andengine/entity/util/ScreenGrabber$IScreenGrabberCallback;)V

    return-void
.end method

.method public capture(IILjava/lang/String;Lorg/anddev/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move v2, v1

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/anddev/andengine/entity/util/ScreenCapture;->capture(IIIILjava/lang/String;Lorg/anddev/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;)V

    return-void
.end method

.method protected onManagedDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/util/ScreenCapture;->mScreenGrabber:Lorg/anddev/andengine/entity/util/ScreenGrabber;

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/entity/util/ScreenGrabber;->onManagedDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    return-void
.end method

.method protected onManagedUpdate(F)V
    .locals 0

    return-void
.end method

.method public onScreenGrabFailed(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/entity/util/ScreenCapture;->mScreenCaptureCallback:Lorg/anddev/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;

    iget-object v1, p0, Lorg/anddev/andengine/entity/util/ScreenCapture;->mFilePath:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lorg/anddev/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;->onScreenCaptureFailed(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onScreenGrabbed(Landroid/graphics/Bitmap;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/util/ScreenCapture;->mFilePath:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/anddev/andengine/entity/util/ScreenCapture;->saveCapture(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/anddev/andengine/entity/util/ScreenCapture;->mScreenCaptureCallback:Lorg/anddev/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;

    iget-object v1, p0, Lorg/anddev/andengine/entity/util/ScreenCapture;->mFilePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;->onScreenCaptured(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/anddev/andengine/entity/util/ScreenCapture;->mScreenCaptureCallback:Lorg/anddev/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;

    iget-object v2, p0, Lorg/anddev/andengine/entity/util/ScreenCapture;->mFilePath:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lorg/anddev/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;->onScreenCaptureFailed(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
