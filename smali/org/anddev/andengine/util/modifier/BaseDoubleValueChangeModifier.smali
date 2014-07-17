.class public abstract Lorg/anddev/andengine/util/modifier/BaseDoubleValueChangeModifier;
.super Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private mValueChangeBPerSecond:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueChangeModifier;-><init>(FFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    return-void
.end method

.method public constructor <init>(FFFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFF",
            "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;-><init>(FFLorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    div-float v0, p3, p1

    iput v0, p0, Lorg/anddev/andengine/util/modifier/BaseDoubleValueChangeModifier;->mValueChangeBPerSecond:F

    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/util/modifier/BaseDoubleValueChangeModifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/BaseDoubleValueChangeModifier",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;-><init>(Lorg/anddev/andengine/util/modifier/BaseSingleValueChangeModifier;)V

    iget v0, p1, Lorg/anddev/andengine/util/modifier/BaseDoubleValueChangeModifier;->mValueChangeBPerSecond:F

    iput v0, p0, Lorg/anddev/andengine/util/modifier/BaseDoubleValueChangeModifier;->mValueChangeBPerSecond:F

    return-void
.end method


# virtual methods
.method protected onChangeValue(FLjava/lang/Object;F)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;F)V"
        }
    .end annotation

    iget v0, p0, Lorg/anddev/andengine/util/modifier/BaseDoubleValueChangeModifier;->mValueChangeBPerSecond:F

    mul-float/2addr v0, p1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/util/modifier/BaseDoubleValueChangeModifier;->onChangeValues(FLjava/lang/Object;FF)V

    return-void
.end method

.method protected abstract onChangeValues(FLjava/lang/Object;FF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FTT;FF)V"
        }
    .end annotation
.end method
