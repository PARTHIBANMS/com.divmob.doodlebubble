.class public Lorg/anddev/andengine/util/path/astar/EuclideanHeuristic;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/path/astar/IAStarHeuristic;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/anddev/andengine/util/path/astar/IAStarHeuristic",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpectedRestCost(Lorg/anddev/andengine/util/path/ITiledMap;Ljava/lang/Object;IIII)F
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/path/ITiledMap",
            "<TT;>;TT;IIII)F"
        }
    .end annotation

    sub-int v0, p5, p3

    int-to-float v0, v0

    sub-int v1, p6, p4

    int-to-float v1, v1

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method
