.class public Lorg/anddev/andengine/entity/scene/menu/animator/DirectMenuAnimator;
.super Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;


# static fields
.field private static synthetic $SWITCH_TABLE$org$anddev$andengine$util$HorizontalAlign:[I


# direct methods
.method static synthetic $SWITCH_TABLE$org$anddev$andengine$util$HorizontalAlign()[I
    .locals 3

    sget-object v0, Lorg/anddev/andengine/entity/scene/menu/animator/DirectMenuAnimator;->$SWITCH_TABLE$org$anddev$andengine$util$HorizontalAlign:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/anddev/andengine/util/HorizontalAlign;->values()[Lorg/anddev/andengine/util/HorizontalAlign;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/anddev/andengine/util/HorizontalAlign;->CENTER:Lorg/anddev/andengine/util/HorizontalAlign;

    invoke-virtual {v1}, Lorg/anddev/andengine/util/HorizontalAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lorg/anddev/andengine/util/HorizontalAlign;->LEFT:Lorg/anddev/andengine/util/HorizontalAlign;

    invoke-virtual {v1}, Lorg/anddev/andengine/util/HorizontalAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lorg/anddev/andengine/util/HorizontalAlign;->RIGHT:Lorg/anddev/andengine/util/HorizontalAlign;

    invoke-virtual {v1}, Lorg/anddev/andengine/util/HorizontalAlign;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lorg/anddev/andengine/entity/scene/menu/animator/DirectMenuAnimator;->$SWITCH_TABLE$org$anddev$andengine$util$HorizontalAlign:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(F)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/util/HorizontalAlign;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/anddev/andengine/util/HorizontalAlign;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/util/HorizontalAlign;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/anddev/andengine/util/HorizontalAlign;F)V

    return-void
.end method


# virtual methods
.method public buildAnimations(Ljava/util/ArrayList;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;",
            ">;FF)V"
        }
    .end annotation

    return-void
.end method

.method public prepareAnimations(Ljava/util/ArrayList;FF)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;",
            ">;FF)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/high16 v11, 0x3f00

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/scene/menu/animator/DirectMenuAnimator;->getMaximumWidth(Ljava/util/ArrayList;)F

    move-result v5

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/scene/menu/animator/DirectMenuAnimator;->getOverallHeight(Ljava/util/ArrayList;)F

    move-result v0

    sub-float v1, p2, v5

    mul-float v6, v1, v11

    sub-float v0, p3, v0

    mul-float v7, v0, v11

    iget v8, p0, Lorg/anddev/andengine/entity/scene/menu/animator/DirectMenuAnimator;->mMenuItemSpacing:F

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v0, 0x0

    move v3, v0

    move v4, v2

    :goto_0
    if-lt v3, v9, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-static {}, Lorg/anddev/andengine/entity/scene/menu/animator/DirectMenuAnimator;->$SWITCH_TABLE$org$anddev$andengine$util$HorizontalAlign()[I

    move-result-object v1

    iget-object v10, p0, Lorg/anddev/andengine/entity/scene/menu/animator/DirectMenuAnimator;->mHorizontalAlign:Lorg/anddev/andengine/util/HorizontalAlign;

    invoke-virtual {v10}, Lorg/anddev/andengine/util/HorizontalAlign;->ordinal()I

    move-result v10

    aget v1, v1, v10

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getWidthScaled()F

    move-result v1

    sub-float v1, v5, v1

    mul-float/2addr v1, v11

    :goto_1
    add-float/2addr v1, v6

    add-float v10, v7, v4

    invoke-interface {v0, v1, v10}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setPosition(FF)V

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getHeight()F

    move-result v0

    add-float/2addr v0, v8

    add-float v1, v4, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v1

    goto :goto_0

    :pswitch_1
    move v1, v2

    goto :goto_1

    :pswitch_2
    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getWidthScaled()F

    move-result v1

    sub-float v1, v5, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
