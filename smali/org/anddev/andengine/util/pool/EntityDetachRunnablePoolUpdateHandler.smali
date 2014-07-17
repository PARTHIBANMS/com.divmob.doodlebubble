.class public Lorg/anddev/andengine/util/pool/EntityDetachRunnablePoolUpdateHandler;
.super Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler",
        "<",
        "Lorg/anddev/andengine/util/pool/EntityDetachRunnablePoolItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/util/pool/RunnablePoolUpdateHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onAllocatePoolItem()Lorg/anddev/andengine/util/pool/EntityDetachRunnablePoolItem;
    .locals 1

    new-instance v0, Lorg/anddev/andengine/util/pool/EntityDetachRunnablePoolItem;

    invoke-direct {v0}, Lorg/anddev/andengine/util/pool/EntityDetachRunnablePoolItem;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic onAllocatePoolItem()Lorg/anddev/andengine/util/pool/RunnablePoolItem;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/util/pool/EntityDetachRunnablePoolUpdateHandler;->onAllocatePoolItem()Lorg/anddev/andengine/util/pool/EntityDetachRunnablePoolItem;

    move-result-object v0

    return-object v0
.end method
