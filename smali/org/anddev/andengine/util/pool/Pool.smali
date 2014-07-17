.class public abstract Lorg/anddev/andengine/util/pool/Pool;
.super Lorg/anddev/andengine/util/pool/GenericPool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/anddev/andengine/util/pool/PoolItem;",
        ">",
        "Lorg/anddev/andengine/util/pool/GenericPool",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/util/pool/GenericPool;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/pool/GenericPool;-><init>(I)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/util/pool/GenericPool;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onHandleAllocatePoolItem()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/util/pool/Pool;->onHandleAllocatePoolItem()Lorg/anddev/andengine/util/pool/PoolItem;

    move-result-object v0

    return-object v0
.end method

.method protected onHandleAllocatePoolItem()Lorg/anddev/andengine/util/pool/PoolItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-super {p0}, Lorg/anddev/andengine/util/pool/GenericPool;->onHandleAllocatePoolItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/util/pool/PoolItem;

    iput-object p0, v0, Lorg/anddev/andengine/util/pool/PoolItem;->mParent:Lorg/anddev/andengine/util/pool/Pool;

    return-object v0
.end method

.method protected bridge synthetic onHandleObtainItem(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/anddev/andengine/util/pool/PoolItem;

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/pool/Pool;->onHandleObtainItem(Lorg/anddev/andengine/util/pool/PoolItem;)V

    return-void
.end method

.method protected onHandleObtainItem(Lorg/anddev/andengine/util/pool/PoolItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/anddev/andengine/util/pool/PoolItem;->mRecycled:Z

    invoke-virtual {p1}, Lorg/anddev/andengine/util/pool/PoolItem;->onObtain()V

    return-void
.end method

.method protected bridge synthetic onHandleRecycleItem(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/anddev/andengine/util/pool/PoolItem;

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/pool/Pool;->onHandleRecycleItem(Lorg/anddev/andengine/util/pool/PoolItem;)V

    return-void
.end method

.method protected onHandleRecycleItem(Lorg/anddev/andengine/util/pool/PoolItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/anddev/andengine/util/pool/PoolItem;->onRecycle()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/anddev/andengine/util/pool/PoolItem;->mRecycled:Z

    return-void
.end method

.method public declared-synchronized ownsPoolItem(Lorg/anddev/andengine/util/pool/PoolItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lorg/anddev/andengine/util/pool/PoolItem;->mParent:Lorg/anddev/andengine/util/pool/Pool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method recycle(Lorg/anddev/andengine/util/pool/PoolItem;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/pool/Pool;->recyclePoolItem(Lorg/anddev/andengine/util/pool/PoolItem;)V

    return-void
.end method

.method public bridge synthetic recyclePoolItem(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/anddev/andengine/util/pool/PoolItem;

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/pool/Pool;->recyclePoolItem(Lorg/anddev/andengine/util/pool/PoolItem;)V

    return-void
.end method

.method public declared-synchronized recyclePoolItem(Lorg/anddev/andengine/util/pool/PoolItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lorg/anddev/andengine/util/pool/PoolItem;->mParent:Lorg/anddev/andengine/util/pool/Pool;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PoolItem not assigned to a pool!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1, p0}, Lorg/anddev/andengine/util/pool/PoolItem;->isFromPool(Lorg/anddev/andengine/util/pool/Pool;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PoolItem from another pool!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lorg/anddev/andengine/util/pool/PoolItem;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PoolItem already recycled!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-super {p0, p1}, Lorg/anddev/andengine/util/pool/GenericPool;->recyclePoolItem(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method
