.class public Lcom/divmob/doodlebubble/b/a;
.super Lorg/anddev/andengine/entity/sprite/Sprite;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 5

    const/high16 v4, 0x41f0

    const/high16 v3, 0x4000

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    sget v0, Lcom/divmob/maegame/a/a;->g:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1e

    int-to-float v0, v0

    sget v1, Lcom/divmob/maegame/a/a;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/divmob/doodlebubble/b/a;->mHeight:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    sub-float/2addr v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/divmob/doodlebubble/b/a;->setPosition(FF)V

    iget v0, p0, Lcom/divmob/doodlebubble/b/a;->mHeight:F

    div-float/2addr v0, v3

    invoke-virtual {p0, v4, v0}, Lcom/divmob/doodlebubble/b/a;->setRotationCenter(FF)V

    const/high16 v0, -0x3d4c

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/b/a;->setRotation(F)V

    return-void
.end method


# virtual methods
.method public a(Lorg/anddev/andengine/entity/scene/Scene;I)V
    .locals 1

    invoke-virtual {p1, p2}, Lorg/anddev/andengine/entity/scene/Scene;->getChild(I)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/anddev/andengine/entity/IEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method
