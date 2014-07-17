.class public Lorg/anddev/andengine/entity/ZIndexSorter;
.super Lorg/anddev/andengine/util/sort/InsertionSorter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/sort/InsertionSorter",
        "<",
        "Lorg/anddev/andengine/entity/IEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static INSTANCE:Lorg/anddev/andengine/entity/ZIndexSorter;


# instance fields
.field private final mZIndexComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/anddev/andengine/util/sort/InsertionSorter;-><init>()V

    new-instance v0, Lorg/anddev/andengine/entity/ZIndexSorter$1;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/ZIndexSorter$1;-><init>(Lorg/anddev/andengine/entity/ZIndexSorter;)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/ZIndexSorter;->mZIndexComparator:Ljava/util/Comparator;

    return-void
.end method

.method public static getInstance()Lorg/anddev/andengine/entity/ZIndexSorter;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/entity/ZIndexSorter;->INSTANCE:Lorg/anddev/andengine/entity/ZIndexSorter;

    if-nez v0, :cond_0

    new-instance v0, Lorg/anddev/andengine/entity/ZIndexSorter;

    invoke-direct {v0}, Lorg/anddev/andengine/entity/ZIndexSorter;-><init>()V

    sput-object v0, Lorg/anddev/andengine/entity/ZIndexSorter;->INSTANCE:Lorg/anddev/andengine/entity/ZIndexSorter;

    :cond_0
    sget-object v0, Lorg/anddev/andengine/entity/ZIndexSorter;->INSTANCE:Lorg/anddev/andengine/entity/ZIndexSorter;

    return-object v0
.end method


# virtual methods
.method public sort(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/entity/ZIndexSorter;->mZIndexComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Lorg/anddev/andengine/entity/ZIndexSorter;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public sort(Ljava/util/List;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/entity/ZIndexSorter;->mZIndexComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/entity/ZIndexSorter;->sort(Ljava/util/List;IILjava/util/Comparator;)V

    return-void
.end method

.method public sort([Lorg/anddev/andengine/entity/IEntity;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/ZIndexSorter;->mZIndexComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Lorg/anddev/andengine/entity/ZIndexSorter;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method public sort([Lorg/anddev/andengine/entity/IEntity;II)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/ZIndexSorter;->mZIndexComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/entity/ZIndexSorter;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    return-void
.end method
