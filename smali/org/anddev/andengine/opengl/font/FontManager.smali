.class public Lorg/anddev/andengine/opengl/font/FontManager;
.super Ljava/lang/Object;


# instance fields
.field private final mFontsManaged:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/opengl/font/Font;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/FontManager;->mFontsManaged:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/FontManager;->mFontsManaged:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadFont(Lorg/anddev/andengine/opengl/font/Font;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pFont must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/FontManager;->mFontsManaged:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized loadFonts(Lorg/anddev/andengine/opengl/font/FontLibrary;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1, p0}, Lorg/anddev/andengine/opengl/font/FontLibrary;->loadFonts(Lorg/anddev/andengine/opengl/font/FontManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs loadFonts([Lorg/anddev/andengine/opengl/font/Font;)V
    .locals 2

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/opengl/font/FontManager;->loadFont(Lorg/anddev/andengine/opengl/font/Font;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized reloadFonts()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/anddev/andengine/opengl/font/FontManager;->mFontsManaged:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/font/Font;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/font/Font;->reload()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateFonts(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/anddev/andengine/opengl/font/FontManager;->mFontsManaged:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/font/Font;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/font/Font;->update(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
