.class public Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PVRTextureHeader"
.end annotation


# static fields
.field private static final FORMAT_FLAG_MASK:I = 0xff

.field public static final MAGIC_IDENTIFIER:[B = null

.field public static final SIZE:I = 0x34


# instance fields
.field private final mDataByteBuffer:Ljava/nio/ByteBuffer;

.field private final mPVRTextureFormat:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->MAGIC_IDENTIFIER:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x50t
        0x56t
        0x52t
        0x21t
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v0, 0x2c

    sget-object v1, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->MAGIC_IDENTIFIER:[B

    const/4 v2, 0x0

    sget-object v3, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->MAGIC_IDENTIFIER:[B

    array-length v3, v3

    invoke-static {p1, v0, v1, v2, v3}, Lorg/anddev/andengine/util/ArrayUtils;->equals([BI[BII)Z

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
    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;->fromID(I)Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->mPVRTextureFormat:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    return-void
.end method


# virtual methods
.method public getBitmaskAlpha()I
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getBitmaskBlue()I
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getBitmaskGreen()I
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getBitmaskRed()I
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getBitsPerPixel()I
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getDataLength()I
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getFlags()I
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getNumMipmaps()I
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getPVRTag()I
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getPVRTextureFormat()Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->mPVRTextureFormat:Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public hasAlpha()Z
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->getBitmaskAlpha()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public headerLength()I
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public numSurfs()I
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureHeader;->mDataByteBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method
