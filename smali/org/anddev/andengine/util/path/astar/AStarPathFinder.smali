.class public Lorg/anddev/andengine/util/path/astar/AStarPathFinder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/path/IPathFinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/anddev/andengine/util/path/IPathFinder",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mAStarHeuristic:Lorg/anddev/andengine/util/path/astar/IAStarHeuristic;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/path/astar/IAStarHeuristic",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mAllowDiagonalMovement:Z

.field private final mMaxSearchDepth:I

.field private final mNodes:[[Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

.field private final mOpenNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiledMap:Lorg/anddev/andengine/util/path/ITiledMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/path/ITiledMap",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mVisitedNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/util/path/ITiledMap;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/path/ITiledMap",
            "<TT;>;IZ)V"
        }
    .end annotation

    new-instance v0, Lorg/anddev/andengine/util/path/astar/EuclideanHeuristic;

    invoke-direct {v0}, Lorg/anddev/andengine/util/path/astar/EuclideanHeuristic;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;-><init>(Lorg/anddev/andengine/util/path/ITiledMap;IZLorg/anddev/andengine/util/path/astar/IAStarHeuristic;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/util/path/ITiledMap;IZLorg/anddev/andengine/util/path/astar/IAStarHeuristic;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/path/ITiledMap",
            "<TT;>;IZ",
            "Lorg/anddev/andengine/util/path/astar/IAStarHeuristic",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mVisitedNodes:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mOpenNodes:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mAStarHeuristic:Lorg/anddev/andengine/util/path/astar/IAStarHeuristic;

    iput-object p1, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mTiledMap:Lorg/anddev/andengine/util/path/ITiledMap;

    iput p2, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mMaxSearchDepth:I

    iput-boolean p3, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mAllowDiagonalMovement:Z

    invoke-interface {p1}, Lorg/anddev/andengine/util/path/ITiledMap;->getTileRows()I

    move-result v0

    invoke-interface {p1}, Lorg/anddev/andengine/util/path/ITiledMap;->getTileColumns()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    iput-object v0, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mNodes:[[Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    iget-object v2, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mNodes:[[Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    invoke-interface {p1}, Lorg/anddev/andengine/util/path/ITiledMap;->getTileColumns()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lorg/anddev/andengine/util/path/ITiledMap;->getTileRows()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-gez v0, :cond_1

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    aget-object v3, v2, v0

    new-instance v4, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    invoke-direct {v4, v1, v0}, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;-><init>(II)V

    aput-object v4, v3, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public findPath(Ljava/lang/Object;IIIII)Lorg/anddev/andengine/util/path/Path;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIIII)",
            "Lorg/anddev/andengine/util/path/Path;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mTiledMap:Lorg/anddev/andengine/util/path/ITiledMap;

    move-object/from16 v0, p1

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-interface {v15, v0, v1, v2}, Lorg/anddev/andengine/util/path/ITiledMap;->isTileBlocked(Ljava/lang/Object;II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mOpenNodes:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mVisitedNodes:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mNodes:[[Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    move-object/from16 v18, v0

    aget-object v3, v18, p4

    aget-object v19, v3, p3

    aget-object v3, v18, p6

    aget-object v20, v3, p5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mAStarHeuristic:Lorg/anddev/andengine/util/path/astar/IAStarHeuristic;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mAllowDiagonalMovement:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mMaxSearchDepth:I

    move/from16 v23, v0

    const/4 v3, 0x0

    move-object/from16 v0, v19

    iput v3, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mCost:F

    const/4 v3, 0x0

    move-object/from16 v0, v19

    iput v3, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mDepth:I

    const/4 v3, 0x0

    move-object/from16 v0, v20

    iput-object v3, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mParent:Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    :cond_1
    move/from16 v0, v23

    if-ge v12, v0, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move-object/from16 v0, v20

    iget-object v3, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mParent:Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    if-nez v3, :cond_9

    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    move-object/from16 v0, v20

    if-eq v11, v0, :cond_2

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, -0x1

    move v14, v3

    :goto_1
    const/4 v3, 0x1

    if-gt v14, v3, :cond_1

    const/4 v3, -0x1

    move v13, v3

    :goto_2
    const/4 v3, 0x1

    if-le v13, v3, :cond_4

    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto :goto_1

    :cond_4
    if-nez v14, :cond_5

    if-nez v13, :cond_5

    move v3, v12

    :goto_3
    add-int/lit8 v4, v13, 0x1

    move v13, v4

    move v12, v3

    goto :goto_2

    :cond_5
    if-nez v22, :cond_6

    if-eqz v14, :cond_6

    if-eqz v13, :cond_6

    move v3, v12

    goto :goto_3

    :cond_6
    iget v3, v11, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mTileColumn:I

    add-int v7, v14, v3

    iget v3, v11, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mTileRow:I

    add-int v8, v13, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v3 .. v8}, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->isTileBlocked(Ljava/lang/Object;IIII)Z

    move-result v3

    if-nez v3, :cond_b

    iget v9, v11, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mCost:F

    iget v5, v11, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mTileColumn:I

    iget v6, v11, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mTileRow:I

    move-object v3, v15

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v8}, Lorg/anddev/andengine/util/path/ITiledMap;->getStepCost(Ljava/lang/Object;IIII)F

    move-result v3

    add-float/2addr v3, v9

    aget-object v4, v18, v8

    aget-object v24, v4, v7

    invoke-interface {v15, v7, v8}, Lorg/anddev/andengine/util/path/ITiledMap;->onTileVisitedByPathFinder(II)V

    move-object/from16 v0, v24

    iget v4, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mCost:F

    cmpg-float v4, v3, v4

    if-gez v4, :cond_8

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_8
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    move-object/from16 v0, v24

    iput v3, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mCost:F

    move-object/from16 v0, v24

    iget v3, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mCost:F

    move/from16 v0, p2

    int-to-float v4, v0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_b

    move-object/from16 v4, v21

    move-object v5, v15

    move-object/from16 v6, p1

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-interface/range {v4 .. v10}, Lorg/anddev/andengine/util/path/astar/IAStarHeuristic;->getExpectedRestCost(Lorg/anddev/andengine/util/path/ITiledMap;Ljava/lang/Object;IIII)F

    move-result v3

    move-object/from16 v0, v24

    iput v3, v0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mExpectedRestCost:F

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->setParent(Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;)I

    move-result v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v16 .. v16}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto/16 :goto_3

    :cond_9
    new-instance v3, Lorg/anddev/andengine/util/path/Path;

    invoke-direct {v3}, Lorg/anddev/andengine/util/path/Path;-><init>()V

    aget-object v4, v18, p6

    aget-object v4, v4, p5

    :goto_4
    move-object/from16 v0, v19

    if-ne v4, v0, :cond_a

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v3, v0, v1}, Lorg/anddev/andengine/util/path/Path;->prepend(II)V

    goto/16 :goto_0

    :cond_a
    iget v5, v4, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mTileColumn:I

    iget v6, v4, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mTileRow:I

    invoke-virtual {v3, v5, v6}, Lorg/anddev/andengine/util/path/Path;->prepend(II)V

    iget-object v4, v4, Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;->mParent:Lorg/anddev/andengine/util/path/astar/AStarPathFinder$Node;

    goto :goto_4

    :cond_b
    move v3, v12

    goto/16 :goto_3
.end method

.method protected isTileBlocked(Ljava/lang/Object;IIII)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ltz p4, :cond_0

    if-ltz p5, :cond_0

    iget-object v1, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mTiledMap:Lorg/anddev/andengine/util/path/ITiledMap;

    invoke-interface {v1}, Lorg/anddev/andengine/util/path/ITiledMap;->getTileColumns()I

    move-result v1

    if-ge p4, v1, :cond_0

    iget-object v1, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mTiledMap:Lorg/anddev/andengine/util/path/ITiledMap;

    invoke-interface {v1}, Lorg/anddev/andengine/util/path/ITiledMap;->getTileRows()I

    move-result v1

    if-lt p5, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p2, p4, :cond_2

    if-eq p3, p5, :cond_0

    :cond_2
    iget-object v0, p0, Lorg/anddev/andengine/util/path/astar/AStarPathFinder;->mTiledMap:Lorg/anddev/andengine/util/path/ITiledMap;

    invoke-interface {v0, p1, p4, p5}, Lorg/anddev/andengine/util/path/ITiledMap;->isTileBlocked(Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_0
.end method
