.class Lorg/anddev/andengine/entity/ZIndexSorter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/anddev/andengine/entity/IEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/anddev/andengine/entity/ZIndexSorter;


# direct methods
.method constructor <init>(Lorg/anddev/andengine/entity/ZIndexSorter;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/entity/ZIndexSorter$1;->this$0:Lorg/anddev/andengine/entity/ZIndexSorter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/entity/ZIndexSorter$1;->compare(Lorg/anddev/andengine/entity/IEntity;Lorg/anddev/andengine/entity/IEntity;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/anddev/andengine/entity/IEntity;Lorg/anddev/andengine/entity/IEntity;)I
    .locals 2

    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->getZIndex()I

    move-result v0

    invoke-interface {p2}, Lorg/anddev/andengine/entity/IEntity;->getZIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
