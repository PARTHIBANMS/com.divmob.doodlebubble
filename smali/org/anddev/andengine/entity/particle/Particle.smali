.class public Lorg/anddev/andengine/entity/particle/Particle;
.super Lorg/anddev/andengine/entity/sprite/Sprite;


# instance fields
.field mDead:Z

.field private mDeathTime:F

.field private mLifeTime:F

.field private final mPhysicsHandler:Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;


# direct methods
.method public constructor <init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    const/high16 v0, -0x4080

    iput v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDeathTime:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDead:Z

    new-instance v0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;-><init>(Lorg/anddev/andengine/entity/IEntity;)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mPhysicsHandler:Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;

    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mLifeTime:F

    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V

    const/high16 v0, -0x4080

    iput v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDeathTime:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDead:Z

    new-instance v0, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;-><init>(Lorg/anddev/andengine/entity/IEntity;)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mPhysicsHandler:Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;

    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mLifeTime:F

    return-void
.end method


# virtual methods
.method public getDeathTime()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDeathTime:F

    return v0
.end method

.method public getLifeTime()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mLifeTime:F

    return v0
.end method

.method public getPhysicsHandler()Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mPhysicsHandler:Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;

    return-object v0
.end method

.method public isDead()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDead:Z

    return v0
.end method

.method protected onManagedUpdate(F)V
    .locals 2

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDead:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mLifeTime:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mLifeTime:F

    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mPhysicsHandler:Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->onUpdate(F)V

    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/sprite/Sprite;->onManagedUpdate(F)V

    iget v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDeathTime:F

    const/high16 v1, -0x4080

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/anddev/andengine/entity/particle/Particle;->mLifeTime:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/particle/Particle;->setDead(Z)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lorg/anddev/andengine/entity/sprite/Sprite;->reset()V

    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mPhysicsHandler:Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/handler/physics/PhysicsHandler;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDead:Z

    const/high16 v0, -0x4080

    iput v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDeathTime:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/entity/particle/Particle;->mLifeTime:F

    return-void
.end method

.method public setDead(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDead:Z

    return-void
.end method

.method public setDeathTime(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/particle/Particle;->mDeathTime:F

    return-void
.end method
