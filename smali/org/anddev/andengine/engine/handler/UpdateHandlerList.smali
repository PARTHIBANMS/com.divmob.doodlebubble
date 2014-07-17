.class public Lorg/anddev/andengine/engine/handler/UpdateHandlerList;
.super Lorg/anddev/andengine/util/SmartList;

# interfaces
.implements Lorg/anddev/andengine/engine/handler/IUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/SmartList",
        "<",
        "Lorg/anddev/andengine/engine/handler/IUpdateHandler;",
        ">;",
        "Lorg/anddev/andengine/engine/handler/IUpdateHandler;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7ab717f11bdc2b5dL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/util/SmartList;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/SmartList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 2

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/engine/handler/IUpdateHandler;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/engine/handler/IUpdateHandler;->onUpdate(F)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/engine/handler/IUpdateHandler;

    invoke-interface {v0}, Lorg/anddev/andengine/engine/handler/IUpdateHandler;->reset()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method
