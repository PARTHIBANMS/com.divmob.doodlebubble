.class public Lcom/divmob/doodlebubble/a/a;
.super Lorg/anddev/andengine/entity/sprite/AnimatedSprite;


# static fields
.field public static final a:F = 24.0f

.field public static final b:F = 42.0f


# instance fields
.field public c:I

.field public d:I

.field public e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->deepCopy()Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    invoke-direct {p0, v1, v1, v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    invoke-direct {p0}, Lcom/divmob/doodlebubble/a/a;->g()V

    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/divmob/doodlebubble/a/a;->e:Z

    iput-boolean v0, p0, Lcom/divmob/doodlebubble/a/a;->f:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {p0}, Lcom/divmob/maegame/g/e;->e(Lorg/anddev/andengine/entity/Entity;)V

    return-void
.end method

.method public a(F)V
    .locals 1

    iget v0, p0, Lcom/divmob/doodlebubble/a/a;->mY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/divmob/doodlebubble/a/a;->mY:F

    return-void
.end method

.method public a(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    sget v0, Lcom/divmob/common/a/a;->a:I

    if-lt p1, v0, :cond_1

    sget v0, Lcom/divmob/common/a/a;->a:I

    add-int/lit8 p1, v0, -0x1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/divmob/doodlebubble/a/a;->setCurrentTileIndex(I)V

    return-void
.end method

.method public a(II)V
    .locals 6

    const-wide/high16 v4, 0x4038

    iput p1, p0, Lcom/divmob/doodlebubble/a/a;->c:I

    iput p2, p0, Lcom/divmob/doodlebubble/a/a;->d:I

    int-to-double v0, p2

    const-wide/high16 v2, 0x4048

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    rem-int/lit8 v2, p1, 0x2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    sget v1, Lcom/divmob/doodlebubble/GameActivity;->h:F

    int-to-float v2, p1

    const/high16 v3, 0x4228

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/divmob/doodlebubble/a/a;->setPosition(FF)V

    return-void
.end method

.method public a(Lorg/anddev/andengine/entity/scene/Scene;I)V
    .locals 1

    invoke-virtual {p1, p2}, Lorg/anddev/andengine/entity/scene/Scene;->getChild(I)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/anddev/andengine/entity/IEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public a(Lorg/anddev/andengine/entity/sprite/AnimatedSprite;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/divmob/doodlebubble/a/a;->mX:F

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/divmob/doodlebubble/a/a;->mY:F

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v1, v2

    const v2, 0x44e72000

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public b()V
    .locals 0

    invoke-static {p0}, Lcom/divmob/maegame/g/e;->d(Lorg/anddev/andengine/entity/Entity;)V

    invoke-direct {p0}, Lcom/divmob/doodlebubble/a/a;->g()V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/divmob/doodlebubble/a/a;->f:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget v0, p0, Lcom/divmob/doodlebubble/a/a;->c:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/divmob/doodlebubble/a/a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/divmob/doodlebubble/a/a;->f:Z

    return-void
.end method

.method public f()I
    .locals 1

    invoke-virtual {p0}, Lcom/divmob/doodlebubble/a/a;->getCurrentTileIndex()I

    move-result v0

    return v0
.end method
