.class public Lorg/anddev/andengine/opengl/vertex/TextVertexBuffer;
.super Lorg/anddev/andengine/opengl/vertex/VertexBuffer;


# static fields
.field private static synthetic $SWITCH_TABLE$org$anddev$andengine$util$HorizontalAlign:[I = null

.field public static final VERTICES_PER_CHARACTER:I = 0x6


# instance fields
.field private final mHorizontalAlign:Lorg/anddev/andengine/util/HorizontalAlign;


# direct methods
.method static synthetic $SWITCH_TABLE$org$anddev$andengine$util$HorizontalAlign()[I
    .locals 3

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/TextVertexBuffer;->$SWITCH_TABLE$org$anddev$andengine$util$HorizontalAlign:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/anddev/andengine/util/HorizontalAlign;->values()[Lorg/anddev/andengine/util/HorizontalAlign;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/anddev/andengine/util/HorizontalAlign;->CENTER:Lorg/anddev/andengine/util/HorizontalAlign;

    invoke-virtual {v1}, Lorg/anddev/andengine/util/HorizontalAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lorg/anddev/andengine/util/HorizontalAlign;->LEFT:Lorg/anddev/andengine/util/HorizontalAlign;

    invoke-virtual {v1}, Lorg/anddev/andengine/util/HorizontalAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lorg/anddev/andengine/util/HorizontalAlign;->RIGHT:Lorg/anddev/andengine/util/HorizontalAlign;

    invoke-virtual {v1}, Lorg/anddev/andengine/util/HorizontalAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lorg/anddev/andengine/opengl/vertex/TextVertexBuffer;->$SWITCH_TABLE$org$anddev$andengine$util$HorizontalAlign:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(ILorg/anddev/andengine/util/HorizontalAlign;IZ)V
    .locals 1

    mul-int/lit8 v0, p1, 0xc

    invoke-direct {p0, v0, p3, p4}, Lorg/anddev/andengine/opengl/vertex/VertexBuffer;-><init>(IIZ)V

    iput-object p2, p0, Lorg/anddev/andengine/opengl/vertex/TextVertexBuffer;->mHorizontalAlign:Lorg/anddev/andengine/util/HorizontalAlign;

    return-void
.end method


# virtual methods
.method public declared-synchronized update(Lorg/anddev/andengine/opengl/font/Font;I[I[Ljava/lang/String;)V
    .locals 17

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/anddev/andengine/opengl/vertex/TextVertexBuffer;->mBufferData:[I

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/opengl/font/Font;->getLineHeight()I

    move-result v6

    move-object/from16 v0, p4

    array-length v7, v0

    const/4 v1, 0x0

    move v4, v1

    :goto_0
    if-lt v4, v7, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/anddev/andengine/opengl/vertex/TextVertexBuffer;->mFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

    invoke-virtual {v1, v5}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put([I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

    invoke-super/range {p0 .. p0}, Lorg/anddev/andengine/opengl/vertex/VertexBuffer;->setHardwareBufferNeedsUpdate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    aget-object v8, p4, v4

    invoke-static {}, Lorg/anddev/andengine/opengl/vertex/TextVertexBuffer;->$SWITCH_TABLE$org$anddev$andengine$util$HorizontalAlign()[I

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/anddev/andengine/opengl/vertex/TextVertexBuffer;->mHorizontalAlign:Lorg/anddev/andengine/util/HorizontalAlign;

    invoke-virtual {v2}, Lorg/anddev/andengine/util/HorizontalAlign;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/opengl/font/Font;->getLineHeight()I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lorg/anddev/andengine/opengl/font/Font;->getLineGap()I

    move-result v9

    add-int/2addr v1, v9

    mul-int v9, v4, v1

    int-to-float v1, v9

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v1, 0x0

    :goto_2
    if-lt v1, v11, :cond_1

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :pswitch_0
    aget v1, p3, v4

    sub-int v2, p2, v1

    goto :goto_1

    :pswitch_1
    aget v1, p3, v4

    sub-int v1, p2, v1

    shr-int/lit8 v2, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lorg/anddev/andengine/opengl/font/Font;->getLetter(C)Lorg/anddev/andengine/opengl/font/Letter;

    move-result-object v12

    add-int v13, v9, v6

    iget v14, v12, Lorg/anddev/andengine/opengl/font/Letter;->mWidth:I

    add-int/2addr v14, v2

    int-to-float v15, v2

    invoke-static {v15}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v15

    int-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v14

    int-to-float v13, v13

    invoke-static {v13}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v13

    add-int/lit8 v16, v3, 0x1

    aput v15, v5, v3

    add-int/lit8 v3, v16, 0x1

    aput v10, v5, v16

    add-int/lit8 v16, v3, 0x1

    aput v15, v5, v3

    add-int/lit8 v3, v16, 0x1

    aput v13, v5, v16

    add-int/lit8 v16, v3, 0x1

    aput v14, v5, v3

    add-int/lit8 v3, v16, 0x1

    aput v13, v5, v16

    add-int/lit8 v16, v3, 0x1

    aput v14, v5, v3

    add-int/lit8 v3, v16, 0x1

    aput v13, v5, v16

    add-int/lit8 v13, v3, 0x1

    aput v14, v5, v3

    add-int/lit8 v3, v13, 0x1

    aput v10, v5, v13

    add-int/lit8 v13, v3, 0x1

    aput v15, v5, v3

    add-int/lit8 v3, v13, 0x1

    aput v10, v5, v13

    iget v12, v12, Lorg/anddev/andengine/opengl/font/Letter;->mAdvance:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v2, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
