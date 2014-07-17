.class public Lorg/anddev/andengine/entity/scene/background/ColorBackground;
.super Lorg/anddev/andengine/entity/scene/background/BaseBackground;


# instance fields
.field private mAlpha:F

.field private mBlue:F

.field private mColorEnabled:Z

.field private mGreen:F

.field private mRed:F


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/anddev/andengine/entity/scene/background/BaseBackground;-><init>()V

    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mRed:F

    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mGreen:F

    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mBlue:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mAlpha:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mColorEnabled:Z

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/anddev/andengine/entity/scene/background/BaseBackground;-><init>()V

    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mRed:F

    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mGreen:F

    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mBlue:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mAlpha:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mColorEnabled:Z

    iput p1, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mRed:F

    iput p2, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mGreen:F

    iput p3, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mBlue:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/anddev/andengine/entity/scene/background/BaseBackground;-><init>()V

    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mRed:F

    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mGreen:F

    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mBlue:F

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mAlpha:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mColorEnabled:Z

    iput p1, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mRed:F

    iput p2, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mGreen:F

    iput p3, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mBlue:F

    iput p4, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mAlpha:F

    return-void
.end method


# virtual methods
.method public isColorEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mColorEnabled:Z

    return v0
.end method

.method public onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 4

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mColorEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mRed:F

    iget v1, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mGreen:F

    iget v2, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mBlue:F

    iget v3, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mAlpha:F

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    :cond_0
    return-void
.end method

.method public setColor(FFF)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mRed:F

    iput p2, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mGreen:F

    iput p3, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mBlue:F

    return-void
.end method

.method public setColor(FFFF)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->setColor(FFF)V

    iput p4, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mAlpha:F

    return-void
.end method

.method public setColor(III)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/high16 v3, 0x437f

    int-to-float v0, p1

    div-float/2addr v0, v3

    int-to-float v1, p2

    div-float/2addr v1, v3

    int-to-float v2, p3

    div-float/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->setColor(FFF)V

    return-void
.end method

.method public setColor(IIII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/high16 v4, 0x437f

    int-to-float v0, p1

    div-float/2addr v0, v4

    int-to-float v1, p2

    div-float/2addr v1, v4

    int-to-float v2, p3

    div-float/2addr v2, v4

    int-to-float v3, p4

    div-float/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->setColor(FFFF)V

    return-void
.end method

.method public setColorEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/entity/scene/background/ColorBackground;->mColorEnabled:Z

    return-void
.end method
