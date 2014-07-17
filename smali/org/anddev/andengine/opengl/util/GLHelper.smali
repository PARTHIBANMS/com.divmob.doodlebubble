.class public Lorg/anddev/andengine/opengl/util/GLHelper;
.super Ljava/lang/Object;


# static fields
.field private static synthetic $SWITCH_TABLE$org$anddev$andengine$opengl$texture$Texture$PixelFormat:[I = null

.field public static final BYTES_PER_FLOAT:I = 0x4

.field public static final BYTES_PER_PIXEL_RGBA:I = 0x4

.field public static EXTENSIONS_DRAWTEXTURE:Z

.field public static EXTENSIONS_TEXTURE_NON_POWER_OF_TWO:Z

.field public static EXTENSIONS_VERTEXBUFFEROBJECTS:Z

.field private static final HARDWAREBUFFERID_CONTAINER:[I

.field private static final HARDWARETEXTUREID_CONTAINER:[I

.field private static final IS_LITTLE_ENDIAN:Z

.field private static sAlpha:F

.field private static sBlue:F

.field private static sCurrentDestinationBlendMode:I

.field private static sCurrentHardwareBufferID:I

.field private static sCurrentHardwareTextureID:I

.field private static sCurrentMatrix:I

.field private static sCurrentSourceBlendMode:I

.field private static sCurrentTextureFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

.field private static sCurrentVertexFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

.field private static sEnableBlend:Z

.field private static sEnableCulling:Z

.field private static sEnableDepthTest:Z

.field private static sEnableDither:Z

.field private static sEnableLightning:Z

.field private static sEnableMultisample:Z

.field private static sEnableScissorTest:Z

.field private static sEnableTexCoordArray:Z

.field private static sEnableTextures:Z

.field private static sEnableVertexArray:Z

.field private static sGreen:F

.field private static sLineWidth:F

.field private static sRed:F


# direct methods
.method static synthetic $SWITCH_TABLE$org$anddev$andengine$opengl$texture$Texture$PixelFormat()[I
    .locals 3

    sget-object v0, Lorg/anddev/andengine/opengl/util/GLHelper;->$SWITCH_TABLE$org$anddev$andengine$opengl$texture$Texture$PixelFormat:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->values()[Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->AI_88:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->A_8:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->I_8:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGBA_4444:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGBA_5551:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGB_565:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->UNDEFINED:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lorg/anddev/andengine/opengl/util/GLHelper;->$SWITCH_TABLE$org$anddev$andengine$opengl$texture$Texture$PixelFormat:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, -0x4080

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->IS_LITTLE_ENDIAN:Z

    new-array v0, v1, [I

    sput-object v0, Lorg/anddev/andengine/opengl/util/GLHelper;->HARDWARETEXTUREID_CONTAINER:[I

    new-array v0, v1, [I

    sput-object v0, Lorg/anddev/andengine/opengl/util/GLHelper;->HARDWAREBUFFERID_CONTAINER:[I

    sput v4, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentHardwareBufferID:I

    sput v4, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentHardwareTextureID:I

    sput v4, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentMatrix:I

    sput v4, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentSourceBlendMode:I

    sput v4, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentDestinationBlendMode:I

    sput-object v6, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentVertexFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    sput-object v6, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentTextureFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    sput-boolean v1, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableDither:Z

    sput-boolean v1, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableLightning:Z

    sput-boolean v1, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableDepthTest:Z

    sput-boolean v1, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableMultisample:Z

    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableScissorTest:Z

    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableBlend:Z

    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableCulling:Z

    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableTextures:Z

    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableTexCoordArray:Z

    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableVertexArray:Z

    const/high16 v0, 0x3f80

    sput v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sLineWidth:F

    sput v5, Lorg/anddev/andengine/opengl/util/GLHelper;->sRed:F

    sput v5, Lorg/anddev/andengine/opengl/util/GLHelper;->sGreen:F

    sput v5, Lorg/anddev/andengine/opengl/util/GLHelper;->sBlue:F

    sput v5, Lorg/anddev/andengine/opengl/util/GLHelper;->sAlpha:F

    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_VERTEXBUFFEROBJECTS:Z

    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_DRAWTEXTURE:Z

    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_TEXTURE_NON_POWER_OF_TWO:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindBuffer(Ljavax/microedition/khronos/opengles/GL11;I)V
    .locals 1

    sget v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentHardwareBufferID:I

    if-eq v0, p1, :cond_0

    sput p1, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentHardwareBufferID:I

    const v0, 0x8892

    invoke-interface {p0, v0, p1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    :cond_0
    return-void
.end method

.method public static bindTexture(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 1

    sget v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentHardwareTextureID:I

    if-eq v0, p1, :cond_0

    sput p1, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentHardwareTextureID:I

    const/16 v0, 0xde1

    invoke-interface {p0, v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    :cond_0
    return-void
.end method

.method public static blendFunction(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    sget v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentSourceBlendMode:I

    if-ne v0, p1, :cond_0

    sget v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentDestinationBlendMode:I

    if-eq v0, p2, :cond_1

    :cond_0
    sput p1, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentSourceBlendMode:I

    sput p2, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentDestinationBlendMode:I

    invoke-interface {p0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    :cond_1
    return-void
.end method

.method public static bufferData(Ljavax/microedition/khronos/opengles/GL11;Ljava/nio/ByteBuffer;I)V
    .locals 2

    const v0, 0x8892

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-interface {p0, v0, v1, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    return-void
.end method

.method public static checkGLError(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/opengl/GLException;
        }
    .end annotation

    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/opengl/GLException;

    invoke-direct {v1, v0}, Landroid/opengl/GLException;-><init>(I)V

    throw v1

    :cond_0
    return-void
.end method

.method private static convertARGB_8888toARGB_4444([I)[B
    .locals 8

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [B

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->IS_LITTLE_ENDIAN:Z

    if-eqz v0, :cond_2

    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v1, :cond_1

    :cond_0
    return-object v2

    :cond_1
    aget v3, p0, v1

    shr-int/lit8 v4, v3, 0x1c

    and-int/lit8 v4, v4, 0xf

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v6, v3, 0x8

    and-int/lit16 v6, v6, 0xf0

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v7, v0, -0x1

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    add-int/lit8 v0, v7, -0x1

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v1, :cond_0

    aget v3, p0, v1

    shr-int/lit8 v4, v3, 0x1c

    and-int/lit8 v4, v4, 0xf

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v6, v3, 0x8

    and-int/lit16 v6, v6, 0xf0

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v7, v0, -0x1

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v7, -0x1

    or-int v3, v4, v5

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private static convertARGB_8888toA_8([I)[B
    .locals 3

    array-length v0, p0

    new-array v1, v0, [B

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->IS_LITTLE_ENDIAN:Z

    if-eqz v0, :cond_2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    aget v2, p0, v0

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_0

    aget v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private static convertARGB_8888toRGBA_8888([I)[I
    .locals 4

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->IS_LITTLE_ENDIAN:Z

    if-eqz v0, :cond_2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    aget v1, p0, v0

    const v2, -0xff0100

    and-int/2addr v2, v1

    and-int/lit16 v3, v1, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/high16 v3, 0xff

    and-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_0

    aget v1, p0, v0

    const v2, 0xffffff

    and-int/2addr v2, v1

    shl-int/lit8 v2, v2, 0x8

    const/high16 v3, -0x100

    and-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x18

    or-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private static convertARGB_8888toRGB_565([I)[B
    .locals 8

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [B

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->IS_LITTLE_ENDIAN:Z

    if-eqz v0, :cond_2

    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v1, :cond_1

    :cond_0
    return-object v2

    :cond_1
    aget v3, p0, v1

    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v6, v0, -0x1

    and-int/lit16 v4, v4, 0xf8

    shr-int/lit8 v7, v5, 0x5

    or-int/2addr v4, v7

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    add-int/lit8 v0, v6, -0x1

    shl-int/lit8 v4, v5, 0x3

    and-int/lit16 v4, v4, 0xe0

    shr-int/lit8 v3, v3, 0x3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    array-length v0, p0

    add-int/lit8 v1, v0, -0x1

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v1, :cond_0

    aget v3, p0, v1

    shr-int/lit8 v4, v3, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v6, v0, -0x1

    shl-int/lit8 v7, v5, 0x3

    and-int/lit16 v7, v7, 0xe0

    shr-int/lit8 v3, v3, 0x3

    or-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v6, -0x1

    and-int/lit16 v3, v4, 0xf8

    shr-int/lit8 v4, v5, 0x5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static deleteBuffer(Ljavax/microedition/khronos/opengles/GL11;I)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lorg/anddev/andengine/opengl/util/GLHelper;->HARDWAREBUFFERID_CONTAINER:[I

    aput p1, v0, v2

    const/4 v0, 0x1

    sget-object v1, Lorg/anddev/andengine/opengl/util/GLHelper;->HARDWAREBUFFERID_CONTAINER:[I

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    return-void
.end method

.method public static deleteTexture(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lorg/anddev/andengine/opengl/util/GLHelper;->HARDWARETEXTUREID_CONTAINER:[I

    aput p1, v0, v2

    const/4 v0, 0x1

    sget-object v1, Lorg/anddev/andengine/opengl/util/GLHelper;->HARDWARETEXTUREID_CONTAINER:[I

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    return-void
.end method

.method public static disableBlend(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableBlend:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableBlend:Z

    const/16 v0, 0xbe2

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    :cond_0
    return-void
.end method

.method public static disableCulling(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableCulling:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableCulling:Z

    const/16 v0, 0xb44

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    :cond_0
    return-void
.end method

.method public static disableDepthTest(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableDepthTest:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableDepthTest:Z

    const/16 v0, 0xb71

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    :cond_0
    return-void
.end method

.method public static disableDither(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableDither:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableDither:Z

    const/16 v0, 0xbd0

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    :cond_0
    return-void
.end method

.method public static disableLightning(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableLightning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableLightning:Z

    const/16 v0, 0xb50

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    :cond_0
    return-void
.end method

.method public static disableMultisample(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableMultisample:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableMultisample:Z

    const v0, 0x809d

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    :cond_0
    return-void
.end method

.method public static disableScissorTest(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableScissorTest:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableScissorTest:Z

    const/16 v0, 0xc11

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    :cond_0
    return-void
.end method

.method public static disableTexCoordArray(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableTexCoordArray:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableTexCoordArray:Z

    const v0, 0x8078

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    :cond_0
    return-void
.end method

.method public static disableTextures(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableTextures:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableTextures:Z

    const/16 v0, 0xde1

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    :cond_0
    return-void
.end method

.method public static disableVertexArray(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableVertexArray:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableVertexArray:Z

    const v0, 0x8074

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    :cond_0
    return-void
.end method

.method public static enableBlend(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableBlend:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableBlend:Z

    const/16 v0, 0xbe2

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :cond_0
    return-void
.end method

.method public static enableCulling(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableCulling:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableCulling:Z

    const/16 v0, 0xb44

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :cond_0
    return-void
.end method

.method public static enableDepthTest(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableDepthTest:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableDepthTest:Z

    const/16 v0, 0xb71

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :cond_0
    return-void
.end method

.method public static enableDither(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableDither:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableDither:Z

    const/16 v0, 0xbd0

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :cond_0
    return-void
.end method

.method public static enableExtensions(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/options/RenderOptions;)V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x1f02

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1f01

    invoke-interface {p0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1f03

    invoke-interface {p0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "RENDERER: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/anddev/andengine/util/Debug;->d(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "VERSION: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/anddev/andengine/util/Debug;->d(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "EXTENSIONS: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/anddev/andengine/util/Debug;->d(Ljava/lang/String;)V

    const-string v5, "1.0"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "2."

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v0, "PixelFlinger"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "_vertex_buffer_object"

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v7, "draw_texture"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "texture_npot"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/options/RenderOptions;->isDisableExtensionVertexBufferObjects()Z

    move-result v8

    if-nez v8, :cond_2

    if-nez v0, :cond_2

    if-nez v3, :cond_0

    if-nez v5, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_VERTEXBUFFEROBJECTS:Z

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/options/RenderOptions;->isDisableExtensionVertexBufferObjects()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez v7, :cond_1

    if-nez v5, :cond_3

    :cond_1
    move v0, v1

    :goto_1
    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_DRAWTEXTURE:Z

    if-nez v4, :cond_4

    if-nez v6, :cond_4

    :goto_2
    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_TEXTURE_NON_POWER_OF_TWO:Z

    invoke-static {}, Lorg/anddev/andengine/opengl/util/GLHelper;->hackBrokenDevices()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EXTENSIONS_VERXTEXBUFFEROBJECTS = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_VERTEXBUFFEROBJECTS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/anddev/andengine/util/Debug;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EXTENSIONS_DRAWTEXTURE = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_DRAWTEXTURE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/anddev/andengine/util/Debug;->d(Ljava/lang/String;)V

    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2
.end method

.method public static enableLightning(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableLightning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableLightning:Z

    const/16 v0, 0xb50

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :cond_0
    return-void
.end method

.method public static enableMultisample(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableMultisample:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableMultisample:Z

    const v0, 0x809d

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :cond_0
    return-void
.end method

.method public static enableScissorTest(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableScissorTest:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableScissorTest:Z

    const/16 v0, 0xc11

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :cond_0
    return-void
.end method

.method public static enableTexCoordArray(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableTexCoordArray:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableTexCoordArray:Z

    const v0, 0x8078

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    :cond_0
    return-void
.end method

.method public static enableTextures(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableTextures:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableTextures:Z

    const/16 v0, 0xde1

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :cond_0
    return-void
.end method

.method public static enableVertexArray(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableVertexArray:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sEnableVertexArray:Z

    const v0, 0x8074

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    :cond_0
    return-void
.end method

.method public static forceBindTexture(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 1

    sput p1, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentHardwareTextureID:I

    const/16 v0, 0xde1

    invoke-interface {p0, v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    return-void
.end method

.method private static getPixels(Landroid/graphics/Bitmap;Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;)Ljava/nio/Buffer;
    .locals 3

    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->getPixelsARGB_8888(Landroid/graphics/Bitmap;)[I

    move-result-object v0

    invoke-static {}, Lorg/anddev/andengine/opengl/util/GLHelper;->$SWITCH_TABLE$org$anddev$andengine$opengl$texture$Texture$PixelFormat()[I

    move-result-object v1

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-static {v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->convertARGB_8888toRGB_565([I)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_2
    invoke-static {v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->convertARGB_8888toRGBA_8888([I)[I

    move-result-object v0

    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->convertARGB_8888toARGB_4444([I)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->convertARGB_8888toA_8([I)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public static getPixelsARGB_8888(Landroid/graphics/Bitmap;)[I
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    return-object v1
.end method

.method public static glTexImage2D(Ljavax/microedition/khronos/opengles/GL10;IILandroid/graphics/Bitmap;ILorg/anddev/andengine/opengl/texture/Texture$PixelFormat;)V
    .locals 10

    invoke-static {p3, p5}, Lorg/anddev/andengine/opengl/util/GLHelper;->getPixels(Landroid/graphics/Bitmap;Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;)Ljava/nio/Buffer;

    move-result-object v9

    invoke-virtual {p5}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->getGLFormat()I

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {p5}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->getGLFormat()I

    move-result v7

    invoke-virtual {p5}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->getGLType()I

    move-result v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v6, p4

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method public static glTexSubImage2D(Ljavax/microedition/khronos/opengles/GL10;IIIILandroid/graphics/Bitmap;Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;)V
    .locals 10

    invoke-static/range {p5 .. p6}, Lorg/anddev/andengine/opengl/util/GLHelper;->getPixels(Landroid/graphics/Bitmap;Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;)Ljava/nio/Buffer;

    move-result-object v9

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual/range {p6 .. p6}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->getGLFormat()I

    move-result v7

    invoke-virtual/range {p6 .. p6}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->getGLType()I

    move-result v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    return-void
.end method

.method private static hackBrokenDevices()V
    .locals 2

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "morrison"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_VERTEXBUFFEROBJECTS:Z

    :cond_0
    return-void
.end method

.method public static lineWidth(Ljavax/microedition/khronos/opengles/GL10;F)V
    .locals 1

    sget v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sLineWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    sput p1, Lorg/anddev/andengine/opengl/util/GLHelper;->sLineWidth:F

    invoke-interface {p0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    :cond_0
    return-void
.end method

.method public static reset(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v1, -0x4080

    const/4 v0, -0x1

    sput v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentHardwareBufferID:I

    sput v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentHardwareTextureID:I

    sput v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentMatrix:I

    sput v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentSourceBlendMode:I

    sput v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentDestinationBlendMode:I

    sput-object v3, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentVertexFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    sput-object v3, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentTextureFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableDither(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableLightning(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableDepthTest(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableMultisample(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableBlend(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableCulling(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableTexCoordArray(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableVertexArray(Ljavax/microedition/khronos/opengles/GL10;)V

    const/high16 v0, 0x3f80

    sput v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sLineWidth:F

    sput v1, Lorg/anddev/andengine/opengl/util/GLHelper;->sRed:F

    sput v1, Lorg/anddev/andengine/opengl/util/GLHelper;->sGreen:F

    sput v1, Lorg/anddev/andengine/opengl/util/GLHelper;->sBlue:F

    sput v1, Lorg/anddev/andengine/opengl/util/GLHelper;->sAlpha:F

    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_VERTEXBUFFEROBJECTS:Z

    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_DRAWTEXTURE:Z

    sput-boolean v2, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_TEXTURE_NON_POWER_OF_TWO:Z

    return-void
.end method

.method public static setColor(Ljavax/microedition/khronos/opengles/GL10;FFFF)V
    .locals 1

    sget v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sAlpha:F

    cmpl-float v0, p4, v0

    if-nez v0, :cond_0

    sget v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sRed:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    sget v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sGreen:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    sget v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sBlue:F

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_1

    :cond_0
    sput p4, Lorg/anddev/andengine/opengl/util/GLHelper;->sAlpha:F

    sput p1, Lorg/anddev/andengine/opengl/util/GLHelper;->sRed:F

    sput p2, Lorg/anddev/andengine/opengl/util/GLHelper;->sGreen:F

    sput p3, Lorg/anddev/andengine/opengl/util/GLHelper;->sBlue:F

    invoke-interface {p0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    :cond_1
    return-void
.end method

.method public static setModelViewIdentityMatrix(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->switchToModelViewMatrix(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    return-void
.end method

.method public static setPerspectiveCorrectionHintFastest(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    const/16 v0, 0xc50

    const/16 v1, 0x1101

    invoke-interface {p0, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    return-void
.end method

.method public static setProjectionIdentityMatrix(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    invoke-static {p0}, Lorg/anddev/andengine/opengl/util/GLHelper;->switchToProjectionMatrix(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-interface {p0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    return-void
.end method

.method public static setShadeModelFlat(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    const/16 v0, 0x1d00

    invoke-interface {p0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    return-void
.end method

.method public static switchToModelViewMatrix(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    const/16 v1, 0x1700

    sget v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentMatrix:I

    if-eq v0, v1, :cond_0

    sput v1, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentMatrix:I

    invoke-interface {p0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    :cond_0
    return-void
.end method

.method public static switchToProjectionMatrix(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    const/16 v1, 0x1701

    sget v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentMatrix:I

    if-eq v0, v1, :cond_0

    sput v1, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentMatrix:I

    invoke-interface {p0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    :cond_0
    return-void
.end method

.method public static texCoordPointer(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/opengl/util/FastFloatBuffer;)V
    .locals 4

    sget-object v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentTextureFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    if-eq v0, p1, :cond_0

    sput-object p1, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentTextureFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    const/4 v0, 0x2

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p1, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p0, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    :cond_0
    return-void
.end method

.method public static texCoordZeroPointer(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    const/16 v1, 0x1406

    invoke-interface {p0, v0, v1, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    return-void
.end method

.method public static vertexPointer(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/opengl/util/FastFloatBuffer;)V
    .locals 4

    sget-object v0, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentVertexFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    if-eq v0, p1, :cond_0

    sput-object p1, Lorg/anddev/andengine/opengl/util/GLHelper;->sCurrentVertexFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    const/4 v0, 0x2

    const/16 v1, 0x1406

    const/4 v2, 0x0

    iget-object v3, p1, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p0, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    :cond_0
    return-void
.end method

.method public static vertexZeroPointer(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    const/16 v1, 0x1406

    invoke-interface {p0, v0, v1, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    return-void
.end method
