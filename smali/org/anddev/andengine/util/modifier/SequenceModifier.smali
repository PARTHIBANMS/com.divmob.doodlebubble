.class public Lorg/anddev/andengine/util/modifier/SequenceModifier;
.super Lorg/anddev/andengine/util/modifier/BaseModifier;

# interfaces
.implements Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;
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


# instance fields
.field private mCurrentSubSequenceModifierIndex:I

.field private final mDuration:F

.field private mFinishedCached:Z

.field private mSecondsElapsed:F

.field private mSubSequenceModifierListener:Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;[",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/anddev/andengine/util/modifier/SequenceModifier;-><init>(Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V

    return-void
.end method

.method public varargs constructor <init>(Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener",
            "<TT;>;",
            "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;[",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/anddev/andengine/util/modifier/BaseModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    array-length v0, p3

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pModifiers must not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifierListener:Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;

    iput-object p3, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    invoke-static {p3}, Lorg/anddev/andengine/util/modifier/util/ModifierUtils;->getSequenceDurationOfModifier([Lorg/anddev/andengine/util/modifier/IModifier;)F

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mDuration:F

    const/4 v0, 0x0

    aget-object v0, p3, v0

    invoke-interface {v0, p0}, Lorg/anddev/andengine/util/modifier/IModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    return-void
.end method

.method public varargs constructor <init>(Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener",
            "<TT;>;[",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/anddev/andengine/util/modifier/SequenceModifier;-><init>(Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V

    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/util/modifier/SequenceModifier;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/SequenceModifier",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/anddev/andengine/util/modifier/BaseModifier;-><init>()V

    iget v0, p1, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mDuration:F

    iput v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mDuration:F

    iget-object v1, p1, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    array-length v0, v1

    new-array v0, v0, [Lorg/anddev/andengine/util/modifier/IModifier;

    iput-object v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    iget-object v2, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v0, p0}, Lorg/anddev/andengine/util/modifier/IModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    return-void

    :cond_0
    aget-object v3, v1, v0

    invoke-interface {v3}, Lorg/anddev/andengine/util/modifier/IModifier;->deepCopy()Lorg/anddev/andengine/util/modifier/IModifier;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public varargs constructor <init>([Lorg/anddev/andengine/util/modifier/IModifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lorg/anddev/andengine/util/modifier/SequenceModifier;-><init>(Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V

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

    invoke-virtual {p0}, Lorg/anddev/andengine/util/modifier/SequenceModifier;->deepCopy()Lorg/anddev/andengine/util/modifier/SequenceModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/util/modifier/SequenceModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/anddev/andengine/util/modifier/SequenceModifier",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    new-instance v0, Lorg/anddev/andengine/util/modifier/SequenceModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/util/modifier/SequenceModifier;-><init>(Lorg/anddev/andengine/util/modifier/SequenceModifier;)V

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mDuration:F

    return v0
.end method

.method public getSecondsElapsed()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSecondsElapsed:F

    return v0
.end method

.method public getSubSequenceModifierListener()Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifierListener:Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;

    return-object v0
.end method

.method public onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;TT;)V"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifierListener:Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifierListener:Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;

    iget v1, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    invoke-interface {v0, p1, p2, v1}, Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;->onSubSequenceFinished(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;I)V

    :cond_0
    invoke-interface {p1, p0}, Lorg/anddev/andengine/util/modifier/IModifier;->removeModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)Z

    iget v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    iget v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    iget-object v1, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    iget v1, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0, p0}, Lorg/anddev/andengine/util/modifier/IModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    :goto_0
    return-void

    :cond_1
    iput-boolean v2, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mFinished:Z

    iput-boolean v2, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mFinishedCached:Z

    invoke-virtual {p0, p2}, Lorg/anddev/andengine/util/modifier/SequenceModifier;->onModifierFinished(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;TT;)V"
        }
    .end annotation

    iget v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/anddev/andengine/util/modifier/SequenceModifier;->onModifierStarted(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifierListener:Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifierListener:Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;

    iget v1, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    invoke-interface {v0, p1, p2, v1}, Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;->onSubSequenceStarted(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;I)V

    :cond_1
    return-void
.end method

.method public onUpdate(FLjava/lang/Object;)F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;)F"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mFinished:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iput-boolean v4, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mFinishedCached:Z

    move v1, p1

    :goto_1
    cmpl-float v2, v1, v0

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mFinishedCached:Z

    if-eqz v2, :cond_2

    :cond_1
    iput-boolean v4, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mFinishedCached:Z

    sub-float v0, p1, v1

    iget v1, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSecondsElapsed:F

    add-float/2addr v1, v0

    iput v1, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSecondsElapsed:F

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    iget v3, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    aget-object v2, v2, v3

    invoke-interface {v2, v1, p2}, Lorg/anddev/andengine/util/modifier/IModifier;->onUpdate(FLjava/lang/Object;)F

    move-result v2

    sub-float/2addr v1, v2

    goto :goto_1
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/anddev/andengine/util/modifier/SequenceModifier;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    iget-object v1, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p0}, Lorg/anddev/andengine/util/modifier/IModifier;->removeModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)Z

    :goto_0
    iput v2, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    iput-boolean v2, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mFinished:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSecondsElapsed:F

    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    aget-object v0, v0, v2

    invoke-interface {v0, p0}, Lorg/anddev/andengine/util/modifier/IModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    iget-object v1, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-gez v0, :cond_1

    return-void

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    iget v1, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mCurrentSubSequenceModifierIndex:I

    aget-object v0, v0, v1

    invoke-interface {v0, p0}, Lorg/anddev/andengine/util/modifier/IModifier;->removeModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)Z

    goto :goto_0

    :cond_1
    aget-object v2, v1, v0

    invoke-interface {v2}, Lorg/anddev/andengine/util/modifier/IModifier;->reset()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public setSubSequenceModifierListener(Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/anddev/andengine/util/modifier/SequenceModifier;->mSubSequenceModifierListener:Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;

    return-void
.end method
