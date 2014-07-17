.class public Lorg/anddev/andengine/util/modifier/LoopModifier;
.super Lorg/anddev/andengine/util/modifier/BaseModifier;

# interfaces
.implements Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/anddev/andengine/util/modifier/BaseModifier",
        "<TT;>;",
        "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final LOOP_CONTINUOUS:I = -0x1


# instance fields
.field private final mDuration:F

.field private mFinishedCached:Z

.field private mLoop:I

.field private final mLoopCount:I

.field private mLoopModifierListener:Lorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mModifier:Lorg/anddev/andengine/util/modifier/IModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mModifierStartedCalled:Z

.field private mSecondsElapsed:F


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/util/modifier/IModifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lorg/anddev/andengine/util/modifier/LoopModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier;I)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/util/modifier/IModifier;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/anddev/andengine/util/modifier/LoopModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier;ILorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener;Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/util/modifier/IModifier;ILorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;I",
            "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/anddev/andengine/util/modifier/LoopModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier;ILorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener;Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/util/modifier/IModifier;ILorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;I",
            "Lorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/util/modifier/LoopModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier;ILorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener;Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/util/modifier/IModifier;ILorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener;Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;I",
            "Lorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener",
            "<TT;>;",
            "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p4}, Lorg/anddev/andengine/util/modifier/BaseModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    iput-object p1, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mModifier:Lorg/anddev/andengine/util/modifier/IModifier;

    iput p2, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mLoopCount:I

    iput-object p3, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mLoopModifierListener:Lorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener;

    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mLoop:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/high16 v0, 0x7f80

    :goto_0
    iput v0, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mDuration:F

    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mModifier:Lorg/anddev/andengine/util/modifier/IModifier;

    invoke-interface {v0, p0}, Lorg/anddev/andengine/util/modifier/IModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/anddev/andengine/util/modifier/IModifier;->getDuration()F

    move-result v0

    int-to-float v1, p2

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/anddev/andengine/util/modifier/LoopModifier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/LoopModifier",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    iget-object v0, p1, Lorg/anddev/andengine/util/modifier/LoopModifier;->mModifier:Lorg/anddev/andengine/util/modifier/IModifier;

    invoke-interface {v0}, Lorg/anddev/andengine/util/modifier/IModifier;->deepCopy()Lorg/anddev/andengine/util/modifier/IModifier;

    move-result-object v0

    iget v1, p1, Lorg/anddev/andengine/util/modifier/LoopModifier;->mLoopCount:I

    invoke-direct {p0, v0, v1}, Lorg/anddev/andengine/util/modifier/LoopModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/anddev/andengine/util/modifier/IModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/util/modifier/LoopModifier;->deepCopy()Lorg/anddev/andengine/util/modifier/LoopModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/util/modifier/LoopModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/anddev/andengine/util/modifier/LoopModifier",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    new-instance v0, Lorg/anddev/andengine/util/modifier/LoopModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/util/modifier/LoopModifier;-><init>(Lorg/anddev/andengine/util/modifier/LoopModifier;)V

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mDuration:F

    return v0
.end method

.method public getLoopModifierListener()Lorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mLoopModifierListener:Lorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener;

    return-object v0
.end method

.method public getSecondsElapsed()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mSecondsElapsed:F

    return v0
.end method

.method public onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;TT;)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mLoopModifierListener:Lorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mLoopModifierListener:Lorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener;

    iget v1, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mLoop:I

    iget v2, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mLoopCount:I

    invoke-interface {v0, p0, v1, v2}, Lorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener;->onLoopFinished(Lorg/anddev/andengine/util/modifier/LoopModifier;II)V

    :cond_0
    iget v0, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mLoopCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iput v3, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mSecondsElapsed:F

    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mModifier:Lorg/anddev/andengine/util/modifier/IModifier;

    invoke-interface {v0}, Lorg/anddev/andengine/util/modifier/IModifier;->reset()V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mLoop:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mLoop:I

    iget v0, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mLoop:I

    iget v1, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mLoopCount:I

    if-lt v0, v1, :cond_2

    iput-boolean v4, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mFinished:Z

    iput-boolean v4, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mFinishedCached:Z

    invoke-virtual {p0, p2}, Lorg/anddev/andengine/util/modifier/LoopModifier;->onModifierFinished(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iput v3, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mSecondsElapsed:F

    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mModifier:Lorg/anddev/andengine/util/modifier/IModifier;

    invoke-interface {v0}, Lorg/anddev/andengine/util/modifier/IModifier;->reset()V

    goto :goto_0
.end method

.method public onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mModifierStartedCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mModifierStartedCalled:Z

    invoke-virtual {p0, p2}, Lorg/anddev/andengine/util/modifier/LoopModifier;->onModifierStarted(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mLoopModifierListener:Lorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mLoopModifierListener:Lorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener;

    iget v1, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mLoop:I

    iget v2, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mLoopCount:I

    invoke-interface {v0, p0, v1, v2}, Lorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener;->onLoopStarted(Lorg/anddev/andengine/util/modifier/LoopModifier;II)V

    :cond_1
    return-void
.end method

.method public onUpdate(FLjava/lang/Object;)F
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;)F"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mFinished:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v3, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mFinishedCached:Z

    move v1, p1

    :goto_1
    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mFinishedCached:Z

    if-eqz v2, :cond_2

    :cond_1
    iput-boolean v3, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mFinishedCached:Z

    sub-float v0, p1, v1

    iget v1, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mSecondsElapsed:F

    add-float/2addr v1, v0

    iput v1, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mSecondsElapsed:F

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mModifier:Lorg/anddev/andengine/util/modifier/IModifier;

    invoke-interface {v2, v1, p2}, Lorg/anddev/andengine/util/modifier/IModifier;->onUpdate(FLjava/lang/Object;)F

    move-result v2

    sub-float/2addr v1, v2

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mLoop:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mSecondsElapsed:F

    iput-boolean v1, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mModifierStartedCalled:Z

    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mModifier:Lorg/anddev/andengine/util/modifier/IModifier;

    invoke-interface {v0}, Lorg/anddev/andengine/util/modifier/IModifier;->reset()V

    return-void
.end method

.method public setLoopModifierListener(Lorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/anddev/andengine/util/modifier/LoopModifier;->mLoopModifierListener:Lorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener;

    return-void
.end method
