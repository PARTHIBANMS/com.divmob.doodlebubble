.class public Lorg/anddev/andengine/opengl/util/FastFloatBuffer;
.super Ljava/lang/Object;


# static fields
.field private static sWeakIntArray:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<[I>;"
        }
    .end annotation
.end field


# instance fields
.field public final mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mFloatBuffer:Ljava/nio/FloatBuffer;

.field private final mIntBuffer:Ljava/nio/IntBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->sWeakIntArray:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 v0, p1, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mFloatBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mIntBuffer:Ljava/nio/IntBuffer;

    return-void
.end method

.method public static varargs convert([F)[I
    .locals 4

    array-length v1, p0

    new-array v2, v1, [I

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    aget v3, p0, v0

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public capacity()I
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mIntBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public flip()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mIntBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public limit()I
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->limit()I

    move-result v0

    return v0
.end method

.method public position()I
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    return v0
.end method

.method public position(I)V
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v1, p1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mIntBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public put(F)V
    .locals 3

    iget-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mIntBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public put(Lorg/anddev/andengine/opengl/util/FastFloatBuffer;)V
    .locals 3

    iget-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    shr-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mIntBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public put([F)V
    .locals 6

    const/4 v2, 0x0

    array-length v3, p1

    sget-object v0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->sWeakIntArray:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, v3, :cond_1

    :cond_0
    new-array v0, v3, [I

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->sWeakIntArray:Ljava/lang/ref/SoftReference;

    :cond_1
    move v1, v2

    :goto_0
    if-lt v1, v3, :cond_2

    iget-object v1, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    mul-int/lit8 v5, v3, 0x4

    add-int/2addr v4, v5

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mIntBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    return-void

    :cond_2
    aget v4, p1, v1

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public put([I)V
    .locals 3

    iget-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->position()I

    move-result v1

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mIntBuffer:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    return-void
.end method

.method public remaining()I
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public slice()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->slice()Ljava/nio/FloatBuffer;

    move-result-object v0

    return-object v0
.end method
