.class public Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;
.super Lorg/anddev/andengine/opengl/vertex/VertexBuffer;


# static fields
.field private static final TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation; = null

.field public static final VERTICES_PER_RECTANGLE:I = 0x6

.field private static final VERTICES_TMP:[F


# instance fields
.field protected mIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    sput-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    new-instance v0, Lorg/anddev/andengine/util/Transformation;

    invoke-direct {v0}, Lorg/anddev/andengine/util/Transformation;-><init>()V

    sput-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1

    mul-int/lit8 v0, p1, 0x2

    mul-int/lit8 v0, v0, 0x6

    invoke-direct {p0, v0, p2, p3}, Lorg/anddev/andengine/opengl/vertex/VertexBuffer;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public add(FFFF)V
    .locals 2

    add-float v0, p1, p3

    add-float v1, p2, p4

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->addInner(FFFF)V

    return-void
.end method

.method public add(FFFFF)V
    .locals 5

    const/high16 v1, 0x3f00

    mul-float v0, p3, v1

    mul-float/2addr v1, p4

    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v2}, Lorg/anddev/andengine/util/Transformation;->setToIdentity()V

    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v2, p5}, Lorg/anddev/andengine/util/Transformation;->postRotate(F)V

    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v2, v0, v1}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {p0, p3, p4, v0}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFLorg/anddev/andengine/util/Transformation;)V

    return-void
.end method

.method public add(FFFFFF)V
    .locals 5

    const/high16 v1, 0x3f00

    mul-float v0, p3, v1

    mul-float/2addr v1, p4

    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v2}, Lorg/anddev/andengine/util/Transformation;->setToIdentity()V

    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v2, p5, p6}, Lorg/anddev/andengine/util/Transformation;->postScale(FF)V

    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v2, v0, v1}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {p0, p3, p4, v0}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFLorg/anddev/andengine/util/Transformation;)V

    return-void
.end method

.method public add(FFFFFFF)V
    .locals 5

    const/high16 v1, 0x3f00

    mul-float v0, p3, v1

    mul-float/2addr v1, p4

    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v2}, Lorg/anddev/andengine/util/Transformation;->setToIdentity()V

    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    neg-float v3, v0

    neg-float v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v2, p6, p7}, Lorg/anddev/andengine/util/Transformation;->postScale(FF)V

    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v2, p5}, Lorg/anddev/andengine/util/Transformation;->postRotate(F)V

    sget-object v2, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v2, v0, v1}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->TRANSFORATION_TMP:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {p0, p3, p4, v0}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->add(FFLorg/anddev/andengine/util/Transformation;)V

    return-void
.end method

.method public add(FFLorg/anddev/andengine/util/Transformation;)V
    .locals 9

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    aput v2, v0, v3

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    aput v2, v0, v4

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    aput v2, v0, v5

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    aput p2, v0, v6

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    const/4 v1, 0x4

    aput p1, v0, v1

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    const/4 v1, 0x7

    aput p2, v0, v1

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    invoke-virtual {p3, v0}, Lorg/anddev/andengine/util/Transformation;->transform([F)V

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    aget v1, v0, v3

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    aget v2, v0, v4

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    aget v3, v0, v5

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    aget v4, v0, v6

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    const/4 v5, 0x4

    aget v5, v0, v5

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    const/4 v6, 0x5

    aget v6, v0, v6

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    const/4 v7, 0x6

    aget v7, v0, v7

    sget-object v0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->VERTICES_TMP:[F

    const/4 v8, 0x7

    aget v8, v0, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->addInner(FFFFFFFF)V

    return-void
.end method

.method public addInner(FFFF)V
    .locals 7

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    iget-object v4, p0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->mBufferData:[I

    iget v5, p0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->mIndex:I

    add-int/lit8 v6, v5, 0x1

    aput v0, v4, v5

    add-int/lit8 v5, v6, 0x1

    aput v1, v4, v6

    add-int/lit8 v6, v5, 0x1

    aput v0, v4, v5

    add-int/lit8 v5, v6, 0x1

    aput v3, v4, v6

    add-int/lit8 v6, v5, 0x1

    aput v2, v4, v5

    add-int/lit8 v5, v6, 0x1

    aput v1, v4, v6

    add-int/lit8 v6, v5, 0x1

    aput v2, v4, v5

    add-int/lit8 v5, v6, 0x1

    aput v1, v4, v6

    add-int/lit8 v1, v5, 0x1

    aput v0, v4, v5

    add-int/lit8 v0, v1, 0x1

    aput v3, v4, v1

    add-int/lit8 v1, v0, 0x1

    aput v2, v4, v0

    add-int/lit8 v0, v1, 0x1

    aput v3, v4, v1

    iput v0, p0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->mIndex:I

    return-void
.end method

.method public addInner(FFFFFFFF)V
    .locals 11

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    invoke-static/range {p8 .. p8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    iget-object v8, p0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->mBufferData:[I

    iget v9, p0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->mIndex:I

    add-int/lit8 v10, v9, 0x1

    aput v0, v8, v9

    add-int/lit8 v0, v10, 0x1

    aput v1, v8, v10

    add-int/lit8 v1, v0, 0x1

    aput v2, v8, v0

    add-int/lit8 v0, v1, 0x1

    aput v3, v8, v1

    add-int/lit8 v1, v0, 0x1

    aput v4, v8, v0

    add-int/lit8 v0, v1, 0x1

    aput v5, v8, v1

    add-int/lit8 v1, v0, 0x1

    aput v4, v8, v0

    add-int/lit8 v0, v1, 0x1

    aput v5, v8, v1

    add-int/lit8 v1, v0, 0x1

    aput v2, v8, v0

    add-int/lit8 v0, v1, 0x1

    aput v3, v8, v1

    add-int/lit8 v1, v0, 0x1

    aput v6, v8, v0

    add-int/lit8 v0, v1, 0x1

    aput v7, v8, v1

    iput v0, p0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->mIndex:I

    return-void
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->mIndex:I

    return v0
.end method

.method public setIndex(I)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->mIndex:I

    return-void
.end method

.method public submit()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->mFloatBuffer:Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

    iget-object v1, p0, Lorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;->mBufferData:[I

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->put([I)V

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/opengl/util/FastFloatBuffer;->position(I)V

    invoke-super {p0}, Lorg/anddev/andengine/opengl/vertex/VertexBuffer;->setHardwareBufferNeedsUpdate()V

    return-void
.end method
