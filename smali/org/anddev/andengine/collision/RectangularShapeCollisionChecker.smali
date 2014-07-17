.class public Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;
.super Lorg/anddev/andengine/collision/ShapeCollisionChecker;


# static fields
.field private static final LINE_VERTEX_COUNT:I = 0x2

.field private static final RECTANGULARSHAPE_VERTEX_COUNT:I = 0x4

.field private static final VERTICES_COLLISION_TMP_A:[F

.field private static final VERTICES_COLLISION_TMP_B:[F

.field private static final VERTICES_CONTAINS_TMP:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x8

    new-array v0, v1, [F

    sput-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    new-array v0, v1, [F

    sput-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    new-array v0, v1, [F

    sput-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/collision/ShapeCollisionChecker;-><init>()V

    return-void
.end method

.method public static checkCollision(Lorg/anddev/andengine/entity/shape/RectangularShape;Lorg/anddev/andengine/entity/primitive/Line;)Z
    .locals 4

    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    invoke-static {p0, v0}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->fillVertices(Lorg/anddev/andengine/entity/shape/RectangularShape;[F)V

    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {p1, v0}, Lorg/anddev/andengine/collision/LineCollisionChecker;->fillVertices(Lorg/anddev/andengine/entity/primitive/Line;[F)V

    const/16 v0, 0x8

    sget-object v1, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    const/4 v2, 0x4

    sget-object v3, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {v0, v1, v2, v3}, Lorg/anddev/andengine/collision/ShapeCollisionChecker;->checkCollision(I[FI[F)Z

    move-result v0

    return v0
.end method

.method public static checkCollision(Lorg/anddev/andengine/entity/shape/RectangularShape;Lorg/anddev/andengine/entity/shape/RectangularShape;)Z
    .locals 3

    const/16 v2, 0x8

    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    invoke-static {p0, v0}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->fillVertices(Lorg/anddev/andengine/entity/shape/RectangularShape;[F)V

    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {p1, v0}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->fillVertices(Lorg/anddev/andengine/entity/shape/RectangularShape;[F)V

    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    sget-object v1, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {v2, v0, v2, v1}, Lorg/anddev/andengine/collision/ShapeCollisionChecker;->checkCollision(I[FI[F)Z

    move-result v0

    return v0
.end method

.method public static checkContains(Lorg/anddev/andengine/entity/shape/RectangularShape;FF)Z
    .locals 2

    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    invoke-static {p0, v0}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->fillVertices(Lorg/anddev/andengine/entity/shape/RectangularShape;[F)V

    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    const/16 v1, 0x8

    invoke-static {v0, v1, p1, p2}, Lorg/anddev/andengine/collision/ShapeCollisionChecker;->checkContains([FIFF)Z

    move-result v0

    return v0
.end method

.method private static fillVertices(Lorg/anddev/andengine/engine/camera/Camera;[F)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMinX()F

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMinY()F

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMaxX()F

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMinY()F

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMaxX()F

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMaxY()F

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x6

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMinX()F

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x7

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getMaxY()F

    move-result v1

    aput v1, p1, v0

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getRotation()F

    move-result v0

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterX()F

    move-result v1

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/camera/Camera;->getCenterY()F

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lorg/anddev/andengine/util/MathUtils;->rotateAroundCenter([FFFF)[F

    return-void
.end method

.method public static fillVertices(Lorg/anddev/andengine/entity/shape/RectangularShape;[F)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->getWidth()F

    move-result v0

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->getHeight()F

    move-result v1

    const/4 v2, 0x0

    aput v3, p1, v2

    const/4 v2, 0x1

    aput v3, p1, v2

    const/4 v2, 0x2

    aput v0, p1, v2

    const/4 v2, 0x3

    aput v3, p1, v2

    const/4 v2, 0x4

    aput v0, p1, v2

    const/4 v0, 0x5

    aput v1, p1, v0

    const/4 v0, 0x6

    aput v3, p1, v0

    const/4 v0, 0x7

    aput v1, p1, v0

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/shape/RectangularShape;->getLocalToSceneTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/Transformation;->transform([F)V

    return-void
.end method

.method public static isVisible(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/primitive/Line;)Z
    .locals 4

    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    invoke-static {p0, v0}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->fillVertices(Lorg/anddev/andengine/engine/camera/Camera;[F)V

    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {p1, v0}, Lorg/anddev/andengine/collision/LineCollisionChecker;->fillVertices(Lorg/anddev/andengine/entity/primitive/Line;[F)V

    const/16 v0, 0x8

    sget-object v1, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    const/4 v2, 0x4

    sget-object v3, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {v0, v1, v2, v3}, Lorg/anddev/andengine/collision/ShapeCollisionChecker;->checkCollision(I[FI[F)Z

    move-result v0

    return v0
.end method

.method public static isVisible(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/shape/RectangularShape;)Z
    .locals 3

    const/16 v2, 0x8

    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    invoke-static {p0, v0}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->fillVertices(Lorg/anddev/andengine/engine/camera/Camera;[F)V

    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {p1, v0}, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->fillVertices(Lorg/anddev/andengine/entity/shape/RectangularShape;[F)V

    sget-object v0, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    sget-object v1, Lorg/anddev/andengine/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {v2, v0, v2, v1}, Lorg/anddev/andengine/collision/ShapeCollisionChecker;->checkCollision(I[FI[F)Z

    move-result v0

    return v0
.end method
