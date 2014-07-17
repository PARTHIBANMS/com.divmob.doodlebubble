.class public Lorg/anddev/andengine/util/TransformationPool;
.super Ljava/lang/Object;


# static fields
.field private static final POOL:Lorg/anddev/andengine/util/pool/GenericPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/pool/GenericPool",
            "<",
            "Lorg/anddev/andengine/util/Transformation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/anddev/andengine/util/TransformationPool$1;

    invoke-direct {v0}, Lorg/anddev/andengine/util/TransformationPool$1;-><init>()V

    sput-object v0, Lorg/anddev/andengine/util/TransformationPool;->POOL:Lorg/anddev/andengine/util/pool/GenericPool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain()Lorg/anddev/andengine/util/Transformation;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/util/TransformationPool;->POOL:Lorg/anddev/andengine/util/pool/GenericPool;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/pool/GenericPool;->obtainPoolItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/util/Transformation;

    return-object v0
.end method

.method public static recycle(Lorg/anddev/andengine/util/Transformation;)V
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/util/Transformation;->setToIdentity()V

    sget-object v0, Lorg/anddev/andengine/util/TransformationPool;->POOL:Lorg/anddev/andengine/util/pool/GenericPool;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/util/pool/GenericPool;->recyclePoolItem(Ljava/lang/Object;)V

    return-void
.end method
