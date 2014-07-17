.class public abstract Lorg/anddev/andengine/util/pool/PoolUpdateHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/engine/handler/IUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/anddev/andengine/util/pool/PoolItem;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/anddev/andengine/engine/handler/IUpdateHandler;"
    }
.end annotation


# instance fields
.field private final mPool:Lorg/anddev/andengine/util/pool/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/pool/Pool",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mScheduledPoolItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/util/pool/PoolUpdateHandler;->mScheduledPoolItems:Ljava/util/ArrayList;

    new-instance v0, Lorg/anddev/andengine/util/pool/PoolUpdateHandler$1;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/util/pool/PoolUpdateHandler$1;-><init>(Lorg/anddev/andengine/util/pool/PoolUpdateHandler;)V

    iput-object v0, p0, Lorg/anddev/andengine/util/pool/PoolUpdateHandler;->mPool:Lorg/anddev/andengine/util/pool/Pool;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/util/pool/PoolUpdateHandler;->mScheduledPoolItems:Ljava/util/ArrayList;

    new-instance v0, Lorg/anddev/andengine/util/pool/PoolUpdateHandler$2;

    invoke-direct {v0, p0, p1}, Lorg/anddev/andengine/util/pool/PoolUpdateHandler$2;-><init>(Lorg/anddev/andengine/util/pool/PoolUpdateHandler;I)V

    iput-object v0, p0, Lorg/anddev/andengine/util/pool/PoolUpdateHandler;->mPool:Lorg/anddev/andengine/util/pool/Pool;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/util/pool/PoolUpdateHandler;->mScheduledPoolItems:Ljava/util/ArrayList;

    new-instance v0, Lorg/anddev/andengine/util/pool/PoolUpdateHandler$3;

    invoke-direct {v0, p0, p1, p2}, Lorg/anddev/andengine/util/pool/PoolUpdateHandler$3;-><init>(Lorg/anddev/andengine/util/pool/PoolUpdateHandler;II)V

    iput-object v0, p0, Lorg/anddev/andengine/util/pool/PoolUpdateHandler;->mPool:Lorg/anddev/andengine/util/pool/Pool;

    return-void
.end method


# virtual methods
.method public obtainPoolItem()Lorg/anddev/andengine/util/pool/PoolItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/util/pool/PoolUpdateHandler;->mPool:Lorg/anddev/andengine/util/pool/Pool;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/pool/Pool;->obtainPoolItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/util/pool/PoolItem;

    return-object v0
.end method

.method protected abstract onAllocatePoolItem()Lorg/anddev/andengine/util/pool/PoolItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract onHandlePoolItem(Lorg/anddev/andengine/util/pool/PoolItem;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public onUpdate(F)V
    .locals 5

    iget-object v2, p0, Lorg/anddev/andengine/util/pool/PoolUpdateHandler;->mScheduledPoolItems:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v4, p0, Lorg/anddev/andengine/util/pool/PoolUpdateHandler;->mPool:Lorg/anddev/andengine/util/pool/Pool;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/util/pool/PoolItem;

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/pool/PoolUpdateHandler;->onHandlePoolItem(Lorg/anddev/andengine/util/pool/PoolItem;)V

    invoke-virtual {v4, v0}, Lorg/anddev/andengine/util/pool/Pool;->recyclePoolItem(Lorg/anddev/andengine/util/pool/PoolItem;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public postPoolItem(Lorg/anddev/andengine/util/pool/PoolItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v1, p0, Lorg/anddev/andengine/util/pool/PoolUpdateHandler;->mScheduledPoolItems:Ljava/util/ArrayList;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "PoolItem already recycled!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/anddev/andengine/util/pool/PoolUpdateHandler;->mPool:Lorg/anddev/andengine/util/pool/Pool;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/pool/Pool;->ownsPoolItem(Lorg/anddev/andengine/util/pool/PoolItem;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "PoolItem from another pool!"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/anddev/andengine/util/pool/PoolUpdateHandler;->mScheduledPoolItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public reset()V
    .locals 4

    iget-object v2, p0, Lorg/anddev/andengine/util/pool/PoolUpdateHandler;->mScheduledPoolItems:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lorg/anddev/andengine/util/pool/PoolUpdateHandler;->mPool:Lorg/anddev/andengine/util/pool/Pool;

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/util/pool/PoolItem;

    invoke-virtual {v3, v0}, Lorg/anddev/andengine/util/pool/Pool;->recyclePoolItem(Lorg/anddev/andengine/util/pool/PoolItem;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
