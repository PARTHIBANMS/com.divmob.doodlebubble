.class Lorg/anddev/andengine/opengl/view/SimpleEGLConfigChooser;
.super Lorg/anddev/andengine/opengl/view/ComponentSizeChooser;


# direct methods
.method public constructor <init>(Z)V
    .locals 8

    const/4 v7, 0x5

    const/4 v1, 0x4

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const/16 v5, 0x10

    :goto_0
    move-object v0, p0

    move v2, v1

    move v3, v1

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/opengl/view/ComponentSizeChooser;-><init>(IIIIII)V

    iput v7, p0, Lorg/anddev/andengine/opengl/view/SimpleEGLConfigChooser;->mRedSize:I

    const/4 v0, 0x6

    iput v0, p0, Lorg/anddev/andengine/opengl/view/SimpleEGLConfigChooser;->mGreenSize:I

    iput v7, p0, Lorg/anddev/andengine/opengl/view/SimpleEGLConfigChooser;->mBlueSize:I

    return-void

    :cond_0
    move v5, v4

    goto :goto_0
.end method
