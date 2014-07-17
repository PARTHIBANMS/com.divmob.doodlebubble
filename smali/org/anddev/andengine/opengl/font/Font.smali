.class public Lorg/anddev/andengine/opengl/font/Font;
.super Ljava/lang/Object;


# static fields
.field protected static final LETTER_EXTRA_WIDTH:I = 0xa

.field protected static final LETTER_LEFT_OFFSET:F = 0.0f

.field protected static final PADDING:I = 0x1


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field protected final mCanvas:Landroid/graphics/Canvas;

.field private final mCreateLetterTemporarySize:Lorg/anddev/andengine/opengl/font/Size;

.field private mCurrentTextureX:I

.field private mCurrentTextureY:I

.field protected final mFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private final mGetLetterBitmapTemporaryRect:Landroid/graphics/Rect;

.field private final mGetLetterBoundsTemporaryRect:Landroid/graphics/Rect;

.field private final mGetStringWidthTemporaryRect:Landroid/graphics/Rect;

.field private final mLettersPendingToBeDrawnToTexture:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/opengl/font/Letter;",
            ">;"
        }
    .end annotation
.end field

.field private final mLineGap:I

.field private final mLineHeight:I

.field private final mManagedCharacterToLetterMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/anddev/andengine/opengl/font/Letter;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPaint:Landroid/graphics/Paint;

