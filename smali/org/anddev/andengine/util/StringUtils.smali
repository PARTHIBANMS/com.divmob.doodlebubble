.class public Lorg/anddev/andengine/util/StringUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static countOccurrences(Ljava/lang/String;C)I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    :goto_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    goto :goto_0
.end method

.method public static padFront(Ljava/lang/String;CI)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p2, v0

    if-gtz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-gez v0, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/anddev/andengine/util/StringUtils;->split(Ljava/lang/String;C[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;C[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lorg/anddev/andengine/util/StringUtils;->countOccurrences(Ljava/lang/String;C)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    if-eqz p2, :cond_0

    array-length v1, p2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    if-nez v2, :cond_2

    aput-object p0, p2, v0

    :goto_2
    return-object p2

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    new-array p2, v2, [Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_3
    add-int/lit8 v3, v2, -0x1

    if-lt v0, v3, :cond_3

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    add-int/lit8 v1, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
