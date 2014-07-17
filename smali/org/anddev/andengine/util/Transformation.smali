.class public Lorg/anddev/andengine/util/Transformation;
.super Ljava/lang/Object;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private tx:F

.field private ty:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    iput v1, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    return-void
.end method

.method private postConcat(FFFFFF)V
    .locals 8

    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    iget v1, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    iget v2, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    iget v3, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    iget v4, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    iget v5, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    mul-float v6, v0, p1

    mul-float v7, v1, p3

    add-float/2addr v6, v7

    iput v6, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    mul-float/2addr v0, p2

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    mul-float v0, v2, p1

    mul-float v1, v3, p3

    add-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    mul-float v0, v2, p2

    mul-float v1, v3, p4

    add-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    mul-float v0, v4, p1

    mul-float v1, v5, p3

    add-float/2addr v0, v1

    add-float/2addr v0, p5

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    mul-float v0, v4, p2

    mul-float v1, v5, p4

    add-float/2addr v0, v1

    add-float/2addr v0, p6

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    return-void
.end method

.method private preConcat(FFFFFF)V
    .locals 8

    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    iget v1, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    iget v2, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    iget v3, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    iget v4, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    iget v5, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    mul-float v6, p1, v0

    mul-float v7, p2, v2

    add-float/2addr v6, v7

    iput v6, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    mul-float v6, p1, v1

    mul-float v7, p2, v3

    add-float/2addr v6, v7

    iput v6, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    mul-float v6, p3, v0

    mul-float v7, p4, v2

    add-float/2addr v6, v7

    iput v6, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    mul-float v6, p3, v1

    mul-float v7, p4, v3

    add-float/2addr v6, v7

    iput v6, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    mul-float/2addr v0, p5

    mul-float/2addr v2, p6

    add-float/2addr v0, v2

    add-float/2addr v0, v4

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    mul-float v0, p5, v1

    mul-float v1, p6, v3

    add-float/2addr v0, v1

    add-float/2addr v0, v5

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    return-void
.end method


# virtual methods
.method public postConcat(Lorg/anddev/andengine/util/Transformation;)V
    .locals 7

    iget v1, p1, Lorg/anddev/andengine/util/Transformation;->a:F

    iget v2, p1, Lorg/anddev/andengine/util/Transformation;->b:F

    iget v3, p1, Lorg/anddev/andengine/util/Transformation;->c:F

    iget v4, p1, Lorg/anddev/andengine/util/Transformation;->d:F

    iget v5, p1, Lorg/anddev/andengine/util/Transformation;->tx:F

    iget v6, p1, Lorg/anddev/andengine/util/Transformation;->ty:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/util/Transformation;->postConcat(FFFFFF)V

    return-void
.end method

.method public postRotate(F)V
    .locals 10

    invoke-static {p1}, Lorg/anddev/andengine/util/MathUtils;->degToRad(F)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    iget v2, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    iget v3, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    iget v4, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    iget v5, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    iget v6, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    iget v7, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    mul-float v8, v2, v0

    mul-float v9, v3, v1

    sub-float/2addr v8, v9

    iput v8, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    mul-float/2addr v2, v1

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iput v2, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    mul-float v2, v4, v0

    mul-float v3, v5, v1

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    mul-float v2, v4, v1

    mul-float v3, v5, v0

    add-float/2addr v2, v3

    iput v2, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    mul-float v2, v6, v0

    mul-float v3, v7, v1

    sub-float/2addr v2, v3

    iput v2, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    mul-float/2addr v1, v6

    mul-float/2addr v0, v7

    add-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    return-void
.end method

.method public postScale(FF)V
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    mul-float/2addr v0, p2

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    mul-float/2addr v0, p2

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    mul-float/2addr v0, p2

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    return-void
.end method

.method public postTranslate(FF)V
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    add-float/2addr v0, p2

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    return-void
.end method

.method public preConcat(Lorg/anddev/andengine/util/Transformation;)V
    .locals 7

    iget v1, p1, Lorg/anddev/andengine/util/Transformation;->a:F

    iget v2, p1, Lorg/anddev/andengine/util/Transformation;->b:F

    iget v3, p1, Lorg/anddev/andengine/util/Transformation;->c:F

    iget v4, p1, Lorg/anddev/andengine/util/Transformation;->d:F

    iget v5, p1, Lorg/anddev/andengine/util/Transformation;->tx:F

    iget v6, p1, Lorg/anddev/andengine/util/Transformation;->ty:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/util/Transformation;->preConcat(FFFFFF)V

    return-void
