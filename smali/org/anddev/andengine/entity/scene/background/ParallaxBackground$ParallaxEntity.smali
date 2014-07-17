.class public Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParallaxEntity"
.end annotation


# instance fields
.field final mParallaxFactor:F

.field final mShape:Lorg/anddev/andengine/entity/shape/Shape;


# direct methods
.method public constructor <init>(FLorg/anddev/andengine/entity/shape/Shape;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;->mParallaxFactor:F

    iput-object p2, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;->mShape:Lorg/anddev/andengine/entity/shape/Shape;

    return-void
.end method


# virtual methods
.method public onDraw(Ljavax/microedition/khronos/opengles/GL10;FLorg/anddev/andengine/engine/camera/Camera;)V
    .locals 5

    const/4 v4, 0x0

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-virtual {p3}, Lorg/anddev/andengine/engine/camera/Camera;->getWidth()F

    move-result v1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;->mShape:Lorg/anddev/andengine/entity/shape/Shape;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/shape/Shape;->getWidthScaled()F

    move-result v2

    iget v0, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;->mParallaxFactor:F

    mul-float/2addr v0, p2

    rem-float/2addr v0, v2

    :goto_0
    cmpl-float v3, v0, v4

    if-gtz v3, :cond_1

    invoke-interface {p1, v0, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    :cond_0
    iget-object v3, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;->mShape:Lorg/anddev/andengine/entity/shape/Shape;

    invoke-virtual {v3, p1, p3}, Lorg/anddev/andengine/entity/shape/Shape;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    invoke-interface {p1, v2, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    add-float/2addr v0, v2

    cmpg-float v3, v0, v1

    if-ltz v3, :cond_0

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    return-void

    :cond_1
    sub-float/2addr v0, v2

    goto :goto_0
.end method
