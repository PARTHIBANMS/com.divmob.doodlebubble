.class public abstract Lorg/anddev/andengine/util/pool/GenericPool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mAvailableItems:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mGrowth:I

.field private mUnrecycledCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/anddev/andengine/util/pool/GenericPool;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/anddev/andengine/util/pool/GenericPool;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/util/pool/GenericPool;->mAvailableItems:Ljava/util/Stack;

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pGrowth must be at least 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p2, p0, Lorg/anddev/andengine/util/pool/GenericPool;->mGrowth:I

    if-lez p1, :cond_1

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/pool/GenericPool;->batchAllocatePoolItems(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized batchAllocatePoolItems(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/anddev/andengine/util/pool/GenericPool;->mAvailableItems:Ljava/util/Stack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-gez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/anddev/andengine/util/pool/GenericPool;->onHandleAllocatePoolItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUnrecycledCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/anddev/andengine/util/pool/GenericPool;->mUnrecycledCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized obtainPoolItem()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/util/pool/GenericPool;->mAvailableItems:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/util/pool/GenericPool;->mAvailableItems:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/pool/GenericPool;->onHandleObtainItem(Ljava/lang/Object;)V

    iget v1, p0, Lorg/anddev/andengine/util/pool/GenericPool;->mUnrecycledCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/anddev/andengine/util/pool/GenericPool;->mUnrecycledCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget v0, p0, Lorg/anddev/andengine/util/pool/GenericPool;->mGrowth:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/anddev/andengine/util/pool/GenericPool;->onHandleAllocatePoolItem()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> was exhausted, with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/anddev/andengine/util/pool/GenericPool;->mUnrecycledCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " item not yet recycled. Allocated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/anddev/andengine/util/pool/GenericPool;->mGrowth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " more."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/anddev/andengine/util/Debug;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget v0, p0, Lorg/anddev/andengine/util/pool/GenericPool;->mGrowth:I

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/pool/GenericPool;->batchAllocatePoolItems(I)V

    iget-object v0, p0, Lorg/anddev/andengine/util/pool/GenericPool;->mAvailableItems:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method protected abstract onAllocatePoolItem()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected onHandleAllocatePoolItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/util/pool/GenericPool;->onAllocatePoolItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onHandleObtainItem(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method protected onHandleRecycleItem(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized recyclePoolItem(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot recycle null item!"

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
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/pool/GenericPool;->onHandleRecycleItem(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/anddev/andengine/util/pool/GenericPool;->mAvailableItems:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lorg/anddev/andengine/util/pool/GenericPool;->mUnrecycledCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/anddev/andengine/util/pool/GenericPool;->mUnrecycledCount:I

    iget v0, p0, Lorg/anddev/andengine/util/pool/GenericPool;->mUnrecycledCount:I

    if-gez v0, :cond_1

    const-string v0, "More items recycled than obtained!"

    invoke-static {v0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized shufflePoolItems()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/util/pool/GenericPool;->mAvailableItems:Ljava/util/Stack;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
