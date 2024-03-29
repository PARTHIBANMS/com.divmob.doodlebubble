.class public abstract Lorg/anddev/andengine/entity/util/AverageFPSCounter;
.super Lorg/anddev/andengine/entity/util/FPSCounter;

# interfaces
.implements Lorg/anddev/andengine/util/constants/TimeConstants;


# static fields
.field private static final AVERAGE_DURATION_DEFAULT:F = 5.0f


# instance fields
.field protected final mAverageDuration:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x40a0

    invoke-direct {p0, v0}, Lorg/anddev/andengine/entity/util/AverageFPSCounter;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/entity/util/FPSCounter;-><init>()V

    iput p1, p0, Lorg/anddev/andengine/entity/util/AverageFPSCounter;->mAverageDuration:F

    return-void
.end method


# virtual methods
.method protected abstract onHandleAverageDurationElapsed(F)V
.end method

.method public onUpdate(F)V
    .locals 2

    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/util/FPSCounter;->onUpdate(F)V

    iget v0, p0, Lorg/anddev/andengine/entity/util/AverageFPSCounter;->mSecondsElapsed:F

    iget v1, p0, Lorg/anddev/andengine/entity/util/AverageFPSCounter;->mAverageDuration:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/util/AverageFPSCounter;->getFPS()F

    move-result v0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/util/AverageFPSCounter;->onHandleAverageDurationElapsed(F)V

    iget v0, p0, Lorg/anddev/andengine/entity/util/AverageFPSCounter;->mSecondsElapsed:F

    iget v1, p0, Lorg/anddev/andengine/entity/util/AverageFPSCounter;->mAverageDuration:F

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/entity/util/AverageFPSCounter;->mSecondsElapsed:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/entity/util/AverageFPSCounter;->mFrames:I

    :cond_0
    return-void
.end method
