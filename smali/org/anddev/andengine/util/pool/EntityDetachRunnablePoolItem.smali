.class public Lorg/anddev/andengine/util/pool/EntityDetachRunnablePoolItem;
.super Lorg/anddev/andengine/util/pool/RunnablePoolItem;


# instance fields
.field protected mEntity:Lorg/anddev/andengine/entity/IEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/util/pool/RunnablePoolItem;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/util/pool/EntityDetachRunnablePoolItem;->mEntity:Lorg/anddev/andengine/entity/IEntity;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/IEntity;->detachSelf()Z

    return-void
.end method

.method public setEntity(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/util/pool/EntityDetachRunnablePoolItem;->mEntity:Lorg/anddev/andengine/entity/IEntity;

    return-void
.end method
