.class public interface abstract Lorg/anddev/andengine/entity/util/ScreenCapture$IScreenCaptureCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/entity/util/ScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IScreenCaptureCallback"
.end annotation


# virtual methods
.method public abstract onScreenCaptureFailed(Ljava/lang/String;Ljava/lang/Exception;)V
.end method

.method public abstract onScreenCaptured(Ljava/lang/String;)V
.end method
