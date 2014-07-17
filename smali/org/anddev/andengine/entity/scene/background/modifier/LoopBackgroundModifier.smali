.class public Lorg/anddev/andengine/entity/scene/background/modifier/LoopBackgroundModifier;
.super Lorg/anddev/andengine/util/modifier/LoopModifier;

# interfaces
.implements Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/entity/scene/background/modifier/LoopBackgroundModifier$ILoopBackgroundModifierListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/modifier/LoopModifier",
        "<",
        "Lorg/anddev/andengine/entity/scene/background/IBackground;",
        ">;",
        "Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/LoopModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/util/modifier/LoopModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier;I)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;ILorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/util/modifier/LoopModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier;ILorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;ILorg/anddev/andengine/entity/scene/background/modifier/LoopBackgroundModifier$ILoopBackgroundModifierListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/util/modifier/LoopModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier;ILorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener;Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;ILorg/anddev/andengine/entity/scene/background/modifier/LoopBackgroundModifier$ILoopBackgroundModifierListener;Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/util/modifier/LoopModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier;ILorg/anddev/andengine/util/modifier/LoopModifier$ILoopModifierListener;Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/scene/background/modifier/LoopBackgroundModifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/LoopModifier;-><init>(Lorg/anddev/andengine/util/modifier/LoopModifier;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/background/modifier/LoopBackgroundModifier;->deepCopy()Lorg/anddev/andengine/entity/scene/background/modifier/LoopBackgroundModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/entity/scene/background/modifier/LoopBackgroundModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    new-instance v0, Lorg/anddev/andengine/entity/scene/background/modifier/LoopBackgroundModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/scene/background/modifier/LoopBackgroundModifier;-><init>(Lorg/anddev/andengine/entity/scene/background/modifier/LoopBackgroundModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/util/modifier/IModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/background/modifier/LoopBackgroundModifier;->deepCopy()Lorg/anddev/andengine/entity/scene/background/modifier/LoopBackgroundModifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/util/modifier/LoopModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/background/modifier/LoopBackgroundModifier;->deepCopy()Lorg/anddev/andengine/entity/scene/background/modifier/LoopBackgroundModifier;

    move-result-object v0

    return-object v0
.end method
