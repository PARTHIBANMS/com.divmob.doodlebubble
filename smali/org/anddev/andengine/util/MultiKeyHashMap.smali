.class public Lorg/anddev/andengine/util/MultiKeyHashMap;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<",
        "Lorg/anddev/andengine/util/MultiKey",
        "<TK;>;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x56e8aef2c276d562L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method private isEqualKey([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;[TK;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    array-length v0, p1

    array-length v2, p2

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    aget-object v2, p1, v0

    aget-object v3, p2, v0

    if-nez v2, :cond_4

    if-nez v3, :cond_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0
.end method


# virtual methods
.method public varargs get([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;)TV;"
        }
    .end annotation

    invoke-static {p1}, Lorg/anddev/andengine/util/MultiKey;->hash([Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p0}, Lorg/anddev/andengine/util/MultiKeyHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/anddev/andengine/util/MultiKey;

    invoke-virtual {v1}, Lorg/anddev/andengine/util/MultiKey;->hashCode()I

    move-result v4

    if-ne v4, v2, :cond_0

    invoke-virtual {v1}, Lorg/anddev/andengine/util/MultiKey;->getKeys()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lorg/anddev/andengine/util/MultiKeyHashMap;->isEqualKey([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
