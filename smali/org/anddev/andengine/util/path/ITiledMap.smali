.class public interface abstract Lorg/anddev/andengine/util/path/ITiledMap;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getStepCost(Ljava/lang/Object;IIII)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;IIII)F"
        }
    .end annotation
.end method

.method public abstract getTileColumns()I
.end method

.method public abstract getTileRows()I
.end method

.method public abstract isTileBlocked(Ljava/lang/Object;II)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation
.end method

.method public abstract onTileVisitedByPathFinder(II)V
.end method
