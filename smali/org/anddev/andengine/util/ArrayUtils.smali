.class public Lorg/anddev/andengine/util/ArrayUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals([BI[BII)Z
    .locals 3

    add-int v0, p1, p4

    array-length v1, p0

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_0
    add-int v1, p3, p4

    array-length v2, p2

    if-le v1, v2, :cond_3

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    aget-byte v1, p0, p1

    aget-byte v2, p2, p3

    if-eq v1, v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p3, p3, 0x1

    :cond_3
    if-lt p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static random([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v0

    aget-object v0, p0, v0

    return-object v0
.end method

.method public static reverse([B)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-le v0, v1, :cond_0

    aget-byte v2, p0, v0

    aget-byte v3, p0, v1

    aput-byte v3, p0, v0

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reverse([D)V
    .locals 6

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-le v0, v1, :cond_0

    aget-wide v2, p0, v0

    aget-wide v4, p0, v1

    aput-wide v4, p0, v0

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reverse([F)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-le v0, v1, :cond_0

    aget v2, p0, v0

    aget v3, p0, v1

    aput v3, p0, v0

    aput v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reverse([I)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-le v0, v1, :cond_0

    aget v2, p0, v0

    aget v3, p0, v1

    aput v3, p0, v0

    aput v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reverse([J)V
    .locals 6

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-le v0, v1, :cond_0

    aget-wide v2, p0, v0

    aget-wide v4, p0, v1

    aput-wide v4, p0, v0

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reverse([Ljava/lang/Object;)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-le v0, v1, :cond_0

    aget-object v2, p0, v0

    aget-object v3, p0, v1

    aput-object v3, p0, v0

    aput-object v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static reverse([S)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-le v0, v1, :cond_0

    aget-short v2, p0, v0

    aget-short v3, p0, v1

    aput-short v3, p0, v0

    aput-short v2, p0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
