.class Lorg/anddev/andengine/util/TransformationPool$1;
.super Lorg/anddev/andengine/util/pool/GenericPool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/pool/GenericPool",
        "<",
        "Lorg/anddev/andengine/util/Transformation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/util/pool/GenericPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onAllocatePoolItem()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/util/TransformationPool$1;->onAllocatePoolItem()Lorg/anddev/andengine/util/Transformation;

    move-result-object v0

    return-object v0
.end method

.method protected onAllocatePoolItem()Lorg/anddev/andengine/util/Transformation;
    .locals 1

    new-instance v0, Lorg/anddev/andengine/util/Transformation;

    invoke-direct {v0}, Lorg/anddev/andengine/util/Transformation;-><init>()V

    return-object v0
.end method
