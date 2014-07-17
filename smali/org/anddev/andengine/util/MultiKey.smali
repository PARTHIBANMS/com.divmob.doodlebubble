.class public Lorg/anddev/andengine/util/MultiKey;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCachedHashCode:I

.field private final mKeys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/anddev/andengine/util/MultiKey;->mKeys:[Ljava/lang/Object;

    invoke-static {p1}, Lorg/anddev/andengine/util/MultiKey;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/util/MultiKey;->mCachedHashCode:I

    return-void
.end method

.method public static varargs hash([Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    array-length v2, p0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    aget-object v3, p0, v1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v0, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lorg/anddev/andengine/util/MultiKey;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/anddev/andengine/util/MultiKey;

    iget-object v0, p0, Lorg/anddev/andengine/util/MultiKey;->mKeys:[Ljava/lang/Object;

    iget-object v1, p1, Lorg/anddev/andengine/util/MultiKey;->mKeys:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKey(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/util/MultiKey;->mKeys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getKeys()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TK;"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/util/MultiKey;->mKeys:[Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/util/MultiKey;->mCachedHashCode:I

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/util/MultiKey;->mKeys:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiKey"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/anddev/andengine/util/MultiKey;->mKeys:[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
