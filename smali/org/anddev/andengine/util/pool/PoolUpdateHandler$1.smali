.class Lorg/anddev/andengine/util/pool/PoolUpdateHandler$1;
.super Lorg/anddev/andengine/util/pool/Pool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/pool/Pool",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/anddev/andengine/util/pool/PoolUpdateHandler;


# direct methods
.method constructor <init>(Lorg/anddev/andengine/util/pool/PoolUpdateHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/util/pool/PoolUpdateHandler$1;->this$0:Lorg/anddev/andengine/util/pool/PoolUpdateHandler;

    invoke-direct {p0}, Lorg/anddev/andengine/util/pool/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onAllocatePoolItem()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/util/pool/PoolUpdateHandler$1;->onAllocatePoolItem()Lorg/anddev/andengine/util/pool/PoolItem;

    move-result-object v0

    return-object v0
.end method

.method protected onAllocatePoolItem()Lorg/anddev/andengine/util/pool/PoolItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/util/pool/PoolUpdateHandler$1;->this$0:Lorg/anddev/andengine/util/pool/PoolUpdateHandler;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/pool/PoolUpdateHandler;->onAllocatePoolItem()Lorg/anddev/andengine/util/pool/PoolItem;

    move-result-object v0

    return-object v0
.end method
