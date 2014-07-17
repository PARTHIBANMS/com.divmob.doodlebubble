.class public Lorg/anddev/andengine/entity/text/Text;
.super Lorg/anddev/andengine/entity/shape/RectangularShape;


# instance fields
.field protected final mCharactersMaximum:I

.field private final mFont:Lorg/anddev/andengine/opengl/font/Font;

.field private mLines:[Ljava/lang/String;

.field private mMaximumLineWidth:I

.field private mText:Ljava/lang/String;

.field private final mTextTextureBuffer:Lorg/anddev/andengine/opengl/texture/buffer/TextTextureBuffer;

.field protected final mVertexCount:I

.field private mWidths:[I


# direct methods
.method public constructor <init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V
    .locals 6

    sget-object v5, Lorg/anddev/andengine/util/HorizontalAlign;->LEFT:Lorg/anddev/andengine/util/HorizontalAlign;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;Lorg/anddev/andengine/util/HorizontalAlign;)V

    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;Lorg/anddev/andengine/util/HorizontalAlign;)V
    .locals 7

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {p4, v1}, Lorg/anddev/andengine/util/StringUtils;->countOccurrences(Ljava/lang/String;C)I

    move-result v1

    sub-int v6, v0, v1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;Lorg/anddev/andengine/util/HorizontalAlign;I)V

    return-void
.end method

.method protected constructor <init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;Lorg/anddev/andengine/util/HorizontalAlign;I)V
    .locals 8

    const v7, 0x88e4

    const/4 v6, 0x1

    const/4 v3, 0x0

    new-instance v5, Lorg/anddev/andengine/opengl/vertex/TextVertexBuffer;

    invoke-direct {v5, p6, p5, v7, v6}, Lorg/anddev/andengine/opengl/vertex/TextVertexBuffer;-><init>(ILorg/anddev/andengine/util/HorizontalAlign;IZ)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/shape/RectangularShape;-><init>(FFFFLorg/anddev/andengine/opengl/vertex/VertexBuffer;)V

    iput p6, p0, Lorg/anddev/andengine/entity/text/Text;->mCharactersMaximum:I

    iget v0, p0, Lorg/anddev/andengine/entity/text/Text;->mCharactersMaximum:I

    mul-int/lit8 v0, v0, 0x6

    iput v0, p0, Lorg/anddev/andengine/entity/text/Text;->mVertexCount:I

    new-instance v0, Lorg/anddev/andengine/opengl/texture/buffer/TextTextureBuffer;

    iget v1, p0, Lorg/anddev/andengine/entity/text/Text;->mVertexCount:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1, v7, v6}, Lorg/anddev/andengine/opengl/texture/buffer/TextTextureBuffer;-><init>(IIZ)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/text/Text;->mTextTextureBuffer:Lorg/anddev/andengine/opengl/texture/buffer/TextTextureBuffer;

    iput-object p3, p0, Lorg/anddev/andengine/entity/text/Text;->mFont:Lorg/anddev/andengine/opengl/font/Font;

    invoke-virtual {p0, p4}, Lorg/anddev/andengine/entity/text/Text;->updateText(Ljava/lang/String;)V

    invoke-direct {p0}, Lorg/anddev/andengine/entity/text/Text;->initBlendFunction()V

    return-void
.end method

