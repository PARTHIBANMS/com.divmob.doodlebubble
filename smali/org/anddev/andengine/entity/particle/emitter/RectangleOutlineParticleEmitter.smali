.class public Lorg/anddev/andengine/entity/particle/emitter/RectangleOutlineParticleEmitter;
.super Lorg/anddev/andengine/entity/particle/emitter/BaseRectangleParticleEmitter;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/particle/emitter/BaseRectangleParticleEmitter;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method public getPositionOffset([F)V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lorg/anddev/andengine/entity/particle/emitter/RectangleOutlineParticleEmitter;->mCenterX:F

    invoke-static {}, Lorg/anddev/andengine/util/MathUtils;->randomSign()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/anddev/andengine/entity/particle/emitter/RectangleOutlineParticleEmitter;->mWidthHalf:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, p0, Lorg/anddev/andengine/entity/particle/emitter/RectangleOutlineParticleEmitter;->mCenterY:F

    invoke-static {}, Lorg/anddev/andengine/util/MathUtils;->randomSign()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/anddev/andengine/entity/particle/emitter/RectangleOutlineParticleEmitter;->mHeightHalf:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, p1, v0

    return-void
.end method
