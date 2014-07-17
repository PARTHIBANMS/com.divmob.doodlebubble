.class public Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;
.super Lorg/anddev/andengine/opengl/vertex/VertexBuffer;


# static fields
.field public static final VERTICES_PER_LINE:I = 0x2


# direct methods
.method public constructor <init>(IZ)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lorg/anddev/andengine/opengl/vertex/VertexBuffer;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public declared-synchronized update(FFFF)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;->mBufferData:[I

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    aput v2, v0, v1

    iget-object v1, p0, Lorg/anddev/andengine/opengl/vertex/LineVertexBuffer;->mFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put([I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

    invoke-super {p0}, Lorg/anddev/andengine/opengl/vertex/VertexBuffer;->setHardwareBufferNeedsUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
