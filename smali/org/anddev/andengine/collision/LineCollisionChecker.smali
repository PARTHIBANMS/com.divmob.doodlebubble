.class public Lorg/anddev/andengine/collision/LineCollisionChecker;
.super Lorg/anddev/andengine/collision/ShapeCollisionChecker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/collision/ShapeCollisionChecker;-><init>()V

    return-void
.end method

.method public static checkLineCollision(FFFFFFFF)Z
    .locals 7

    invoke-static/range {p0 .. p5}, Lorg/anddev/andengine/collision/BaseCollisionChecker;->relativeCCW(FFFFFF)I

    move-result v6

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p6

    move v5, p7

    invoke-static/range {v0 .. v5}, Lorg/anddev/andengine/collision/BaseCollisionChecker;->relativeCCW(FFFFFF)I

    move-result v0

    mul-int/2addr v0, v6

    if-gtz v0, :cond_0

    move v0, p4

    move v1, p5

    move v2, p6

    move v3, p7

    move v4, p0

    move v5, p1

    invoke-static/range {v0 .. v5}, Lorg/anddev/andengine/collision/BaseCollisionChecker;->relativeCCW(FFFFFF)I

    move-result v6

    move v0, p4

    move v1, p5

    move v2, p6

    move v3, p7

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/anddev/andengine/collision/BaseCollisionChecker;->relativeCCW(FFFFFF)I

    move-result v0

    mul-int/2addr v0, v6

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static fillVertices(Lorg/anddev/andengine/entity/primitive/Line;[F)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    aput v1, p1, v0

    const/4 v0, 0x1

    aput v1, p1, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/primitive/Line;->getX2()F

    move-result v1

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/primitive/Line;->getX1()F

    move-result v2

    sub-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/primitive/Line;->getY2()F

    move-result v1

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/primitive/Line;->getY1()F

    move-result v2

    sub-float/2addr v1, v2

    aput v1, p1, v0

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/primitive/Line;->getLocalToSceneTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/Transformation;->transform([F)V

    return-void
.end method
