.class public Lorg/anddev/andengine/util/path/Path;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/util/path/Path$Step;
    }
.end annotation


# instance fields
.field private final mSteps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/util/path/Path$Step;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/util/path/Path;->mSteps:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public append(II)V
    .locals 1

    new-instance v0, Lorg/anddev/andengine/util/path/Path$Step;

    invoke-direct {v0, p0, p1, p2}, Lorg/anddev/andengine/util/path/Path$Step;-><init>(Lorg/anddev/andengine/util/path/Path;II)V

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/path/Path;->append(Lorg/anddev/andengine/util/path/Path$Step;)V

    return-void
.end method

.method public append(Lorg/anddev/andengine/util/path/Path$Step;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/util/path/Path;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public contains(II)Z
    .locals 4

    iget-object v2, p0, Lorg/anddev/andengine/util/path/Path;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/util/path/Path$Step;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/path/Path$Step;->getTileColumn()I

    move-result v3

    if-ne v3, p1, :cond_1

    invoke-virtual {v0}, Lorg/anddev/andengine/util/path/Path$Step;->getTileRow()I

    move-result v0

    if-ne v0, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public getDirectionToNextStep(I)Lorg/anddev/andengine/util/path/Direction;
    .locals 3

    invoke-virtual {p0}, Lorg/anddev/andengine/util/path/Path;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/path/Path;->getTileColumn(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/path/Path;->getTileColumn(I)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/util/path/Path;->getTileRow(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/path/Path;->getTileRow(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/anddev/andengine/util/path/Direction;->fromDelta(II)Lorg/anddev/andengine/util/path/Direction;

    move-result-object v0

    goto :goto_0
.end method

.method public getDirectionToPreviousStep(I)Lorg/anddev/andengine/util/path/Direction;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/path/Path;->getTileColumn(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/path/Path;->getTileColumn(I)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/util/path/Path;->getTileRow(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/path/Path;->getTileRow(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/anddev/andengine/util/path/Direction;->fromDelta(II)Lorg/anddev/andengine/util/path/Direction;

    move-result-object v0

    goto :goto_0
.end method

.method public getFromTileColumn()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/path/Path;->getTileColumn(I)I

    move-result v0

    return v0
.end method

.method public getFromTileRow()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/path/Path;->getTileRow(I)I

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/util/path/Path;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getStep(I)Lorg/anddev/andengine/util/path/Path$Step;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/util/path/Path;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/util/path/Path$Step;

    return-object v0
.end method

.method public getTileColumn(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/path/Path;->getStep(I)Lorg/anddev/andengine/util/path/Path$Step;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/util/path/Path$Step;->getTileColumn()I

    move-result v0

    return v0
.end method

.method public getTileRow(I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/path/Path;->getStep(I)Lorg/anddev/andengine/util/path/Path$Step;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/util/path/Path$Step;->getTileRow()I

    move-result v0

    return v0
.end method

.method public getToTileColumn()I
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/util/path/Path;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/path/Path;->getTileColumn(I)I

    move-result v0

    return v0
.end method

.method public getToTileRow()I
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/util/path/Path;->mSteps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/path/Path;->getTileRow(I)I

    move-result v0

    return v0
.end method

.method public prepend(II)V
    .locals 1

    new-instance v0, Lorg/anddev/andengine/util/path/Path$Step;

    invoke-direct {v0, p0, p1, p2}, Lorg/anddev/andengine/util/path/Path$Step;-><init>(Lorg/anddev/andengine/util/path/Path;II)V

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/path/Path;->prepend(Lorg/anddev/andengine/util/path/Path$Step;)V

    return-void
.end method

.method public prepend(Lorg/anddev/andengine/util/path/Path$Step;)V
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/util/path/Path;->mSteps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method
