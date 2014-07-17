.class public Lorg/anddev/andengine/util/ByteBufferOutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field protected mCount:I

.field protected mData:[B

.field protected final mMaximumGrow:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput p2, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mMaximumGrow:I

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mData:[B

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mData:[B

    array-length v0, v0

    sub-int v0, p1, v0

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/ByteBufferOutputStream;->grow(I)V

    :cond_0
    return-void
.end method

.method private grow(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mData:[B

    array-length v0, v0

    iget v1, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mMaximumGrow:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Growing by: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/anddev/andengine/util/Debug;->d(Ljava/lang/String;)V

    add-int/2addr v0, v1

    sub-int v1, v0, p1

    if-gez v1, :cond_0

    move v0, p1

    :cond_0
    if-gez v0, :cond_2

    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    :cond_1
    const v0, 0x7fffffff

    :cond_2
    new-array v0, v0, [B

    iget-object v1, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mData:[B

    iget v2, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mCount:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mData:[B

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public toByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    iget-object v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mData:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mCount:I

    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 3

    iget v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mCount:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/anddev/andengine/util/ByteBufferOutputStream;->ensureCapacity(I)V

    iget-object v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mData:[B

    iget v1, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mCount:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    iget v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mCount:I

    return-void
.end method

.method public write([BII)V
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mCount:I

    add-int/2addr v0, p3

    invoke-direct {p0, v0}, Lorg/anddev/andengine/util/ByteBufferOutputStream;->ensureCapacity(I)V

    iget-object v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mData:[B

    iget v1, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mCount:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mCount:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/anddev/andengine/util/ByteBufferOutputStream;->mCount:I

    return-void
.end method
