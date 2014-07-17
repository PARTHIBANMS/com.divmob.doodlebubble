.class public Lorg/anddev/andengine/entity/particle/modifier/ContainerExpireModifier;
.super Lorg/anddev/andengine/entity/particle/modifier/ExpireModifier;


# instance fields
.field private final mModifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/particle/modifier/ExpireModifier;-><init>(F)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/particle/modifier/ContainerExpireModifier;->mModifiers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/particle/modifier/ExpireModifier;-><init>(FF)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/particle/modifier/ContainerExpireModifier;->mModifiers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addParticleModifier(Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/modifier/ContainerExpireModifier;->mModifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onUpdateParticle(Lorg/anddev/andengine/entity/particle/Particle;)V
    .locals 3

    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/modifier/ContainerExpireModifier;->mModifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/particle/Particle;->getDeathTime()F

    move-result v2

    invoke-virtual {v0, p1, v2}, Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;->onUpdateParticle(Lorg/anddev/andengine/entity/particle/Particle;F)V

    goto :goto_0
.end method

.method public removeParticleModifier(Lorg/anddev/andengine/entity/particle/modifier/BaseSingleValueSpanModifier;)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/modifier/ContainerExpireModifier;->mModifiers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
