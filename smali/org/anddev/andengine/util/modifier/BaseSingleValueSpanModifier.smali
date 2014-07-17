.class public abstract Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;
.super Lorg/anddev/andengine/util/modifier/BaseDurationModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/anddev/andengine/util/modifier/BaseDurationModifier",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

.field private final mFromValue:F

.field private final mValueSpan:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 6

    const/4 v4, 0x0

    sget-object v5, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;-><init>(FFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF",
            "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    sget-object v5, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;-><init>(FFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF",
            "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;",
            "Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p4}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(FLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    iput p2, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    sub-float v0, p3, p2

    iput v0, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mValueSpan:F

    iput-object p5, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    return-void
.end method

.method public constructor <init>(FFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;-><init>(FFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseDurationModifier;-><init>(Lorg/anddev/andengine/util/modifier/BaseDurationModifier;)V

    iget v0, p1, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    iput v0, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    iget v0, p1, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mValueSpan:F

    iput v0, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mValueSpan:F

    iget-object v0, p1, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    iput-object v0, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    return-void
.end method


# virtual methods
.method protected onManagedInitialize(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v0, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    invoke-virtual {p0, p1, v0}, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->onSetInitialValue(Ljava/lang/Object;F)V

    return-void
.end method

.method protected onManagedUpdate(FLjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    invoke-virtual {p0}, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->getSecondsElapsed()F

    move-result v1

    iget v2, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mDuration:F

    invoke-interface {v0, v1, v2}, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->getPercentage(FF)F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mFromValue:F

    iget v2, p0, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->mValueSpan:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    invoke-virtual {p0, p2, v0, v1}, Lorg/anddev/andengine/util/modifier/BaseSingleValueSpanModifier;->onSetValue(Ljava/lang/Object;FF)V

    return-void
.end method

.method protected abstract onSetInitialValue(Ljava/lang/Object;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation
.end method

.method protected abstract onSetValue(Ljava/lang/Object;FF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;FF)V"
        }
    .end annotation
.end method
