.class Lorg/anddev/andengine/util/modifier/IModifier$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/anddev/andengine/util/modifier/IModifier",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/anddev/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/anddev/andengine/util/modifier/IModifier;

    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/util/modifier/IModifier$1;->compare(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/util/modifier/IModifier;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/util/modifier/IModifier;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<*>;",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<*>;)I"
        }
    .end annotation

    invoke-interface {p1}, Lorg/anddev/andengine/util/modifier/IModifier;->getDuration()F

    move-result v0

    invoke-interface {p2}, Lorg/anddev/andengine/util/modifier/IModifier;->getDuration()F

    move-result v1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
