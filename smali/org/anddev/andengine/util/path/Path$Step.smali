.class public Lorg/anddev/andengine/util/path/Path$Step;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/util/path/Path;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Step"
.end annotation


# instance fields
.field private final mTileColumn:I

.field private final mTileRow:I

.field final synthetic this$0:Lorg/anddev/andengine/util/path/Path;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/util/path/Path;II)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/util/path/Path$Step;->this$0:Lorg/anddev/andengine/util/path/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/anddev/andengine/util/path/Path$Step;->mTileColumn:I

    iput p3, p0, Lorg/anddev/andengine/util/path/Path$Step;->mTileRow:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lorg/anddev/andengine/util/path/Path$Step;

    iget v2, p0, Lorg/anddev/andengine/util/path/Path$Step;->mTileColumn:I

    iget v3, p1, Lorg/anddev/andengine/util/path/Path$Step;->mTileColumn:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lorg/anddev/andengine/util/path/Path$Step;->mTileRow:I

    iget v3, p1, Lorg/anddev/andengine/util/path/Path$Step;->mTileRow:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getTileColumn()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/util/path/Path$Step;->mTileColumn:I

    return v0
.end method

.method public getTileRow()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/util/path/Path$Step;->mTileRow:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/util/path/Path$Step;->mTileColumn:I

    iget v1, p0, Lorg/anddev/andengine/util/path/Path$Step;->mTileRow:I

    add-int/lit8 v1, v1, 0x10

    shl-int/2addr v0, v1

    return v0
.end method
