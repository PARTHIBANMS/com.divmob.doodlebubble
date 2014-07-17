.class public Lorg/anddev/andengine/entity/particle/ParticleSystem;
.super Lorg/anddev/andengine/entity/Entity;


# static fields
.field private static final BLENDFUNCTION_DESTINATION_DEFAULT:I = 0x303

.field private static final BLENDFUNCTION_SOURCE_DEFAULT:I = 0x1


# instance fields
.field private final POSITION_OFFSET:[F

.field private mDestinationBlendFunction:I

.field private final mParticleEmitter:Lorg/anddev/andengine/entity/particle/emitter/IParticleEmitter;

.field private mParticleInitializerCount:I

.field private final mParticleInitializers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/particle/initializer/IParticleInitializer;",
            ">;"
        }
    .end annotation
.end field

.field private mParticleModifierCount:I

.field private final mParticleModifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;",
            ">;"
        }
    .end annotation
.end field

.field private final mParticles:[Lorg/anddev/andengine/entity/particle/Particle;

.field private mParticlesAlive:I

.field private mParticlesDueToSpawn:F

.field private final mParticlesMaximum:I

.field private mParticlesSpawnEnabled:Z

.field private final mRateMaximum:F

.field private final mRateMinimum:F

.field private mSharedParticleVertexBuffer:Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

.field private mSourceBlendFunction:I

.field private final mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;


# direct methods
.method public constructor <init>(FFFFFFILorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/high16 v2, 0x3f00

    new-instance v1, Lorg/anddev/andengine/entity/particle/emitter/RectangleParticleEmitter;

    mul-float v0, p3, v2

    add-float/2addr v0, p1

    mul-float/2addr v2, p4

    add-float/2addr v2, p2

    invoke-direct {v1, v0, v2, p3, p4}, Lorg/anddev/andengine/entity/particle/emitter/RectangleParticleEmitter;-><init>(FFFF)V

    move-object v0, p0

    move v2, p5

    move v3, p6

    move v4, p7

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/particle/ParticleSystem;-><init>(Lorg/anddev/andengine/entity/particle/emitter/IParticleEmitter;FFILorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/entity/particle/emitter/IParticleEmitter;FFILorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/anddev/andengine/entity/Entity;-><init>(FF)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->POSITION_OFFSET:[F

    iput v1, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mSourceBlendFunction:I

    const/16 v0, 0x303

    iput v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mDestinationBlendFunction:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleInitializers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleModifiers:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesSpawnEnabled:Z

    iput-object p1, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleEmitter:Lorg/anddev/andengine/entity/particle/emitter/IParticleEmitter;

    new-array v0, p4, [Lorg/anddev/andengine/entity/particle/Particle;

    iput-object v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticles:[Lorg/anddev/andengine/entity/particle/Particle;

    iput p2, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mRateMinimum:F

    iput p3, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mRateMaximum:F

    iput p4, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesMaximum:I

    iput-object p5, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleEmitter:Lorg/anddev/andengine/entity/particle/emitter/IParticleEmitter;

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/particle/ParticleSystem;->registerUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)V

    return-void
.end method

.method private determineCurrentRate()F
    .locals 3

    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mRateMinimum:F

    iget v1, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mRateMaximum:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mRateMinimum:F

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/MathUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mRateMaximum:F

    iget v2, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mRateMinimum:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mRateMinimum:F

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method private spawnParticle()V
    .locals 7

    iget-object v1, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticles:[Lorg/anddev/andengine/entity/particle/Particle;

    iget v2, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesMaximum:I

    if-ge v2, v0, :cond_0

    aget-object v0, v1, v2

    iget-object v3, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleEmitter:Lorg/anddev/andengine/entity/particle/emitter/IParticleEmitter;

    iget-object v4, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->POSITION_OFFSET:[F

    invoke-interface {v3, v4}, Lorg/anddev/andengine/entity/particle/emitter/IParticleEmitter;->getPositionOffset([F)V

    iget-object v3, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->POSITION_OFFSET:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->POSITION_OFFSET:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/particle/Particle;->reset()V

    invoke-virtual {v0, v3, v4}, Lorg/anddev/andengine/entity/particle/Particle;->setPosition(FF)V

    move-object v1, v0

    :goto_0
    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mSourceBlendFunction:I

    iget v2, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mDestinationBlendFunction:I

    invoke-virtual {v1, v0, v2}, Lorg/anddev/andengine/entity/particle/Particle;->setBlendFunction(II)V

    iget-object v3, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleInitializers:Ljava/util/ArrayList;

    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleInitializerCount:I

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-gez v2, :cond_3

    iget-object v3, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleModifiers:Ljava/util/ArrayList;

    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleModifierCount:I

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-gez v2, :cond_4

    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    :cond_0
    return-void

    :cond_1
    if-nez v2, :cond_2

    new-instance v0, Lorg/anddev/andengine/entity/particle/Particle;

    iget-object v5, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, v3, v4, v5}, Lorg/anddev/andengine/entity/particle/Particle;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/particle/Particle;->getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    move-result-object v3

    iput-object v3, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mSharedParticleVertexBuffer:Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    :goto_3
    aput-object v0, v1, v2

    move-object v1, v0

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/anddev/andengine/entity/particle/Particle;

    iget-object v5, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v6, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mSharedParticleVertexBuffer:Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    invoke-direct {v0, v3, v4, v5, v6}, Lorg/anddev/andengine/entity/particle/Particle;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/particle/initializer/IParticleInitializer;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/entity/particle/initializer/IParticleInitializer;->onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;)V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;->onInitializeParticle(Lorg/anddev/andengine/entity/particle/Particle;)V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2
.end method

.method private spawnParticles(F)V
    .locals 3

    invoke-direct {p0}, Lorg/anddev/andengine/entity/particle/ParticleSystem;->determineCurrentRate()F

    move-result v0

    mul-float/2addr v0, p1

    iget v1, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesDueToSpawn:F

    add-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesDueToSpawn:F

    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesMaximum:I

    iget v1, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesDueToSpawn:F

    invoke-static {v1}, Landroid/util/FloatMath;->floor(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesDueToSpawn:F

    int-to-float v2, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesDueToSpawn:F

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lorg/anddev/andengine/entity/particle/ParticleSystem;->spawnParticle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addParticleInitializer(Lorg/anddev/andengine/entity/particle/initializer/IParticleInitializer;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleInitializers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleInitializerCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleInitializerCount:I

    return-void
.end method

.method public addParticleModifier(Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleModifiers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleModifierCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleModifierCount:I

    return-void
.end method

.method public getParticleEmitter()Lorg/anddev/andengine/entity/particle/emitter/IParticleEmitter;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleEmitter:Lorg/anddev/andengine/entity/particle/emitter/IParticleEmitter;

    return-object v0
.end method

.method public isParticlesSpawnEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesSpawnEnabled:Z

    return v0
.end method

.method protected onManagedDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 3

    iget-object v1, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticles:[Lorg/anddev/andengine/entity/particle/Particle;

    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    aget-object v2, v1, v0

    invoke-virtual {v2, p1, p2}, Lorg/anddev/andengine/entity/particle/Particle;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected onManagedUpdate(F)V
    .locals 7

    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/Entity;->onManagedUpdate(F)V

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesSpawnEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/particle/ParticleSystem;->spawnParticles(F)V

    :cond_0
    iget-object v4, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticles:[Lorg/anddev/andengine/entity/particle/Particle;

    iget-object v5, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleModifiers:Ljava/util/ArrayList;

    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleModifierCount:I

    add-int/lit8 v2, v0, -0x1

    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-gez v3, :cond_1

    return-void

    :cond_1
    aget-object v6, v4, v3

    move v1, v2

    :goto_1
    if-gez v1, :cond_3

    invoke-virtual {v6, p1}, Lorg/anddev/andengine/entity/particle/Particle;->onUpdate(F)V

    iget-boolean v0, v6, Lorg/anddev/andengine/entity/particle/Particle;->mDead:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    aget-object v1, v4, v0

    aput-object v1, v4, v3

    aput-object v6, v4, v0

    :cond_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;

    invoke-interface {v0, v6}, Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;->onUpdateParticle(Lorg/anddev/andengine/entity/particle/Particle;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1
.end method

.method public removeParticleInitializer(Lorg/anddev/andengine/entity/particle/initializer/IParticleInitializer;)V
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleInitializerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleInitializerCount:I

    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleInitializers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeParticleModifier(Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;)V
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleModifierCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleModifierCount:I

    iget-object v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticleModifiers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lorg/anddev/andengine/entity/Entity;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesDueToSpawn:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesAlive:I

    return-void
.end method

.method public setBlendFunction(II)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mSourceBlendFunction:I

    iput p2, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mDestinationBlendFunction:I

    return-void
.end method

.method public setParticlesSpawnEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/entity/particle/ParticleSystem;->mParticlesSpawnEnabled:Z

    return-void
.end method
