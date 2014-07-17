.class public Lorg/anddev/andengine/util/sort/InsertionSorter;
.super Lorg/anddev/andengine/util/sort/Sorter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/anddev/andengine/util/sort/Sorter",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/util/sort/Sorter;-><init>()V

    return-void
.end method


# virtual methods
.method public sort(Ljava/util/List;IILjava/util/Comparator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;II",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    add-int/lit8 v1, p2, 0x1

    :goto_0
    if-lt v1, p3, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v0, v1, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4, v4, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_2

    move-object v3, v0

    move v0, v1

    :goto_1
    add-int/lit8 v2, v0, -0x1

    invoke-interface {p1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-le v2, p2, :cond_1

    add-int/lit8 v0, v2, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4, v4, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_3

    :cond_1
    invoke-interface {p1, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object v3, v0

    move v0, v2

    goto :goto_1
.end method

.method public sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    add-int/lit8 v1, p2, 0x1

    :goto_0
    if-lt v1, p3, :cond_0

    return-void

    :cond_0
    aget-object v4, p1, v1

    add-int/lit8 v0, v1, -0x1

    aget-object v0, p1, v0

    invoke-interface {p4, v4, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_2

    move-object v3, v0

    move v0, v1

    :goto_1
    add-int/lit8 v2, v0, -0x1

    aput-object v3, p1, v0

    if-le v2, p2, :cond_1

    add-int/lit8 v0, v2, -0x1

    aget-object v0, p1, v0

    invoke-interface {p4, v4, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_3

    :cond_1
    aput-object v4, p1, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object v3, v0

    move v0, v2

    goto :goto_1
.end method