.field private final mTemporaryTextWidthFetchers:[F

.field private final mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

.field private final mTextureHeight:F

.field private final mTextureWidth:F


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/graphics/Typeface;FZI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureX:I

    iput v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureY:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mManagedCharacterToLetterMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mLettersPendingToBeDrawnToTexture:Ljava/util/ArrayList;

    new-instance v0, Lorg/anddev/andengine/opengl/font/Size;

    invoke-direct {v0}, Lorg/anddev/andengine/opengl/font/Size;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mCreateLetterTemporarySize:Lorg/anddev/andengine/opengl/font/Size;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mGetLetterBitmapTemporaryRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mGetStringWidthTemporaryRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mGetLetterBoundsTemporaryRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mTemporaryTextWidthFetchers:[F

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mCanvas:Landroid/graphics/Canvas;

    iput-object p1, p0, Lorg/anddev/andengine/opengl/font/Font;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/ITexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mTextureWidth:F

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/ITexture;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mTextureHeight:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mBackgroundPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mLineHeight:I

    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->leading:F

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mLineGap:I

    return-void
.end method

.method private createLetter(C)Lorg/anddev/andengine/opengl/font/Letter;
    .locals 10

    iget v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mTextureWidth:F

    iget v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mTextureHeight:F

    iget-object v2, p0, Lorg/anddev/andengine/opengl/font/Font;->mCreateLetterTemporarySize:Lorg/anddev/andengine/opengl/font/Size;

    invoke-direct {p0, p1, v2}, Lorg/anddev/andengine/opengl/font/Font;->getLetterBounds(CLorg/anddev/andengine/opengl/font/Size;)V

    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/font/Size;->getWidth()F

    move-result v9

    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/font/Size;->getHeight()F

    move-result v4

    iget v2, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureX:I

    int-to-float v2, v2

    add-float/2addr v2, v9

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureX:I

    iget v2, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureY:I

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/font/Font;->getLineGap()I

    move-result v3

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/font/Font;->getLineHeight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v2, v3

    iput v2, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureY:I

    :cond_0
    iget v2, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureX:I

    int-to-float v2, v2

    div-float v5, v2, v0

    iget v2, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureY:I

    int-to-float v2, v2

    div-float v6, v2, v1

    div-float v7, v9, v0

    div-float v8, v4, v1

    new-instance v0, Lorg/anddev/andengine/opengl/font/Letter;

    invoke-direct {p0, p1}, Lorg/anddev/andengine/opengl/font/Font;->getLetterAdvance(C)I

    move-result v2

    float-to-int v3, v9

    float-to-int v4, v4

    move v1, p1

    invoke-direct/range {v0 .. v8}, Lorg/anddev/andengine/opengl/font/Letter;-><init>(CIIIFFFF)V

    iget v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureX:I

    int-to-float v1, v1

    add-float/2addr v1, v9

    float-to-int v1, v1

    iput v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mCurrentTextureX:I

    return-object v0
.end method

.method private getLetterAdvance(C)I
    .locals 3

    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/anddev/andengine/opengl/font/Font;->mTemporaryTextWidthFetchers:[F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mTemporaryTextWidthFetchers:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private getLetterBitmap(C)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mGetLetterBitmapTemporaryRect:Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lorg/anddev/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v6, v3, v4, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/font/Font;->getLineHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x3

    :goto_0
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    iget-object v5, p0, Lorg/anddev/andengine/opengl/font/Font;->mBackgroundPaint:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0, v6}, Lorg/anddev/andengine/opengl/font/Font;->drawCharacterString(Ljava/lang/String;)V

    return-object v7

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method private getLetterBounds(CLorg/anddev/andengine/opengl/font/Size;)V
    .locals 5

    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/anddev/andengine/opengl/font/Font;->mGetLetterBoundsTemporaryRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mGetLetterBoundsTemporaryRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/font/Font;->getLineHeight()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/anddev/andengine/opengl/font/Size;->set(II)V

    return-void
.end method


# virtual methods
.method protected drawCharacterString(Ljava/lang/String;)V
    .locals 4

    const/high16 v3, 0x3f80

    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    add-float/2addr v1, v3

    iget-object v2, p0, Lorg/anddev/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public declared-synchronized getLetter(C)Lorg/anddev/andengine/opengl/font/Letter;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/anddev/andengine/opengl/font/Font;->mManagedCharacterToLetterMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/font/Letter;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/opengl/font/Font;->createLetter(C)Lorg/anddev/andengine/opengl/font/Letter;

    move-result-object v0

    iget-object v2, p0, Lorg/anddev/andengine/opengl/font/Font;->mLettersPendingToBeDrawnToTexture:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLineGap()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mLineGap:I

    return v0
.end method

.method public getLineHeight()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mLineHeight:I

    return v0
.end method

.method public getStringWidth(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lorg/anddev/andengine/opengl/font/Font;->mGetStringWidthTemporaryRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mGetStringWidthTemporaryRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getTexture()Lorg/anddev/andengine/opengl/texture/ITexture;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    return-object v0
.end method

.method public varargs prepareLetters([C)V
    .locals 3

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    aget-char v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/anddev/andengine/opengl/font/Font;->getLetter(C)Lorg/anddev/andengine/opengl/font/Letter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized reload()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/anddev/andengine/opengl/font/Font;->mLettersPendingToBeDrawnToTexture:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/anddev/andengine/opengl/font/Font;->mManagedCharacterToLetterMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/font/Letter;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/anddev/andengine/opengl/font/Font;->mLettersPendingToBeDrawnToTexture:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/opengl/font/Font;->mTexture:Lorg/anddev/andengine/opengl/texture/ITexture;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/opengl/texture/ITexture;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    iget v3, p0, Lorg/anddev/andengine/opengl/font/Font;->mTextureWidth:F

    iget v4, p0, Lorg/anddev/andengine/opengl/font/Font;->mTextureHeight:F

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/font/Letter;

    iget-char v5, v0, Lorg/anddev/andengine/opengl/font/Letter;->mCharacter:C

    invoke-direct {p0, v5}, Lorg/anddev/andengine/opengl/font/Font;->getLetterBitmap(C)Landroid/graphics/Bitmap;

    move-result-object v5

    const/16 v6, 0xde1

    const/4 v7, 0x0

    iget v8, v0, Lorg/anddev/andengine/opengl/font/Letter;->mTextureX:F

    mul-float/2addr v8, v3

    float-to-int v8, v8

    iget v0, v0, Lorg/anddev/andengine/opengl/font/Letter;->mTextureY:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-static {v6, v7, v8, v0, v5}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
