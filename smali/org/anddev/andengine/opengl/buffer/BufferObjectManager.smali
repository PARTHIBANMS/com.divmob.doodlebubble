.class public Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;
.super Ljava/lang/Object;


# static fields
.field private static mActiveInstance:Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

.field private static final mBufferObjectsLoaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/opengl/buffer/BufferObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final mBufferObjectsManaged:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lorg/anddev/andengine/opengl/buffer/BufferObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final mBufferObjectsToBeLoaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/opengl/buffer/BufferObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final mBufferObjectsToBeUnloaded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/opengl/buffer/BufferObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsManaged:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsLoaded:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsToBeLoaded:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsToBeUnloaded:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mActiveInstance:Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveInstance()Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mActiveInstance:Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    return-object v0
.end method

.method public static setActiveInstance(Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;)V
    .locals 0

    sput-object p0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mActiveInstance:Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsToBeLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsManaged:Ljava/util/HashSet;

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

.method public declared-synchronized loadBufferObject(Lorg/anddev/andengine/opengl/buffer/BufferObject;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsManaged:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsToBeUnloaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsManaged:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsToBeLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public varargs loadBufferObjects([Lorg/anddev/andengine/opengl/buffer/BufferObject;)V
    .locals 2

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->loadBufferObject(Lorg/anddev/andengine/opengl/buffer/BufferObject;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized reloadBufferObjects()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v2, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsLoaded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsToBeLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/buffer/BufferObject;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/opengl/buffer/BufferObject;->setLoadedToHardware(Z)V
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

.method public declared-synchronized unloadBufferObject(Lorg/anddev/andengine/opengl/buffer/BufferObject;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsManaged:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsToBeUnloaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_1
    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsToBeLoaded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsManaged:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public varargs unloadBufferObjects([Lorg/anddev/andengine/opengl/buffer/BufferObject;)V
    .locals 2

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->unloadBufferObject(Lorg/anddev/andengine/opengl/buffer/BufferObject;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized updateBufferObjects(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    sget-object v2, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsManaged:Ljava/util/HashSet;

    sget-object v3, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsLoaded:Ljava/util/ArrayList;

    sget-object v4, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsToBeLoaded:Ljava/util/ArrayList;

    sget-object v5, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->mBufferObjectsToBeUnloaded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :cond_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-gez v1, :cond_4

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/buffer/BufferObject;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/buffer/BufferObject;->isLoadedToHardware()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/buffer/BufferObject;->loadToHardware(Ljavax/microedition/khronos/opengles/GL11;)V

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/buffer/BufferObject;->setHardwareBufferNeedsUpdate()V

    :cond_3
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/buffer/BufferObject;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/buffer/BufferObject;->isLoadedToHardware()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/buffer/BufferObject;->unloadFromHardware(Ljavax/microedition/khronos/opengles/GL11;)V

    :cond_5
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
