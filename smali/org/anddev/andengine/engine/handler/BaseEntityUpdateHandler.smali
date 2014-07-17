.class public abstract Lorg/anddev/andengine/engine/handler/BaseEntityUpdateHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/engine/handler/IUpdateHandler;


# instance fields
.field private final mEntity:Lorg/anddev/andengine/entity/IEntity;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/anddev/andengine/engine/handler/BaseEntityUpdateHandler;->mEntity:Lorg/anddev/andengine/entity/IEntity;

    return-void
.end method


# virtual methods
.method public final onUpdate(F)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/handler/BaseEntityUpdateHandler;->mEntity:Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, v0}, Lorg/anddev/andengine/engine/handler/BaseEntityUpdateHandler;->onUpdate(FLorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected abstract onUpdate(FLorg/anddev/andengine/entity/IEntity;)V
.end method

.method public reset()V
    .locals 0

    return-void
.end method
