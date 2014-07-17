.class public Lorg/anddev/andengine/engine/camera/hud/HUD;
.super Lorg/anddev/andengine/entity/scene/CameraScene;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/anddev/andengine/entity/scene/CameraScene;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/camera/hud/HUD;->setBackgroundEnabled(Z)V

    return-void
.end method
