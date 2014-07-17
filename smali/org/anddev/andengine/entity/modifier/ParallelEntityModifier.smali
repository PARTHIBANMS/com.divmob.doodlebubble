.class public Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;
.super Lorg/anddev/andengine/util/modifier/ParallelModifier;

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/modifier/ParallelModifier",
        "<",
        "Lorg/anddev/andengine/entity/IEntity;",
        ">;",
        "Lorg/anddev/andengine/entity/modifier/IEntityModifier;"
    }
.end annotation


# direct methods
.method public varargs constructor <init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/util/modifier/ParallelModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V

    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/ParallelModifier;-><init>(Lorg/anddev/andengine/util/modifier/ParallelModifier;)V

    return-void
.end method

.method public varargs constructor <init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
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
.method public bridge synthetic deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    new-instance v0, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/util/modifier/IModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

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

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    move-result-object v0

    return-object v0
.end method
