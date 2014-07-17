.class public abstract Lorg/anddev/andengine/util/sort/Sorter;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract sort(Ljava/util/List;IILjava/util/Comparator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;II",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public final sort(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/anddev/andengine/util/sort/Sorter;->sort(Ljava/util/List;IILjava/util/Comparator;)V

    return-void
.end method

.method public abstract sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation
.end method

.method public final sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lorg/anddev/andengine/util/sort/Sorter;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    return-void
.end method
