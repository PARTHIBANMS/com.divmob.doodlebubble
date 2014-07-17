.class public abstract Lorg/anddev/andengine/util/modifier/BaseDurationModifier;
.super Lorg/anddev/andengine/util/modifier/BaseModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/anddev/andengine/util/modifier/BaseModifier",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final mDuration:F

.field private mSecondsElapsed:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/util/modifier/BaseModifier;-><init>()V

    iput p1, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mDuration:F

    return-void
.end method

.method public constructor <init>(FLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/anddev/andengine/util/modifier/BaseModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    iput p1, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mDuration:F

    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/util/modifier/BaseDurationModifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/BaseDurationModifier",
            "<TT;>;)V"
        }
    .end annotation

    iget v0, p1, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mDuration:F

    invoke-direct {p0, v0}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(F)V

    return-void
.end method


# virtual methods
.method public getDuration()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mDuration:F

    return v0
.end method

.method public getSecondsElapsed()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mSecondsElapsed:F

    return v0
.end method

.method protected abstract onManagedInitialize(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract onManagedUpdate(FLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;)V"
        }
    .end annotation
.end method

.method public final onUpdate(FLjava/lang/Object;)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;)F"
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mFinished:Z

    if-eqz v1, :cond_1

    move p1, v0

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v1, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mSecondsElapsed:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->onManagedInitialize(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->onModifierStarted(Ljava/lang/Object;)V

    :cond_2
    iget v0, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mSecondsElapsed:F

    add-float/2addr v0, p1

    iget v1, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mDuration:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    :goto_1
    iget v0, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mSecondsElapsed:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mSecondsElapsed:F

    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->onManagedUpdate(FLjava/lang/Object;)V

    iget v0, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mDuration:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mSecondsElapsed:F

    iget v1, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mDuration:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mDuration:F

    iput v0, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mSecondsElapsed:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mFinished:Z

    invoke-virtual {p0, p2}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->onModifierFinished(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mDuration:F

    iget v1, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mSecondsElapsed:F

    sub-float p1, v0, v1

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mFinished:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;->mSecondsElapsed:F

    return-void
.end method
