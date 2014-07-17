.class public Lorg/anddev/andengine/util/modifier/ModifierList;
.super Lorg/anddev/andengine/util/SmartList;

# interfaces
.implements Lorg/anddev/andengine/engine/handler/IUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/anddev/andengine/util/SmartList",
        "<",
        "Lorg/anddev/andengine/util/modifier/IModifier",
        "<TT;>;>;",
        "Lorg/anddev/andengine/engine/handler/IUpdateHandler;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x165918c8d0a83583L


# instance fields
.field private final mTarget:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Lorg/anddev/andengine/util/SmartList;-><init>()V

    iput-object p1, p0, Lorg/anddev/andengine/util/modifier/ModifierList;->mTarget:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lorg/anddev/andengine/util/SmartList;-><init>(I)V

    iput-object p1, p0, Lorg/anddev/andengine/util/modifier/ModifierList;->mTarget:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getTarget()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/util/modifier/ModifierList;->mTarget:Ljava/lang/Object;

    return-object v0
.end method

.method public onUpdate(F)V
    .locals 3

    invoke-virtual {p0}, Lorg/anddev/andengine/util/modifier/ModifierList;->size()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/util/modifier/IModifier;

    iget-object v2, p0, Lorg/anddev/andengine/util/modifier/ModifierList;->mTarget:Ljava/lang/Object;

    invoke-interface {v0, p1, v2}, Lorg/anddev/andengine/util/modifier/IModifier;->onUpdate(FLjava/lang/Object;)F

    invoke-interface {v0}, Lorg/anddev/andengine/util/modifier/IModifier;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lorg/anddev/andengine/util/modifier/IModifier;->isRemoveWhenFinished()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/util/modifier/IModifier;

    invoke-interface {v0}, Lorg/anddev/andengine/util/modifier/IModifier;->reset()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method
