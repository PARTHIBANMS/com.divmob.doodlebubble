.class public Lorg/anddev/andengine/util/modifier/ParallelModifier;
.super Lorg/anddev/andengine/util/modifier/BaseModifier;

# interfaces
.implements Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;


# annotations
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
.field private final mDuration:F

.field private mFinishedCached:Z

.field private final mModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mSecondsElapsed:F


# direct methods
.method public varargs constructor <init>(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V
    .locals 2
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

    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    array-length v0, p2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pModifiers must not be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->MODIFIER_COMPARATOR_DURATION_DESCENDING:Ljava/util/Comparator;

    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iput-object p2, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-interface {v0}, Lorg/anddev/andengine/util/modifier/IModifier;->getDuration()F

    move-result v1

    iput v1, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mDuration:F

    invoke-interface {v0, p0}, Lorg/anddev/andengine/util/modifier/IModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/util/modifier/ParallelModifier;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/ParallelModifier",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/anddev/andengine/util/modifier/BaseModifier;-><init>()V

    iget-object v1, p1, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    array-length v0, v1

    new-array v0, v0, [Lorg/anddev/andengine/util/modifier/IModifier;

    iput-object v0, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    iget-object v2, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v0}, Lorg/anddev/andengine/util/modifier/IModifier;->getDuration()F

    move-result v1

    iput v1, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mDuration:F

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

    invoke-direct {p0, v0, p1}, Lorg/anddev/andengine/util/modifier/ParallelModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V

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

    invoke-virtual {p0}, Lorg/anddev/andengine/util/modifier/ParallelModifier;->deepCopy()Lorg/anddev/andengine/util/modifier/ParallelModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/util/modifier/ParallelModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/anddev/andengine/util/modifier/ParallelModifier",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    new-instance v0, Lorg/anddev/andengine/util/modifier/ParallelModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/util/modifier/ParallelModifier;-><init>(Lorg/anddev/andengine/util/modifier/ParallelModifier;)V

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mDuration:F

    return v0
.end method

.method public getSecondsElapsed()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mSecondsElapsed:F

    return v0
.end method

.method public onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;TT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mFinished:Z

    iput-boolean v0, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mFinishedCached:Z

    invoke-virtual {p0, p2}, Lorg/anddev/andengine/util/modifier/ParallelModifier;->onModifierFinished(Ljava/lang/Object;)V

    return-void
.end method

.method public onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;TT;)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lorg/anddev/andengine/util/modifier/ParallelModifier;->onModifierStarted(Ljava/lang/Object;)V

    return-void
.end method

.method public onUpdate(FLjava/lang/Object;)F
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;)F"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mFinished:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v4, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    iput-boolean v6, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mFinishedCached:Z

    move v3, p1

    :goto_1
    cmpl-float v1, v3, v0

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mFinishedCached:Z

    if-eqz v1, :cond_2

    :cond_1
    iput-boolean v6, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mFinishedCached:Z

    sub-float v0, p1, v3

    iget v1, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mSecondsElapsed:F

    add-float/2addr v1, v0

    iput v1, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mSecondsElapsed:F

    goto :goto_0

    :cond_2
    array-length v1, v4

    add-int/lit8 v1, v1, -0x1

    move v2, v0

    :goto_2
    if-gez v1, :cond_3

    sub-float v1, v3, v2

    move v3, v1

    goto :goto_1

    :cond_3
    aget-object v5, v4, v1

    invoke-interface {v5, p1, p2}, Lorg/anddev/andengine/util/modifier/IModifier;->onUpdate(FLjava/lang/Object;)F

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mFinished:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mSecondsElapsed:F

    iget-object v1, p0, Lorg/anddev/andengine/util/modifier/ParallelModifier;->mModifiers:[Lorg/anddev/andengine/util/modifier/IModifier;

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    aget-object v2, v1, v0

    invoke-interface {v2}, Lorg/anddev/andengine/util/modifier/IModifier;->reset()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
