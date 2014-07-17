.class public abstract Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;
.super Lorg/anddev/andengine/util/pool/PoolUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/anddev/andengine/util/pool/RunnablePoolItem;",
        ">",
        "Lorg/anddev/andengine/util/pool/PoolUpdateHandler",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/util/pool/PoolUpdateHandler;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/pool/PoolUpdateHandler;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onAllocatePoolItem()Lorg/anddev/andengine/util/pool/PoolItem;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;->onAllocatePoolItem()Lorg/anddev/andengine/util/pool/RunnablePoolItem;

    move-result-object v0

    return-object v0
.end method

.method protected abstract onAllocatePoolItem()Lorg/anddev/andengine/util/pool/RunnablePoolItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected bridge synthetic onHandlePoolItem(Lorg/anddev/andengine/util/pool/PoolItem;)V
    .locals 0

    check-cast p1, Lorg/anddev/andengine/util/pool/RunnablePoolItem;

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;->onHandlePoolItem(Lorg/anddev/andengine/util/pool/RunnablePoolItem;)V

    return-void
.end method

.method protected onHandlePoolItem(Lorg/anddev/andengine/util/pool/RunnablePoolItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/anddev/andengine/util/pool/RunnablePoolItem;->run()V

    return-void
.end method
