.class public Lorg/anddev/andengine/entity/scene/menu/animator/SlideMenuAnimator;
.super Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;


# static fields
.field private static synthetic $SWITCH_TABLE$org$anddev$andengine$util$HorizontalAlign:[I


# direct methods
.method static synthetic $SWITCH_TABLE$org$anddev$andengine$util$HorizontalAlign()[I
    .locals 3

    sget-object v0, Lorg/anddev/andengine/entity/scene/menu/animator/SlideMenuAnimator;->$SWITCH_TABLE$org$anddev$andengine$util$HorizontalAlign:[I

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
    sput-object v0, Lorg/anddev/andengine/entity/scene/menu/animator/SlideMenuAnimator;->$SWITCH_TABLE$org$anddev$andengine$util$HorizontalAlign:[I

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

.method public constructor <init>(FLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(FLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

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

.method public constructor <init>(Lorg/anddev/andengine/util/HorizontalAlign;FLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/anddev/andengine/util/HorizontalAlign;FLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/util/HorizontalAlign;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/anddev/andengine/util/HorizontalAlign;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method


# virtual methods
.method public buildAnimations(Ljava/util/ArrayList;FF)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;",
            ">;FF)V"
        }
    .end annotation

    iget-object v6, p0, Lorg/anddev/andengine/entity/scene/menu/animator/SlideMenuAnimator;->mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/scene/menu/animator/SlideMenuAnimator;->getMaximumWidth(Ljava/util/ArrayList;)F

    move-result v10

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/scene/menu/animator/SlideMenuAnimator;->getOverallHeight(Ljava/util/ArrayList;)F

    move-result v0

    sub-float v1, p2, v10

    const/high16 v2, 0x3f00

    mul-float v11, v1, v2

    sub-float v0, p3, v0

    const/high16 v1, 0x3f00

    mul-float v12, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v0, 0x0

    move v8, v0

    move v9, v1

    :goto_0
    if-lt v8, v13, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-static {}, Lorg/anddev/andengine/entity/scene/menu/animator/SlideMenuAnimator;->$SWITCH_TABLE$org$anddev$andengine$util$HorizontalAlign()[I

    move-result-object v0

    iget-object v1, p0, Lorg/anddev/andengine/entity/scene/menu/animator/SlideMenuAnimator;->mHorizontalAlign:Lorg/anddev/andengine/util/HorizontalAlign;

    invoke-virtual {v1}, Lorg/anddev/andengine/util/HorizontalAlign;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-interface {v7}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getWidthScaled()F

    move-result v0

    sub-float v0, v10, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    move v3, v0

    :goto_1
    new-instance v0, Lorg/anddev/andengine/entity/modifier/MoveModifier;

    const/high16 v1, 0x3f80

    neg-float v2, v10

    add-float/2addr v3, v11

    add-float v4, v12, v9

    add-float v5, v12, v9

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/entity/modifier/MoveModifier;-><init>(FFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/modifier/MoveModifier;->setRemoveWhenFinished(Z)V

    invoke-interface {v7, v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    invoke-interface {v7}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getHeight()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/entity/scene/menu/animator/SlideMenuAnimator;->mMenuItemSpacing:F

    add-float/2addr v0, v1

    add-float v1, v9, v0

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    move v9, v1

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    move v3, v0

    goto :goto_1

    :pswitch_2
    invoke-interface {v7}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getWidthScaled()F

    move-result v0

    sub-float v0, v10, v0

    move v3, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public prepareAnimations(Ljava/util/ArrayList;FF)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;",
            ">;FF)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/scene/menu/animator/SlideMenuAnimator;->getMaximumWidth(Ljava/util/ArrayList;)F

    move-result v3

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/scene/menu/animator/SlideMenuAnimator;->getOverallHeight(Ljava/util/ArrayList;)F

    move-result v0

    sub-float v0, p3, v0

    const/high16 v1, 0x3f00

    mul-float v4, v0, v1

    iget v5, p0, Lorg/anddev/andengine/entity/scene/menu/animator/SlideMenuAnimator;->mMenuItemSpacing:F

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-lt v1, v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    neg-float v7, v3

    add-float v8, v4, v2

    invoke-interface {v0, v7, v8}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setPosition(FF)V

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getHeight()F

    move-result v0

    add-float/2addr v0, v5

    add-float/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
