.class public Lorg/anddev/andengine/util/path/astar/NullHeuristic;
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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/path/ITiledMap",
            "<TT;>;TT;IIII)F"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