.method private applyTexture(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_VERTEXBUFFEROBJECTS:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lorg/anddev/andengine/entity/text/Text;->mTextTextureBuffer:Lorg/anddev/andengine/opengl/texture/buffer/TextTextureBuffer;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/opengl/texture/buffer/TextTextureBuffer;->selectOnHardware(Ljavax/microedition/khronos/opengles/GL11;)V

    iget-object v1, p0, Lorg/anddev/andengine/entity/text/Text;->mFont:Lorg/anddev/andengine/opengl/font/Font;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/font/Font;->getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/anddev/andengine/opengl/texture/ITexture;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->texCoordZeroPointer(Ljavax/microedition/khronos/opengles/GL11;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/text/Text;->mFont:Lorg/anddev/andengine/opengl/font/Font;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/font/Font;->getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/anddev/andengine/opengl/texture/ITexture;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lorg/anddev/andengine/entity/text/Text;->mTextTextureBuffer:Lorg/anddev/andengine/opengl/texture/buffer/TextTextureBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/buffer/TextTextureBuffer;->getFloatBuffer()Lorg/anddev/andengine/opengl/util/FastFloatBuffer;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/anddev/andengine/opengl/util/GLHelper;->texCoordPointer(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/opengl/util/FastFloatBuffer;)V

    goto :goto_0
.end method

.method private initBlendFunction()V
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/entity/text/Text;->mFont:Lorg/anddev/andengine/opengl/font/Font;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/font/Font;->getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;

    move-result-object v0

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/ITexture;->getTextureOptions()Lorg/anddev/andengine/opengl/texture/TextureOptions;

    move-result-object v0

    iget-boolean v0, v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->mPreMultipyAlpha:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/entity/text/Text;->setBlendFunction(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected drawVertices(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    iget v2, p0, Lorg/anddev/andengine/entity/text/Text;->mVertexCount:I

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->finalize()V

    iget-object v0, p0, Lorg/anddev/andengine/entity/text/Text;->mTextTextureBuffer:Lorg/anddev/andengine/opengl/texture/buffer/TextTextureBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/buffer/TextTextureBuffer;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/entity/text/Text;->mTextTextureBuffer:Lorg/anddev/andengine/opengl/texture/buffer/TextTextureBuffer;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/buffer/TextTextureBuffer;->unloadFromActiveBufferObjectManager()V

    :cond_0
    return-void
.end method

.method public getCharactersMaximum()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/text/Text;->mCharactersMaximum:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/text/Text;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/TextVertexBuffer;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/text/Text;->mVertexBuffer:Lorg/anddev/andengine/opengl/vertex/VertexBuffer;

    check-cast v0, Lorg/anddev/andengine/opengl/vertex/TextVertexBuffer;

    return-object v0
.end method

.method public bridge synthetic getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/VertexBuffer;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/text/Text;->getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/TextVertexBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected onApplyTransformations(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/shape/RectangularShape;->onApplyTransformations(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/text/Text;->applyTexture(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method protected onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/shape/RectangularShape;->onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableTexCoordArray(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method protected onUpdateVertexBuffer()V
    .locals 5

    iget-object v0, p0, Lorg/anddev/andengine/entity/text/Text;->mFont:Lorg/anddev/andengine/opengl/font/Font;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/text/Text;->getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/TextVertexBuffer;

    move-result-object v1

    iget v2, p0, Lorg/anddev/andengine/entity/text/Text;->mMaximumLineWidth:I

    iget-object v3, p0, Lorg/anddev/andengine/entity/text/Text;->mWidths:[I

    iget-object v4, p0, Lorg/anddev/andengine/entity/text/Text;->mLines:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v3, v4}, Lorg/anddev/andengine/opengl/vertex/TextVertexBuffer;->update(Lorg/anddev/andengine/opengl/font/Font;I[I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected updateText(Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    const/high16 v7, 0x3f00

    iput-object p1, p0, Lorg/anddev/andengine/entity/text/Text;->mText:Ljava/lang/String;

    iget-object v2, p0, Lorg/anddev/andengine/entity/text/Text;->mFont:Lorg/anddev/andengine/opengl/font/Font;

    iget-object v0, p0, Lorg/anddev/andengine/entity/text/Text;->mText:Ljava/lang/String;

    const/16 v3, 0xa

    iget-object v4, p0, Lorg/anddev/andengine/entity/text/Text;->mLines:[Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lorg/anddev/andengine/util/StringUtils;->split(Ljava/lang/String;C[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/entity/text/Text;->mLines:[Ljava/lang/String;

    iget-object v3, p0, Lorg/anddev/andengine/entity/text/Text;->mLines:[Ljava/lang/String;

    array-length v4, v3

    iget-object v0, p0, Lorg/anddev/andengine/entity/text/Text;->mWidths:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/anddev/andengine/entity/text/Text;->mWidths:[I

    array-length v0, v0

    if-ne v0, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    new-array v0, v4, [I

    iput-object v0, p0, Lorg/anddev/andengine/entity/text/Text;->mWidths:[I

    :cond_0
    iget-object v5, p0, Lorg/anddev/andengine/entity/text/Text;->mWidths:[I

    add-int/lit8 v0, v4, -0x1

    :goto_1
    if-gez v0, :cond_2

    iput v1, p0, Lorg/anddev/andengine/entity/text/Text;->mMaximumLineWidth:I

    iget v0, p0, Lorg/anddev/andengine/entity/text/Text;->mMaximumLineWidth:I

    int-to-float v0, v0

    iput v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mWidth:F

    iget v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mWidth:F

    iput v0, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mBaseWidth:F

    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/font/Font;->getLineHeight()I

    move-result v1

    mul-int/2addr v1, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/font/Font;->getLineGap()I

    move-result v5

    mul-int/2addr v4, v5

    add-int/2addr v1, v4

    int-to-float v1, v1

    iput v1, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mHeight:F

    iget v1, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mHeight:F

    iput v1, p0, Lorg/anddev/andengine/entity/shape/RectangularShape;->mBaseHeight:F

    mul-float/2addr v0, v7

    iput v0, p0, Lorg/anddev/andengine/entity/text/Text;->mRotationCenterX:F

    mul-float v0, v1, v7

    iput v0, p0, Lorg/anddev/andengine/entity/text/Text;->mRotationCenterY:F

    iget v0, p0, Lorg/anddev/andengine/entity/text/Text;->mRotationCenterX:F

    iput v0, p0, Lorg/anddev/andengine/entity/text/Text;->mScaleCenterX:F

    iget v0, p0, Lorg/anddev/andengine/entity/text/Text;->mRotationCenterY:F

    iput v0, p0, Lorg/anddev/andengine/entity/text/Text;->mScaleCenterY:F

    iget-object v0, p0, Lorg/anddev/andengine/entity/text/Text;->mTextTextureBuffer:Lorg/anddev/andengine/opengl/texture/buffer/TextTextureBuffer;

    invoke-virtual {v0, v2, v3}, Lorg/anddev/andengine/opengl/texture/buffer/TextTextureBuffer;->update(Lorg/anddev/andengine/opengl/font/Font;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/text/Text;->updateVertexBuffer()V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    aget-object v6, v3, v0

    invoke-virtual {v2, v6}, Lorg/anddev/andengine/opengl/font/Font;->getStringWidth(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v0

    aget v6, v5, v0

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method
