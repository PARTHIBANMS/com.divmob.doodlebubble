.class public Lorg/anddev/andengine/opengl/texture/TextureManager;
.super Ljava/lang/Object;


# instance fields
.field private final mTexturesLoaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/opengl/texture/ITexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexturesManaged:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lorg/anddev/andengine/opengl/texture/ITexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexturesToBeLoaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/opengl/texture/ITexture;",
            ">;"
        }
    .end annotation
.end field

.field private final mTexturesToBeUnloaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/opengl/texture/ITexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesLoaded:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeLoaded:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeUnloaded:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadTexture(Lorg/anddev/andengine/opengl/texture/ITexture;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeUnloaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs loadTextures([Lorg/anddev/andengine/opengl/texture/ITexture;)V
    .locals 2

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/opengl/texture/TextureManager;->loadTexture(Lorg/anddev/andengine/opengl/texture/ITexture;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized reloadTextures()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeLoaded:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeUnloaded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeUnloaded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/ITexture;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/anddev/andengine/opengl/texture/ITexture;->setLoadedToHardware(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unloadTexture(Lorg/anddev/andengine/opengl/texture/ITexture;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeUnloaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public varargs unloadTextures([Lorg/anddev/andengine/opengl/texture/ITexture;)V
    .locals 2

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/opengl/texture/TextureManager;->unloadTexture(Lorg/anddev/andengine/opengl/texture/ITexture;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized updateTextures(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesManaged:Ljava/util/HashSet;

    iget-object v3, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesLoaded:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeLoaded:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/anddev/andengine/opengl/texture/TextureManager;->mTexturesToBeUnloaded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_5

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    add-int/lit8 v0, v6, -0x1

    move v1, v0

    :goto_1
    if-gez v1, :cond_7

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    add-int/lit8 v0, v4, -0x1

    move v1, v0

    :goto_2
    if-gez v1, :cond_9

    :cond_2
    if-gtz v6, :cond_3

    if-lez v4, :cond_4

    :cond_3
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/ITexture;->isUpdateOnHardwareNeeded()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_6

    :try_start_2
    invoke-interface {v0, p1}, Lorg/anddev/andengine/opengl/texture/ITexture;->reloadToHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    :goto_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    :try_start_4
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/ITexture;->isLoadedToHardware()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v7

    if-nez v7, :cond_8

    :try_start_5
    invoke-interface {v0, p1}, Lorg/anddev/andengine/opengl/texture/ITexture;->loadToHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_8
    :goto_4
    :try_start_6
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :catch_1
    move-exception v7

    invoke-static {v7}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/ITexture;->isLoadedToHardware()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v0, p1}, Lorg/anddev/andengine/opengl/texture/ITexture;->unloadFromHardware(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_a
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2
.end method
