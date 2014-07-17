.class public Lorg/anddev/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;
.super Lorg/anddev/andengine/util/modifier/ParallelModifier;

# interfaces
.implements Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/modifier/ParallelModifier",
        "<",
        "Lorg/anddev/andengine/entity/scene/background/IBackground;",
        ">;",
        "Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>(Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;[Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/util/modifier/ParallelModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V

    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/ParallelModifier;-><init>(Lorg/anddev/andengine/util/modifier/ParallelModifier;)V

    return-void
.end method

.method public varargs constructor <init>([Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/ParallelModifier;-><init>([Lorg/anddev/andengine/util/modifier/IModifier;)V

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

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;->deepCopy()Lorg/anddev/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    new-instance v0, Lorg/anddev/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;-><init>(Lorg/anddev/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/util/modifier/IModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;->deepCopy()Lorg/anddev/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/util/modifier/ParallelModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;->deepCopy()Lorg/anddev/andengine/entity/scene/background/modifier/ParallelBackgroundModifier;

    move-result-object v0

    return-object v0
.end method
