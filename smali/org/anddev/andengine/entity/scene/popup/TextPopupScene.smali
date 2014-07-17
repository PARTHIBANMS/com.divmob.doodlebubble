.class public Lorg/anddev/andengine/entity/scene/popup/TextPopupScene;
.super Lorg/anddev/andengine/entity/scene/popup/PopupScene;


# instance fields
.field private final mText:Lorg/anddev/andengine/entity/text/Text;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;F)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, v6

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/entity/scene/popup/TextPopupScene;-><init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;FLorg/anddev/andengine/entity/modifier/IEntityModifier;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;FLjava/lang/Runnable;)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/entity/scene/popup/TextPopupScene;-><init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;FLorg/anddev/andengine/entity/modifier/IEntityModifier;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;FLorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/entity/scene/popup/TextPopupScene;-><init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;FLorg/anddev/andengine/entity/modifier/IEntityModifier;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;FLorg/anddev/andengine/entity/modifier/IEntityModifier;Ljava/lang/Runnable;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p5, p7}, Lorg/anddev/andengine/entity/scene/popup/PopupScene;-><init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/scene/Scene;FLjava/lang/Runnable;)V

    new-instance v0, Lorg/anddev/andengine/entity/text/Text;

    sget-object v5, Lorg/anddev/andengine/util/HorizontalAlign;->CENTER:Lorg/anddev/andengine/util/HorizontalAlign;

    move v2, v1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;Lorg/anddev/andengine/util/HorizontalAlign;)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/popup/TextPopupScene;->mText:Lorg/anddev/andengine/entity/text/Text;

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/popup/TextPopupScene;->mText:Lorg/anddev/andengine/entity/text/Text;

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/scene/popup/TextPopupScene;->centerShapeInCamera(Lorg/anddev/andengine/entity/shape/Shape;)V

    if-eqz p6, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/popup/TextPopupScene;->mText:Lorg/anddev/andengine/entity/text/Text;

    invoke-virtual {v0, p6}, Lorg/anddev/andengine/entity/text/Text;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/popup/TextPopupScene;->mText:Lorg/anddev/andengine/entity/text/Text;

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/scene/popup/TextPopupScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method


# virtual methods
.method public getText()Lorg/anddev/andengine/entity/text/Text;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/popup/TextPopupScene;->mText:Lorg/anddev/andengine/entity/text/Text;

    return-object v0
.end method
