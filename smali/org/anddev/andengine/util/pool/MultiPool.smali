.class public Lorg/anddev/andengine/util/pool/MultiPool;
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
.field private final mPools:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/anddev/andengine/util/pool/GenericPool",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/util/pool/MultiPool;->mPools:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public obtainPoolItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/util/pool/MultiPool;->mPools:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/util/pool/GenericPool;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/anddev/andengine/util/pool/GenericPool;->obtainPoolItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public recyclePoolItem(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/util/pool/MultiPool;->mPools:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/util/pool/GenericPool;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lorg/anddev/andengine/util/pool/GenericPool;->recyclePoolItem(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public registerPool(ILorg/anddev/andengine/util/pool/GenericPool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/anddev/andengine/util/pool/GenericPool",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/util/pool/MultiPool;->mPools:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
