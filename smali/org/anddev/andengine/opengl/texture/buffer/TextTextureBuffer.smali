.class public Lorg/anddev/andengine/opengl/texture/buffer/TextTextureBuffer;
.super Lorg/anddev/andengine/opengl/buffer/BufferObject;


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/opengl/buffer/BufferObject;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public declared-synchronized update(Lorg/anddev/andengine/opengl/font/Font;[Ljava/lang/String;)V
    .locals 11

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/buffer/TextTextureBuffer;->getFloatBuffer()Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

    array-length v4, p2

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/buffer/TextTextureBuffer;->setHardwareBufferNeedsUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    aget-object v5, p2, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    move v0, v1

    :goto_1
    if-lt v0, v6, :cond_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p1, v7}, Lorg/anddev/andengine/opengl/font/Font;->getLetter(C)Lorg/anddev/andengine/opengl/font/Letter;

    move-result-object v7

    iget v8, v7, Lorg/anddev/andengine/opengl/font/Letter;->mTextureX:F

    iget v9, v7, Lorg/anddev/andengine/opengl/font/Letter;->mTextureY:F

    iget v10, v7, Lorg/anddev/andengine/opengl/font/Letter;->mTextureWidth:F

    add-float/2addr v10, v8

    iget v7, v7, Lorg/anddev/andengine/opengl/font/Letter;->mTextureHeight:F

    add-float/2addr v7, v9

    invoke-virtual {v3, v8}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V

    invoke-virtual {v3, v9}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V

    invoke-virtual {v3, v8}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V

    invoke-virtual {v3, v7}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V

    invoke-virtual {v3, v10}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V

    invoke-virtual {v3, v7}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V

    invoke-virtual {v3, v10}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V

    invoke-virtual {v3, v7}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V

    invoke-virtual {v3, v10}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V

    invoke-virtual {v3, v9}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V

    invoke-virtual {v3, v8}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V

    invoke-virtual {v3, v9}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
