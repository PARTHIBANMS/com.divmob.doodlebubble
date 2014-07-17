.class public abstract Lorg/anddev/andengine/entity/sprite/batch/DynamicSpriteBatch;
.super Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/ITexture;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;I)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/ITexture;ILorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;ILorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;)V

    return-void
.end method


# virtual methods
.method protected begin(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteBatch;->begin(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/sprite/batch/DynamicSpriteBatch;->onUpdateSpriteBatch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/sprite/batch/DynamicSpriteBatch;->submit()V

    :cond_0
    return-void
.end method

.method protected abstract onUpdateSpriteBatch()Z
.end method
