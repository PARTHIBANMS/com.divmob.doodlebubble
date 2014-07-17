.class public Lorg/anddev/andengine/util/path/astar/ManhattanHeuristic;
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

    sub-int v0, p3, p5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, p5, p6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method
