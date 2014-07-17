.class public abstract Lorg/anddev/andengine/util/modifier/BaseModifier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/modifier/IModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/anddev/andengine/util/modifier/IModifier",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected mFinished:Z

.field private final mModifierListeners:Lorg/anddev/andengine/util/SmartList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/SmartList",
            "<",
            "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private mRemoveWhenFinished:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/util/modifier/BaseModifier;->mRemoveWhenFinished:Z

    new-instance v0, Lorg/anddev/andengine/util/SmartList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/anddev/andengine/util/SmartList;-><init>(I)V

    iput-object v0, p0, Lorg/anddev/andengine/util/modifier/BaseModifier;->mModifierListeners:Lorg/anddev/andengine/util/SmartList;

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/util/modifier/BaseModifier;->mRemoveWhenFinished:Z

    new-instance v0, Lorg/anddev/andengine/util/SmartList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/anddev/andengine/util/SmartList;-><init>(I)V

    iput-object v0, p0, Lorg/anddev/andengine/util/modifier/BaseModifier;->mModifierListeners:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseModifier;->addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    return-void
.end method


# virtual methods
.method public addModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/BaseModifier;->mModifierListeners:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/SmartList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public abstract deepCopy()Lorg/anddev/andengine/util/modifier/IModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation
.end method

.method public isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/util/modifier/BaseModifier;->mFinished:Z

    return v0
.end method

.method public final isRemoveWhenFinished()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/util/modifier/BaseModifier;->mRemoveWhenFinished:Z

    return v0
.end method

.method protected onModifierFinished(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v2, p0, Lorg/anddev/andengine/util/modifier/BaseModifier;->mModifierListeners:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v2}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;

    invoke-interface {v0, p0, p1}, Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;->onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method protected onModifierStarted(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v2, p0, Lorg/anddev/andengine/util/modifier/BaseModifier;->mModifierListeners:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v2}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;

    invoke-interface {v0, p0, p1}, Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;->onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public removeModifierListener(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener",
            "<TT;>;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/BaseModifier;->mModifierListeners:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/SmartList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final setRemoveWhenFinished(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/util/modifier/BaseModifier;->mRemoveWhenFinished:Z

    return-void
.end method
