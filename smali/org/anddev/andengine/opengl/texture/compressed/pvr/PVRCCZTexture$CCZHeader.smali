.class public Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CCZHeader"
.end annotation


# static fields
.field public static final MAGIC_IDENTIFIER:[B = null

.field public static final SIZE:I = 0x10


# instance fields
.field private final mCCZCompressionFormat:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

.field private final mDataByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;->MAGIC_IDENTIFIER:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x43t
        0x43t
        0x5at
        0x21t
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    sget-object v0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;->MAGIC_IDENTIFIER:[B

    sget-object v1, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;->MAGIC_IDENTIFIER:[B

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Lorg/anddev/andengine/util/ArrayUtils;->equals([BI[BII)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;->getCCZCompressionFormatID()S

    move-result v0

    invoke-static {v0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;->fromID(S)Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;->mCCZCompressionFormat:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    return-void
.end method

.method private getCCZCompressionFormatID()S
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method


# virtual methods
.method public getCCZCompressionFormat()Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;->mCCZCompressionFormat:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZCompressionFormat;

    return-object v0
.end method

.method public getUncompressedSize()I
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getUserdata()I
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getVersion()S
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRCCZTexture$CCZHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method
