.class public Lcom/divmob/doodlebubble/c/c;
.super Lorg/anddev/andengine/entity/primitive/Rectangle;


# instance fields
.field private a:Z

.field private b:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

.field private c:[Lorg/anddev/andengine/entity/particle/ParticleSystem;

.field private d:F

.field private e:F

.field private f:I


# direct methods
.method public varargs constructor <init>(Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 11

    const/high16 v10, 0x4348

    const/high16 v2, 0x42c6

    const v0, 0x3dcccccd

    const/high16 v9, -0x3d38

    const/4 v8, 0x0

    invoke-direct {p0, v8, v8, v0, v0}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/divmob/doodlebubble/c/c;->a:Z

    new-instance v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->deepCopy()Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v1

    invoke-direct {v0, v8, v8, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/c/c;->b:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    iget-object v0, p0, Lcom/divmob/doodlebubble/c/c;->b:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/c/c;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/anddev/andengine/entity/particle/ParticleSystem;

    iput-object v0, p0, Lcom/divmob/doodlebubble/c/c;->c:[Lorg/anddev/andengine/entity/particle/ParticleSystem;

    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/c/c;->c:[Lorg/anddev/andengine/entity/particle/ParticleSystem;

    array-length v0, v0

    if-lt v6, v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lorg/anddev/andengine/entity/particle/emitter/PointParticleEmitter;

    invoke-direct {v1, v8, v8}, Lorg/anddev/andengine/entity/particle/emitter/PointParticleEmitter;-><init>(FF)V

    new-instance v0, Lorg/anddev/andengine/entity/particle/ParticleSystem;

    const/4 v3, 0x3

    invoke-virtual {v7, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v4, v3, 0x3

    aget-object v5, p2, v6

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/particle/ParticleSystem;-><init>(Lorg/anddev/andengine/entity/particle/emitter/IParticleEmitter;FFILorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    new-instance v1, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;

    invoke-direct {v1, v9, v10, v9, v10}, Lorg/anddev/andengine/entity/particle/initializer/VelocityInitializer;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/particle/ParticleSystem;->addParticleInitializer(Lorg/anddev/andengine/entity/particle/initializer/IParticleInitializer;)V

    new-instance v1, Lorg/anddev/andengine/entity/particle/initializer/AccelerationInitializer;

    const/high16 v3, -0x4000

    invoke-direct {v1, v8, v3}, Lorg/anddev/andengine/entity/particle/initializer/AccelerationInitializer;-><init>(FF)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/particle/ParticleSystem;->addParticleInitializer(Lorg/anddev/andengine/entity/particle/initializer/IParticleInitializer;)V

    new-instance v1, Lorg/anddev/andengine/entity/particle/initializer/RotationInitializer;

    const/high16 v3, 0x43b4

    invoke-direct {v1, v8, v3}, Lorg/anddev/andengine/entity/particle/initializer/RotationInitializer;-><init>(FF)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/particle/ParticleSystem;->addParticleInitializer(Lorg/anddev/andengine/entity/particle/initializer/IParticleInitializer;)V

    new-instance v1, Lorg/anddev/andengine/entity/particle/modifier/ExpireModifier;

    const/high16 v3, 0x40a0

    invoke-direct {v1, v3}, Lorg/anddev/andengine/entity/particle/modifier/ExpireModifier;-><init>(F)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/particle/ParticleSystem;->addParticleModifier(Lorg/anddev/andengine/entity/particle/modifier/IParticleModifier;)V

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/c/c;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/c/c;->c:[Lorg/anddev/andengine/entity/particle/ParticleSystem;

    aput-object v0, v1, v6

    iget-object v0, p0, Lcom/divmob/doodlebubble/c/c;->c:[Lorg/anddev/andengine/entity/particle/ParticleSystem;

    aget-object v0, v0, v6

    invoke-static {v0}, Lcom/divmob/maegame/g/e;->e(Lorg/anddev/andengine/entity/Entity;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method private c()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/divmob/doodlebubble/c/c;->c:[Lorg/anddev/andengine/entity/particle/ParticleSystem;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/divmob/doodlebubble/c/c;->c:[Lorg/anddev/andengine/entity/particle/ParticleSystem;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/divmob/maegame/g/e;->e(Lorg/anddev/andengine/entity/Entity;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private d()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/divmob/doodlebubble/c/c;->c:[Lorg/anddev/andengine/entity/particle/ParticleSystem;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/divmob/doodlebubble/c/c;->c:[Lorg/anddev/andengine/entity/particle/ParticleSystem;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/divmob/maegame/g/e;->d(Lorg/anddev/andengine/entity/Entity;)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/c/c;->c:[Lorg/anddev/andengine/entity/particle/ParticleSystem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/particle/ParticleSystem;->reset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private e()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/divmob/doodlebubble/c/c;->c:[Lorg/anddev/andengine/entity/particle/ParticleSystem;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/divmob/doodlebubble/c/c;->c:[Lorg/anddev/andengine/entity/particle/ParticleSystem;

    iget v1, p0, Lcom/divmob/doodlebubble/c/c;->f:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/divmob/maegame/g/e;->d(Lorg/anddev/andengine/entity/Entity;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/c/c;->c:[Lorg/anddev/andengine/entity/particle/ParticleSystem;

    iget v1, p0, Lcom/divmob/doodlebubble/c/c;->f:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v2}, Lorg/anddev/andengine/entity/particle/ParticleSystem;->setPosition(FF)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/divmob/doodlebubble/c/c;->c:[Lorg/anddev/andengine/entity/particle/ParticleSystem;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/divmob/maegame/g/e;->e(Lorg/anddev/andengine/entity/Entity;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {p0}, Lcom/divmob/maegame/g/e;->e(Lorg/anddev/andengine/entity/Entity;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/c/c;->b:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-static {v0}, Lcom/divmob/maegame/g/e;->e(Lorg/anddev/andengine/entity/Entity;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/c/c;->c:[Lorg/anddev/andengine/entity/particle/ParticleSystem;

    iget v1, p0, Lcom/divmob/doodlebubble/c/c;->f:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/divmob/maegame/g/e;->e(Lorg/anddev/andengine/entity/Entity;)V

    return-void
.end method

.method public a(Lcom/divmob/doodlebubble/a/a;Z)V
    .locals 5

    const-wide/high16 v3, 0x401c

    invoke-virtual {p0, p1}, Lcom/divmob/doodlebubble/c/c;->setPosition(Lorg/anddev/andengine/entity/IEntity;)V

    invoke-virtual {p1}, Lcom/divmob/doodlebubble/a/a;->f()I

    move-result v0

    iput v0, p0, Lcom/divmob/doodlebubble/c/c;->f:I

    iget v0, p0, Lcom/divmob/doodlebubble/c/c;->f:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/divmob/doodlebubble/c/c;->f:I

    iget-object v1, p0, Lcom/divmob/doodlebubble/c/c;->c:[Lorg/anddev/andengine/entity/particle/ParticleSystem;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/divmob/doodlebubble/c/c;->f:I

    :cond_1
    iget-object v0, p0, Lcom/divmob/doodlebubble/c/c;->b:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {p1}, Lcom/divmob/doodlebubble/a/a;->getCurrentTileIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/divmob/doodlebubble/c/c;->d()V

    invoke-direct {p0}, Lcom/divmob/doodlebubble/c/c;->e()V

    :goto_0
    const/high16 v0, 0x41f0

    const/high16 v1, 0x4316

    invoke-static {v0, v1}, Lorg/anddev/andengine/util/MathUtils;->random(FF)F

    move-result v0

    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/divmob/doodlebubble/c/c;->d:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v3

    double-to-float v0, v0

    neg-float v0, v0

    iput v0, p0, Lcom/divmob/doodlebubble/c/c;->e:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/divmob/doodlebubble/c/c;->a:Z

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/divmob/doodlebubble/c/c;->c()V

    goto :goto_0
.end method

.method public a(Lorg/anddev/andengine/entity/scene/Scene;I)V
    .locals 1

    invoke-virtual {p1, p2}, Lorg/anddev/andengine/entity/scene/Scene;->getChild(I)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/anddev/andengine/entity/IEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/divmob/maegame/g/e;->d(Lorg/anddev/andengine/entity/Entity;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/c/c;->b:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-static {v0}, Lcom/divmob/maegame/g/e;->d(Lorg/anddev/andengine/entity/Entity;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/c/c;->b:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0, v2, v2}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/c/c;->c:[Lorg/anddev/andengine/entity/particle/ParticleSystem;

    iget v1, p0, Lcom/divmob/doodlebubble/c/c;->f:I

    aget-object v0, v0, v1

    invoke-virtual {v0, v2, v2}, Lorg/anddev/andengine/entity/particle/ParticleSystem;->setPosition(FF)V

    return-void
.end method

.method public onManagedUpdate(F)V
    .locals 4

    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->onManagedUpdate(F)V

    iget-boolean v0, p0, Lcom/divmob/doodlebubble/c/c;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/divmob/doodlebubble/c/c;->b:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    iget-object v1, p0, Lcom/divmob/doodlebubble/c/c;->b:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getX()F

    move-result v1

    iget v2, p0, Lcom/divmob/doodlebubble/c/c;->d:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/divmob/doodlebubble/c/c;->b:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getY()F

    move-result v2

    iget v3, p0, Lcom/divmob/doodlebubble/c/c;->e:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setPosition(FF)V

    iget v0, p0, Lcom/divmob/doodlebubble/c/c;->e:F

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    iput v0, p0, Lcom/divmob/doodlebubble/c/c;->e:F

    iget-object v0, p0, Lcom/divmob/doodlebubble/c/c;->b:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getX()F

    move-result v0

    sget v1, Lcom/divmob/maegame/a/a;->g:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/doodlebubble/c/c;->b:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getY()F

    move-result v0

    sget v1, Lcom/divmob/maegame/a/a;->h:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/divmob/doodlebubble/c/c;->a:Z

    sget-object v0, Lcom/divmob/doodlebubble/GameActivity;->i:Lcom/divmob/doodlebubble/c/d;

    invoke-virtual {v0, p0}, Lcom/divmob/doodlebubble/c/d;->recyclePoolItem(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
