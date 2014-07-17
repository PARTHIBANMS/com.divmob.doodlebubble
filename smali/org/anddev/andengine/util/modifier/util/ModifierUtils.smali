.class public Lorg/anddev/andengine/util/modifier/util/ModifierUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSequenceDurationOfModifier([Lorg/anddev/andengine/util/modifier/IModifier;)F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<*>;)F"
        }
    .end annotation

    const/4 v1, 0x1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return v1

    :cond_0
    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/anddev/andengine/util/modifier/IModifier;->getDuration()F

    move-result v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
