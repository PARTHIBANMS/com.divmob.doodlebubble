.class public Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;
.super Lorg/anddev/andengine/opengl/vertex/VertexBuffer;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final FLOAT_TO_RAW_INT_BITS_ZERO:I = 0x0

.field public static final VERTICES_PER_RECTANGLE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    sput v0, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;->FLOAT_TO_RAW_INT_BITS_ZERO:I

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Lorg/anddev/andengine/opengl/vertex/VertexBuffer;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public declared-synchronized update(FF)V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget v0, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;->FLOAT_TO_RAW_INT_BITS_ZERO:I

    sget v1, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;->FLOAT_TO_RAW_INT_BITS_ZERO:I

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    iget-object v4, p0, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;->mBufferData:[I

    const/4 v5, 0x0

    aput v0, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    const/4 v5, 0x2

    aput v0, v4, v5

    const/4 v0, 0x3

    aput v3, v4, v0

    const/4 v0, 0x4

    aput v2, v4, v0

    const/4 v0, 0x5

    aput v1, v4, v0

    const/4 v0, 0x6

    aput v2, v4, v0

    const/4 v0, 0x7

    aput v3, v4, v0

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;->getFloatBuffer()Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

    invoke-virtual {v0, v4}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put([I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

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
