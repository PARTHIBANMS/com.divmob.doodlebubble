.class public Lorg/anddev/andengine/entity/util/FPSCounter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/engine/handler/IUpdateHandler;


# instance fields
.field protected mFrames:I

.field protected mSecondsElapsed:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFPS()F
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/entity/util/FPSCounter;->mFrames:I

    int-to-float v0, v0

    iget v1, p0, Lorg/anddev/andengine/entity/util/FPSCounter;->mSecondsElapsed:F

    div-float/2addr v0, v1

    return v0
.end method

.method public onUpdate(F)V
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/util/FPSCounter;->mFrames:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/util/FPSCounter;->mFrames:I

    iget v0, p0, Lorg/anddev/andengine/entity/util/FPSCounter;->mSecondsElapsed:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/entity/util/FPSCounter;->mSecondsElapsed:F

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/entity/util/FPSCounter;->mFrames:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/entity/util/FPSCounter;->mSecondsElapsed:F

    return-void
.end method