.end method

.method public preRotate(F)V
    .locals 8

    invoke-static {p1}, Lorg/anddev/andengine/util/MathUtils;->degToRad(F)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    iget v2, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    iget v3, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    iget v4, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    iget v5, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    mul-float v6, v0, v2

    mul-float v7, v1, v4

    add-float/2addr v6, v7

    iput v6, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    mul-float v6, v0, v3

    mul-float v7, v1, v5

    add-float/2addr v6, v7

    iput v6, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    mul-float/2addr v4, v0

    mul-float/2addr v2, v1

    sub-float v2, v4, v2

    iput v2, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    mul-float/2addr v0, v5

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    return-void
.end method

.method public preScale(FF)V
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    mul-float/2addr v0, p2

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    mul-float/2addr v0, p2

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    return-void
.end method

.method public preTranslate(FF)V
    .locals 3

    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    iget v1, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    mul-float/2addr v1, p1

    iget v2, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    iget v0, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    iget v1, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    mul-float/2addr v1, p1

    iget v2, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    return-void
.end method

.method public reset()V
    .locals 0

    invoke-virtual {p0}, Lorg/anddev/andengine/util/Transformation;->setToIdentity()V

    return-void
.end method

.method public setTo(Lorg/anddev/andengine/util/Transformation;)V
    .locals 1

    iget v0, p1, Lorg/anddev/andengine/util/Transformation;->a:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    iget v0, p1, Lorg/anddev/andengine/util/Transformation;->d:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    iget v0, p1, Lorg/anddev/andengine/util/Transformation;->b:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    iget v0, p1, Lorg/anddev/andengine/util/Transformation;->c:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    iget v0, p1, Lorg/anddev/andengine/util/Transformation;->tx:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    iget v0, p1, Lorg/anddev/andengine/util/Transformation;->ty:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    return-void
.end method

.method public setToIdentity()V
    .locals 2

    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    iput v1, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    iput v1, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    return-void
.end method

.method public setToRotate(F)Lorg/anddev/andengine/util/Transformation;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1}, Lorg/anddev/andengine/util/MathUtils;->degToRad(F)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    iput v1, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    neg-float v1, v1

    iput v1, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    iput v2, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    iput v2, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    return-object p0
.end method

.method public setToScale(FF)Lorg/anddev/andengine/util/Transformation;
    .locals 1

    const/4 v0, 0x0

    iput p1, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    iput p2, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    return-object p0
.end method

.method public setToTranslate(FF)Lorg/anddev/andengine/util/Transformation;
    .locals 2

    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    iput v1, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    iput v0, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    iput v1, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    iput p1, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    iput p2, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Transformation{["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "][0.0, 0.0, 1.0]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform([F)V
    .locals 8

    const/4 v0, 0x0

    array-length v1, p1

    shr-int/lit8 v1, v1, 0x1

    move v2, v1

    move v1, v0

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v3, v1, 0x1

    aget v4, p1, v1

    add-int/lit8 v1, v3, 0x1

    aget v3, p1, v3

    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Lorg/anddev/andengine/util/Transformation;->a:F

    mul-float/2addr v6, v4

    iget v7, p0, Lorg/anddev/andengine/util/Transformation;->c:F

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iget v7, p0, Lorg/anddev/andengine/util/Transformation;->tx:F

    add-float/2addr v6, v7

    aput v6, p1, v0

    add-int/lit8 v0, v5, 0x1

    iget v6, p0, Lorg/anddev/andengine/util/Transformation;->b:F

    mul-float/2addr v4, v6

    iget v6, p0, Lorg/anddev/andengine/util/Transformation;->d:F

    mul-float/2addr v3, v6

    add-float/2addr v3, v4

    iget v4, p0, Lorg/anddev/andengine/util/Transformation;->ty:F

    add-float/2addr v3, v4

    aput v3, p1, v5

    goto :goto_0
.end method
