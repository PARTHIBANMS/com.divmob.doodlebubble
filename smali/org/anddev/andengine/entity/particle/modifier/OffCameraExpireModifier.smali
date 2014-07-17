.class public Lorg/anddev/andengine/entity/particle/modifier/OffCameraExpireModifier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;


# instance fields
.field private final mCamera:Lorg/anddev/andengine/engine/camera/Camera;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/anddev/andengine/entity/particle/modifier/OffCameraExpireModifier;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    return-void
.end method


# virtual methods
.method public getCamera()Lorg/anddev/andengine/engine/camera/Camera;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/modifier/OffCameraExpireModifier;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    return-object v0
.end method

.method public onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;)V
    .locals 0

    return-void
.end method

.method public onUpdateParticle(Lorg/anddev/andengine/entity/particle/Particle;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/modifier/OffCameraExpireModifier;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->isRectangularShapeVisible(Lorg/anddev/andengine/entity/shape/RectangularShape;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/anddev/andengine/entity/particle/Particle;->setDead(Z)V

    :cond_0
    return-void
.end method
