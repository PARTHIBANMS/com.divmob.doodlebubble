.class public Lorg/anddev/andengine/entity/particle/modifier/OnAndOffCameraExpireModifier;
.super Lorg/anddev/andengine/entity/particle/modifier/OffCameraExpireModifier;


# instance fields
.field private mHasBeenOnCamera:Z


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/particle/modifier/OffCameraExpireModifier;-><init>(Lorg/anddev/andengine/engine/camera/Camera;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/particle/modifier/OnAndOffCameraExpireModifier;->mHasBeenOnCamera:Z

    return-void
.end method


# virtual methods
.method public onUpdateParticle(Lorg/anddev/andengine/entity/particle/Particle;)V
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/particle/modifier/OnAndOffCameraExpireModifier;->mHasBeenOnCamera:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/particle/modifier/OnAndOffCameraExpireModifier;->getCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->isRectangularShapeVisible(Lorg/anddev/andengine/entity/shape/RectangularShape;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/particle/modifier/OnAndOffCameraExpireModifier;->mHasBeenOnCamera:Z

    :cond_0
    iget-boolean v0, p0, Lorg/anddev/andengine/entity/particle/modifier/OnAndOffCameraExpireModifier;->mHasBeenOnCamera:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/particle/modifier/OffCameraExpireModifier;->onUpdateParticle(Lorg/anddev/andengine/entity/particle/Particle;)V

    :cond_1
    return-void
.end method
