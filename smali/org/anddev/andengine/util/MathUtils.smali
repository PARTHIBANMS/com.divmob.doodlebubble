.class public Lorg/anddev/andengine/util/MathUtils;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/constants/MathConstants;


# static fields
.field public static RANDOM:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lorg/anddev/andengine/util/MathUtils;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final arrayAverage([F)F
    .locals 2

    invoke-static {p0}, Lorg/anddev/andengine/util/MathUtils;->arraySum([F)F

    move-result v0

    array-length v1, p0

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static final arraySum([F)F
    .locals 4

    const/4 v1, 0x0

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    aget v3, p0, v0

    add-float/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final arraySumInternal([I)V
    .locals 4

    array-length v1, p0

    const/4 v0, 0x1

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v0, -0x1

    aget v2, p0, v2

    aget v3, p0, v0

    add-int/2addr v2, v3

    aput v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final arraySumInternal([J)V
    .locals 6

    array-length v1, p0

    const/4 v0, 0x1

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v0, -0x1

    aget-wide v2, p0, v2

    aget-wide v4, p0, v0

    add-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final arraySumInternal([JJ)V
    .locals 6

    const/4 v2, 0x0

    aget-wide v0, p0, v2

    mul-long/2addr v0, p1

    aput-wide v0, p0, v2

    array-length v1, p0

    const/4 v0, 0x1

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v0, -0x1

    aget-wide v2, p0, v2

    aget-wide v4, p0, v0

    mul-long/2addr v4, p1

    add-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static final arraySumInto([J[JJ)V
    .locals 6

    const/4 v2, 0x0

    aget-wide v0, p0, v2

    mul-long/2addr v0, p2

    aput-wide v0, p1, v2

    array-length v1, p0

    const/4 v0, 0x1

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v0, -0x1

    aget-wide v2, p1, v2

    aget-wide v4, p0, v0

    mul-long/2addr v4, p2

    add-long/2addr v2, v4

    aput-wide v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static atan2(FF)F
    .locals 4

    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static bringToBounds(FFF)F
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static bringToBounds(III)I
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static final degToRad(F)F
    .locals 1

    const v0, 0x3c8efa35

    mul-float/2addr v0, p0

    return v0
.end method

.method public static distance(FFFF)F
    .locals 2

    sub-float v0, p2, p0

    sub-float v1, p3, p1

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public static final isPowerOfTwo(I)Z
    .locals 1

    if-eqz p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final nextPowerOfTwo(F)I
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Lorg/anddev/andengine/util/MathUtils;->nextPowerOfTwo(I)I

    move-result v0

    return v0
.end method

.method public static final nextPowerOfTwo(I)I
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v1, p0, -0x1

    :goto_1
    const/16 v2, 0x20

    if-lt v0, v2, :cond_1

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_1
    shr-int v2, v1, v0

    or-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static final radToDeg(F)F
    .locals 1

    const v0, 0x42652ee0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static final random(FF)F
    .locals 2

    sget-object v0, Lorg/anddev/andengine/util/MathUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    return v0
.end method

.method public static final random(II)I
    .locals 2

    sget-object v0, Lorg/anddev/andengine/util/MathUtils;->RANDOM:Ljava/util/Random;

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static final randomSign()I
    .locals 1

    sget-object v0, Lorg/anddev/andengine/util/MathUtils;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static revertRotateAndScaleAroundCenter([FFFFFFFF)[F
    .locals 1

    invoke-static {p0, p4, p5, p6, p7}, Lorg/anddev/andengine/util/MathUtils;->revertScaleAroundCenter([FFFFF)[F

    invoke-static {p0, p1, p2, p3}, Lorg/anddev/andengine/util/MathUtils;->revertRotateAroundCenter([FFFF)[F

    move-result-object v0

    return-object v0
.end method

.method public static revertRotateAroundCenter([FFFF)[F
    .locals 1

    neg-float v0, p1

    invoke-static {p0, v0, p2, p3}, Lorg/anddev/andengine/util/MathUtils;->rotateAroundCenter([FFFF)[F

    move-result-object v0

    return-object v0
.end method

.method public static revertScaleAroundCenter([FFFFF)[F
    .locals 2

    const/high16 v1, 0x3f80

    div-float v0, v1, p1

    div-float/2addr v1, p2

    invoke-static {p0, v0, v1, p3, p4}, Lorg/anddev/andengine/util/MathUtils;->scaleAroundCenter([FFFFF)[F

    move-result-object v0

    return-object v0
.end method

.method public static rotateAndScaleAroundCenter([FFFFFFFF)[F
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lorg/anddev/andengine/util/MathUtils;->rotateAroundCenter([FFFF)[F

    invoke-static {p0, p4, p5, p6, p7}, Lorg/anddev/andengine/util/MathUtils;->scaleAroundCenter([FFFFF)[F

    move-result-object v0

    return-object v0
.end method

.method public static rotateAroundCenter([FFFF)[F
    .locals 7

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/anddev/andengine/util/MathUtils;->degToRad(F)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v1

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-gez v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    aget v3, p0, v0

    add-int/lit8 v4, v0, 0x1

    aget v4, p0, v4

    sub-float v5, v3, p2

    mul-float/2addr v5, v2

    sub-float v6, v4, p3

    mul-float/2addr v6, v1

    sub-float/2addr v5, v6

    add-float/2addr v5, p2

    aput v5, p0, v0

    add-int/lit8 v5, v0, 0x1

    sub-float/2addr v3, p2

    mul-float/2addr v3, v1

    sub-float/2addr v4, p3

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    add-float/2addr v3, p3

    aput v3, p0, v5

    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public static scaleAroundCenter([FFFFF)[F
    .locals 3

    const/high16 v1, 0x3f80

    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_1

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-gez v0, :cond_2

    :cond_1
    return-object p0

    :cond_2
    aget v1, p0, v0

    sub-float/2addr v1, p3

    mul-float/2addr v1, p1

    add-float/2addr v1, p3

    aput v1, p0, v0

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    aget v2, p0, v2

    sub-float/2addr v2, p4

    mul-float/2addr v2, p2

    add-float/2addr v2, p4

    aput v2, p0, v1

    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public static final sum([I)I
    .locals 3

    const/4 v1, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return v1

    :cond_0
    aget v2, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
