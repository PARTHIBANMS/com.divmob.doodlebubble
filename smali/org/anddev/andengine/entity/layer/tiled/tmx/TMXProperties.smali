.class public Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;
.super Ljava/util/ArrayList;

# interfaces
.implements Lorg/anddev/andengine/entity/layer/tiled/tmx/util/constants/TMXConstants;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperty;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;",
        "Lorg/anddev/andengine/entity/layer/tiled/tmx/util/constants/TMXConstants;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7bb0885402fef4b1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public containsTMXProperty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    invoke-virtual {p0, v1}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperty;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperty;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method
