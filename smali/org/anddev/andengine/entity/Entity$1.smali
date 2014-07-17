.class Lorg/anddev/andengine/entity/Entity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/ParameterCallable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/anddev/andengine/util/ParameterCallable",
        "<",
        "Lorg/anddev/andengine/entity/IEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/Entity$1;->call(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public call(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/anddev/andengine/entity/IEntity;->setParent(Lorg/anddev/andengine/entity/IEntity;)V

    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->onDetached()V

    return-void
.end method
