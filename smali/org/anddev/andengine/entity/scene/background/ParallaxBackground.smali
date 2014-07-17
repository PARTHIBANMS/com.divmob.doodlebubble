.class public Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;
.super Lorg/anddev/andengine/entity/scene/background/ColorBackground;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;
    }
.end annotation


# instance fields
.field private final mParallaxEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mParallaxEntityCount:I

.field protected mParallaxValue:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/scene/background/ColorBackground;-><init>(FFF)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntities:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public attachParallaxEntity(Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntityCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntityCount:I

    return-void
.end method

.method public detachParallaxEntity(Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;)Z
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntityCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntityCount:I

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v1, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntityCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntityCount:I

    :cond_0
    return v0
.end method

.method public onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    iget v2, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxValue:F

    iget-object v3, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntities:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxEntityCount:I

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;

    invoke-virtual {v0, p1, v2, p2}, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground$ParallaxEntity;->onDraw(Ljavax/microedition/khronos/opengles/GL10;FLorg/anddev/andengine/engine/camera/Camera;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public setParallaxValue(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/scene/background/ParallaxBackground;->mParallaxValue:F

    return-void
.end method
