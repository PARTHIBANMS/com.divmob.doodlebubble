.class Lorg/anddev/andengine/opengl/font/Size;
.super Ljava/lang/Object;


# instance fields
.field private mHeight:F

.field private mWidth:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/anddev/andengine/opengl/font/Size;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/opengl/font/Size;->setWidth(F)V

    invoke-virtual {p0, p2}, Lorg/anddev/andengine/opengl/font/Size;->setHeight(F)V

    return-void
.end method


# virtual methods
.method public getHeight()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/font/Size;->mHeight:F

    return v0
.end method

.method public getWidth()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/font/Size;->mWidth:F

    return v0
.end method

.method public set(II)V
    .locals 1

    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/opengl/font/Size;->setWidth(F)V

    int-to-float v0, p2

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/opengl/font/Size;->setHeight(F)V

    return-void
.end method

.method public setHeight(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/opengl/font/Size;->mHeight:F

    return-void
.end method

.method public setWidth(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/opengl/font/Size;->mWidth:F

    return-void
.end method
