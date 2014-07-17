.class public abstract Lorg/anddev/andengine/opengl/buffer/BufferObject;
.super Ljava/lang/Object;


# static fields
.field private static final HARDWAREBUFFERID_FETCHER:[I


# instance fields
.field protected final mBufferData:[I

.field private final mDrawType:I

.field protected final mFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

.field private mHardwareBufferID:I

.field private mHardwareBufferNeedsUpdate:Z

.field private mLoadedToHardware:Z

.field private mManaged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->HARDWAREBUFFERID_FETCHER:[I

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mHardwareBufferID:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mHardwareBufferNeedsUpdate:Z

    iput p2, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mDrawType:I

    iput-boolean p3, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mManaged:Z

    new-array v0, p1, [I

    iput-object v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mBufferData:[I

    new-instance v0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    invoke-direct {v0, p1}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/buffer/BufferObject;->loadToActiveBufferObjectManager()V

    :cond_0
    return-void
.end method

.method private deleteBufferOnHardware(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mHardwareBufferID:I

    invoke-static {p1, v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->deleteBuffer(Ljavax/microedition/khronos/opengles/GL11;I)V

    return-void
.end method

.method private generateHardwareBufferID(Ljavax/microedition/khronos/opengles/GL11;)I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    sget-object v1, Lorg/anddev/andengine/opengl/buffer/BufferObject;->HARDWAREBUFFERID_FETCHER:[I

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    sget-object v0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->HARDWAREBUFFERID_FETCHER:[I

    aget v0, v0, v2

    return v0
.end method


# virtual methods
.method public getFloatBuffer()Lorg/anddev/andengine/opengl/util/FastFloatBuffer;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    return-object v0
.end method

.method public getHardwareBufferID()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mHardwareBufferID:I

    return v0
.end method

.method public isLoadedToHardware()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mLoadedToHardware:Z

    return v0
.end method

.method public isManaged()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mManaged:Z

    return v0
.end method

.method public loadToActiveBufferObjectManager()V
    .locals 1

    invoke-static {}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->getActiveInstance()Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->loadBufferObject(Lorg/anddev/andengine/opengl/buffer/BufferObject;)V

    return-void
.end method

.method public loadToHardware(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/anddev/andengine/opengl/buffer/BufferObject;->generateHardwareBufferID(Ljavax/microedition/khronos/opengles/GL11;)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mHardwareBufferID:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mLoadedToHardware:Z

    return-void
.end method

.method public selectOnHardware(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mHardwareBufferID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->bindBuffer(Ljavax/microedition/khronos/opengles/GL11;I)V

    iget-boolean v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mHardwareBufferNeedsUpdate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mHardwareBufferNeedsUpdate:Z

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    iget-object v0, v0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mDrawType:I

    invoke-static {p1, v0, v1}, Lorg/anddev/andengine/opengl/util/GLHelper;->bufferData(Ljavax/microedition/khronos/opengles/GL11;Ljava/nio/ByteBuffer;I)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setHardwareBufferNeedsUpdate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mHardwareBufferNeedsUpdate:Z

    return-void
.end method

.method setLoadedToHardware(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mLoadedToHardware:Z

    return-void
.end method

.method public setManaged(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mManaged:Z

    return-void
.end method

.method public unloadFromActiveBufferObjectManager()V
    .locals 1

    invoke-static {}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->getActiveInstance()Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->unloadBufferObject(Lorg/anddev/andengine/opengl/buffer/BufferObject;)V

    return-void
.end method

.method public unloadFromHardware(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/anddev/andengine/opengl/buffer/BufferObject;->deleteBufferOnHardware(Ljavax/microedition/khronos/opengles/GL11;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mHardwareBufferID:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/buffer/BufferObject;->mLoadedToHardware:Z

    return-void
.end method
