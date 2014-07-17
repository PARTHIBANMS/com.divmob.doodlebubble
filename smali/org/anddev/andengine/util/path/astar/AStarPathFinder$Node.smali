.class Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/util/path/astar/AStarPathFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;",
        ">;"
    }
.end annotation


# instance fields
.field mCost:F

.field mDepth:I

.field mExpectedRestCost:F

.field mParent:Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

.field final mTileColumn:I

.field final mTileRow:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mTileColumn:I

    iput p2, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mTileRow:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->compareTo(Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;)I
    .locals 3

    iget v0, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mExpectedRestCost:F

    iget v1, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mCost:F

    add-float/2addr v0, v1

    iget v1, p1, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mExpectedRestCost:F

    iget v2, p1, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mCost:F

    add-float/2addr v1, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setParent(Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;)I
    .locals 1

    iget v0, p1, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mDepth:I

    iput-object p1, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mParent:Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    iget v0, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mDepth:I

    return v0
.end method
