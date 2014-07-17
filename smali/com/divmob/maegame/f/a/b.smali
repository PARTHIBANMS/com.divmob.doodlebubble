.class public Lcom/divmob/maegame/f/a/b;
.super Lorg/anddev/andengine/entity/sprite/Sprite;


# direct methods
.method public constructor <init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

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

.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 9

    const v8, 0x3f99999a

    const/high16 v7, 0x3f80

    const v6, 0x3e4ccccd

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v5

    :pswitch_0
    invoke-virtual {p0}, Lcom/divmob/maegame/f/a/b;->clearEntityModifiers()V

    new-instance v0, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    new-instance v1, Lcom/divmob/maegame/f/a/c;

    invoke-direct {v1, p0}, Lcom/divmob/maegame/f/a/c;-><init>(Lcom/divmob/maegame/f/a/b;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    new-instance v3, Lorg/anddev/andengine/entity/modifier/ScaleModifier;

    invoke-direct {v3, v6, v7, v8}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFF)V

    aput-object v3, v2, v5

    const/4 v3, 0x1

    new-instance v4, Lorg/anddev/andengine/entity/modifier/ScaleModifier;

    invoke-direct {v4, v6, v8, v7}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFF)V

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    invoke-virtual {p0, v0}, Lcom/divmob/maegame/f/a/b;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
