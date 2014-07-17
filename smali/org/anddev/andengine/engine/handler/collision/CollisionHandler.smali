.class public Lorg/anddev/andengine/engine/handler/collision/CollisionHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/engine/handler/IUpdateHandler;


# instance fields
.field private final mCheckShape:Lorg/anddev/andengine/entity/shape/IShape;

.field private final mCollisionCallback:Lorg/anddev/andengine/engine/handler/collision/ICollisionCallback;

.field private final mTargetStaticEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<+",
            "Lorg/anddev/andengine/entity/shape/IShape;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/engine/handler/collision/ICollisionCallback;Lorg/anddev/andengine/entity/shape/IShape;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/engine/handler/collision/ICollisionCallback;",
            "Lorg/anddev/andengine/entity/shape/IShape;",
            "Ljava/util/ArrayList",
            "<+",
            "Lorg/anddev/andengine/entity/shape/IShape;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pCollisionCallback must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pCheckShape must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pTargetStaticEntities must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lorg/anddev/andengine/engine/handler/collision/CollisionHandler;->mCollisionCallback:Lorg/anddev/andengine/engine/handler/collision/ICollisionCallback;

    iput-object p2, p0, Lorg/anddev/andengine/engine/handler/collision/CollisionHandler;->mCheckShape:Lorg/anddev/andengine/entity/shape/IShape;

    iput-object p3, p0, Lorg/anddev/andengine/engine/handler/collision/CollisionHandler;->mTargetStaticEntities:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/engine/handler/collision/ICollisionCallback;Lorg/anddev/andengine/entity/shape/IShape;Lorg/anddev/andengine/entity/shape/IShape;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p3}, Lorg/anddev/andengine/util/ListUtils;->toList(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/anddev/andengine/engine/handler/collision/CollisionHandler;-><init>(Lorg/anddev/andengine/engine/handler/collision/ICollisionCallback;Lorg/anddev/andengine/entity/shape/IShape;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 6

    iget-object v2, p0, Lorg/anddev/andengine/engine/handler/collision/CollisionHandler;->mCheckShape:Lorg/anddev/andengine/entity/shape/IShape;

    iget-object v3, p0, Lorg/anddev/andengine/engine/handler/collision/CollisionHandler;->mTargetStaticEntities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/shape/IShape;

    invoke-interface {v2, v0}, Lorg/anddev/andengine/entity/shape/IShape;->collidesWith(Lorg/anddev/andengine/entity/shape/IShape;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v5, p0, Lorg/anddev/andengine/engine/handler/collision/CollisionHandler;->mCollisionCallback:Lorg/anddev/andengine/engine/handler/collision/ICollisionCallback;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/shape/IShape;

    invoke-interface {v5, v2, v0}, Lorg/anddev/andengine/engine/handler/collision/ICollisionCallback;->onCollision(Lorg/anddev/andengine/entity/shape/IShape;Lorg/anddev/andengine/entity/shape/IShape;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
