.class public Lcom/divmob/maegame/f/a/d;
.super Lorg/anddev/andengine/entity/sprite/AnimatedSprite;


# instance fields
.field protected b:Z


# direct methods
.method public constructor <init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V
    .locals 1

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->deepCopy()Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/divmob/maegame/f/a/d;->b:Z

    invoke-virtual {p0}, Lcom/divmob/maegame/f/a/d;->b()V

    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;Z)V
    .locals 1

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->deepCopy()Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    iput-boolean p4, p0, Lcom/divmob/maegame/f/a/d;->b:Z

    invoke-virtual {p0}, Lcom/divmob/maegame/f/a/d;->b()V

    return-void
.end method

.method public constructor <init>(Lcom/divmob/maegame/game/MBaseGameActivity;FFLjava/lang/String;ZII)V
    .locals 6

    invoke-virtual {p1}, Lcom/divmob/maegame/game/MBaseGameActivity;->l()Lcom/divmob/maegame/e/e;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object v1, p4

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/divmob/maegame/e/e;->a(Ljava/lang/String;IIII)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0, p5}, Lcom/divmob/maegame/f/a/d;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/divmob/maegame/game/MBaseGameActivity;Ljava/lang/String;ZII)V
    .locals 8

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/divmob/maegame/f/a/d;-><init>(Lcom/divmob/maegame/game/MBaseGameActivity;FFLjava/lang/String;ZII)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lorg/anddev/andengine/entity/scene/Scene;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    invoke-virtual {p1, p0}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    return-void
.end method

.method public a(Lorg/anddev/andengine/entity/scene/Scene;I)V
    .locals 1

    invoke-virtual {p1, p2}, Lorg/anddev/andengine/entity/scene/Scene;->getChild(I)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/anddev/andengine/entity/IEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    invoke-virtual {p1, p0}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    return-void
.end method

.method public a(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 5

    const/high16 v4, 0x4000

    const/4 v1, 0x0

    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-direct {v0, v1, v1, p1}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    invoke-virtual {p0, v0}, Lcom/divmob/maegame/f/a/d;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget v1, p0, Lcom/divmob/maegame/f/a/d;->mWidth:F

    add-float/2addr v1, v4

    iget v2, p0, Lcom/divmob/maegame/f/a/d;->mHeight:F

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    return-void
.end method

.method protected b()V
    .locals 1

    iget-boolean v0, p0, Lcom/divmob/maegame/f/a/d;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/divmob/maegame/f/a/d;->setCurrentTileIndex(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/divmob/maegame/f/a/d;->setCurrentTileIndex(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/divmob/maegame/f/a/d;->b:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/divmob/maegame/f/a/d;->setCurrentTileIndex(I)V

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/divmob/maegame/f/a/d;->b:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/divmob/maegame/f/a/d;->setCurrentTileIndex(I)V

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/divmob/maegame/f/a/d;->b:Z

    return v0
.end method

.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    iget-boolean v0, p0, Lcom/divmob/maegame/f/a/d;->b:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/divmob/maegame/f/a/d;->b:Z

    invoke-virtual {p0}, Lcom/divmob/maegame/f/a/d;->b()V

    invoke-virtual {p0}, Lcom/divmob/maegame/f/a/d;->a()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
