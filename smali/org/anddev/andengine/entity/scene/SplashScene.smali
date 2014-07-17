.class public Lorg/anddev/andengine/entity/scene/SplashScene;
.super Lorg/anddev/andengine/entity/scene/Scene;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 6

    const/high16 v4, 0x3f80

    const/high16 v3, -0x4080

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/scene/SplashScene;-><init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;FFF)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;FFF)V
    .locals 7

    const/high16 v6, 0x3f80

    invoke-direct {p0}, Lorg/anddev/andengine/entity/scene/Scene;-><init>()V

    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/camera/Camera;->getMinX()F

    move-result v1

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/camera/Camera;->getMinY()F

    move-result v2

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/camera/Camera;->getWidth()F

    move-result v3

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/camera/Camera;->getHeight()F

    move-result v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    cmpl-float v1, p4, v6

    if-nez v1, :cond_0

    cmpl-float v1, p5, v6

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0, p4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScale(F)V

    new-instance v1, Lorg/anddev/andengine/entity/modifier/ScaleModifier;

    sget-object v2, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    invoke-direct {v1, p3, p4, p5, v2}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    :cond_1
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/scene/SplashScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method
