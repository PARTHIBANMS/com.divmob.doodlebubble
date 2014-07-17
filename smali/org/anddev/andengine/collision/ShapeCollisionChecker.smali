.class public Lorg/anddev/andengine/collision/ShapeCollisionChecker;
.super Lorg/anddev/andengine/collision/BaseCollisionChecker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/collision/BaseCollisionChecker;-><init>()V

    return-void
.end method

.method public static checkCollision(I[FI[F)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    add-int/lit8 v2, p0, -0x4

    :goto_0
    if-gez v2, :cond_1

    add-int/lit8 v2, p0, -0x2

    invoke-static {v2, v1, p1, p3, p2}, Lorg/anddev/andengine/collision/ShapeCollisionChecker;->checkCollisionSub(II[F[FI)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v3, v2, 0x2

    invoke-static {v2, v3, p1, p3, p2}, Lorg/anddev/andengine/collision/ShapeCollisionChecker;->checkCollisionSub(II[F[FI)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    :cond_2
    aget v2, p3, v1

    aget v3, p3, v0

    invoke-static {p1, p0, v2, v3}, Lorg/anddev/andengine/collision/ShapeCollisionChecker;->checkContains([FIFF)Z

    move-result v2

    if-nez v2, :cond_0

    aget v2, p1, v1

    aget v3, p1, v0

    invoke-static {p3, p2, v2, v3}, Lorg/anddev/andengine/collision/ShapeCollisionChecker;->checkContains([FIFF)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method private static checkCollisionSub(II[F[FI)Z
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x1

    add-int/lit8 v0, p0, 0x0

    aget v0, p2, v0

    add-int/lit8 v1, p0, 0x1

    aget v1, p2, v1

    add-int/lit8 v2, p1, 0x0

    aget v2, p2, v2

    add-int/lit8 v3, p1, 0x1

    aget v3, p2, v3

    add-int/lit8 v4, p4, -0x4

    move v10, v4

    :goto_0
    if-gez v10, :cond_0

    add-int/lit8 v4, p4, -0x2

    aget v4, p3, v4

    add-int/lit8 v5, p4, -0x1

    aget v5, p3, v5

    aget v6, p3, v9

    aget v7, p3, v8

    invoke-static/range {v0 .. v7}, Lorg/anddev/andengine/collision/LineCollisionChecker;->checkLineCollision(FFFFFFFF)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v8

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v4, v10, 0x0

    aget v4, p3, v4

    add-int/lit8 v5, v10, 0x1

    aget v5, p3, v5

    add-int/lit8 v6, v10, 0x2

    add-int/lit8 v6, v6, 0x0

    aget v6, p3, v6

    add-int/lit8 v7, v10, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v7, p3, v7

    invoke-static/range {v0 .. v7}, Lorg/anddev/andengine/collision/LineCollisionChecker;->checkLineCollision(FFFFFFFF)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v8

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v10, -0x2

    move v10, v4

    goto :goto_0

    :cond_2
    move v0, v9

    goto :goto_1
.end method

.method public static checkContains([FIFF)Z
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    add-int/lit8 v0, p1, -0x4

    move v8, v0

    move v9, v7

    :goto_0
    if-gez v8, :cond_0

    add-int/lit8 v0, p1, -0x2

    aget v0, p0, v0

    add-int/lit8 v1, p1, -0x1

    aget v1, p0, v1

    aget v2, p0, v7

    aget v3, p0, v6

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/anddev/andengine/collision/BaseCollisionChecker;->relativeCCW(FFFFFF)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v6

    :goto_1
    return v0

    :cond_0
    aget v0, p0, v8

    add-int/lit8 v1, v8, 0x1

    aget v1, p0, v1

    add-int/lit8 v2, v8, 0x2

    aget v2, p0, v2

    add-int/lit8 v3, v8, 0x3

    aget v3, p0, v3

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/anddev/andengine/collision/BaseCollisionChecker;->relativeCCW(FFFFFF)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    goto :goto_1

    :cond_1
    add-int v1, v9, v0

    add-int/lit8 v0, v8, -0x2

    move v8, v0

    move v9, v1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v9

    div-int/lit8 v1, p1, 0x2

    if-eq v0, v1, :cond_3

    neg-int v1, v1

    if-eq v0, v1, :cond_3

    move v0, v7

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_1
.end method
