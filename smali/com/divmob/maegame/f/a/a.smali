.class public Lcom/divmob/maegame/f/a/a;
.super Lorg/anddev/andengine/entity/sprite/AnimatedSprite;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lcom/divmob/maegame/game/MBaseGameActivity;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/divmob/maegame/f/a/a;-><init>(Lcom/divmob/maegame/game/MBaseGameActivity;Lorg/anddev/andengine/entity/scene/Scene;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    return-void
.end method

.method public constructor <init>(Lcom/divmob/maegame/game/MBaseGameActivity;Ljava/lang/String;II)V
    .locals 6

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/divmob/maegame/f/a/a;-><init>(Lcom/divmob/maegame/game/MBaseGameActivity;Lorg/anddev/andengine/entity/scene/Scene;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Lcom/divmob/maegame/game/MBaseGameActivity;Lorg/anddev/andengine/entity/scene/Scene;FFLjava/lang/String;II)V
    .locals 6

    invoke-virtual {p1}, Lcom/divmob/maegame/game/MBaseGameActivity;->l()Lcom/divmob/maegame/e/e;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object v1, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/divmob/maegame/e/e;->a(Ljava/lang/String;IIII)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/divmob/maegame/f/a/a;-><init>(Lcom/divmob/maegame/game/MBaseGameActivity;Lorg/anddev/andengine/entity/scene/Scene;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    return-void
.end method

.method public constructor <init>(Lcom/divmob/maegame/game/MBaseGameActivity;Lorg/anddev/andengine/entity/scene/Scene;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V
    .locals 1

    invoke-direct {p0, p3, p4, p5}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/divmob/maegame/f/a/a;->a:Z

    iget-object v0, p1, Lcom/divmob/maegame/game/MBaseGameActivity;->x:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/divmob/maegame/game/MBaseGameActivity;->x:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p1, Lcom/divmob/maegame/game/MBaseGameActivity;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/divmob/maegame/f/a/a;->a(Lorg/anddev/andengine/entity/scene/Scene;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/divmob/maegame/game/MBaseGameActivity;Lorg/anddev/andengine/entity/scene/Scene;Ljava/lang/String;II)V
    .locals 8

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/divmob/maegame/f/a/a;-><init>(Lcom/divmob/maegame/game/MBaseGameActivity;Lorg/anddev/andengine/entity/scene/Scene;FFLjava/lang/String;II)V

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

.method public a(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/divmob/maegame/f/a/a;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/divmob/maegame/f/a/a;->a:Z

    invoke-virtual {p0, v2}, Lcom/divmob/maegame/f/a/a;->setCurrentTileIndex(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/divmob/maegame/f/a/a;->a:Z

    goto :goto_0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/divmob/maegame/f/a/a;->setCurrentTileIndex(I)V

    iput-boolean v0, p0, Lcom/divmob/maegame/f/a/a;->a:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/divmob/maegame/f/a/a;->a:Z

    return v0
.end method

.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    iput-boolean v0, p0, Lcom/divmob/maegame/f/a/a;->a:Z

    invoke-virtual {p0, v1}, Lcom/divmob/maegame/f/a/a;->setCurrentTileIndex(I)V

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/divmob/maegame/f/a/a;->setCurrentTileIndex(I)V

    iput-boolean v0, p0, Lcom/divmob/maegame/f/a/a;->a:Z

    iget v2, p0, Lcom/divmob/maegame/f/a/a;->mX:F

    add-float/2addr v2, p2

    iget v3, p0, Lcom/divmob/maegame/f/a/a;->mY:F

    add-float/2addr v3, p3

    invoke-virtual {p0, v2, v3}, Lcom/divmob/maegame/f/a/a;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/divmob/maegame/f/a/a;->a:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
