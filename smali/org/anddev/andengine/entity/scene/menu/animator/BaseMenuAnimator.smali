.class public abstract Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/entity/scene/menu/animator/IMenuAnimator;


# static fields
.field protected static final DURATION:F = 1.0f

.field private static final HORIZONTALALIGN_DEFAULT:Lorg/anddev/andengine/util/HorizontalAlign; = null

.field private static final MENUITEMSPACING_DEFAULT:F = 1.0f


# instance fields
.field protected final mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

.field protected final mHorizontalAlign:Lorg/anddev/andengine/util/HorizontalAlign;

.field protected final mMenuItemSpacing:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/anddev/andengine/util/HorizontalAlign;->CENTER:Lorg/anddev/andengine/util/HorizontalAlign;

    sput-object v0, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;->HORIZONTALALIGN_DEFAULT:Lorg/anddev/andengine/util/HorizontalAlign;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3f80

    invoke-direct {p0, v0}, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    sget-object v0, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;->HORIZONTALALIGN_DEFAULT:Lorg/anddev/andengine/util/HorizontalAlign;

    invoke-direct {p0, v0, p1}, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/anddev/andengine/util/HorizontalAlign;F)V

    return-void
.end method

.method public constructor <init>(FLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 1

    sget-object v0, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;->HORIZONTALALIGN_DEFAULT:Lorg/anddev/andengine/util/HorizontalAlign;

    invoke-direct {p0, v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/anddev/andengine/util/HorizontalAlign;FLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/util/HorizontalAlign;)V
    .locals 1

    const/high16 v0, 0x3f80

    invoke-direct {p0, p1, v0}, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/anddev/andengine/util/HorizontalAlign;F)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/util/HorizontalAlign;F)V
    .locals 1

    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    invoke-direct {p0, p1, p2, v0}, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/anddev/andengine/util/HorizontalAlign;FLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/util/HorizontalAlign;FLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;->mHorizontalAlign:Lorg/anddev/andengine/util/HorizontalAlign;

    iput p2, p0, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;->mMenuItemSpacing:F

    iput-object p3, p0, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;->mEaseFunction:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/util/HorizontalAlign;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 1

    const/high16 v0, 0x3f80

    invoke-direct {p0, p1, v0, p2}, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(Lorg/anddev/andengine/util/HorizontalAlign;FLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 1

    const/high16 v0, 0x3f80

    invoke-direct {p0, v0, p1}, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;-><init>(FLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method


# virtual methods
.method protected getMaximumWidth(Ljava/util/ArrayList;)F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;",
            ">;)F"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getWidthScaled()F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method protected getOverallHeight(Ljava/util/ArrayList;)F
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;",
            ">;)F"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v1, p0, Lorg/anddev/andengine/entity/scene/menu/animator/BaseMenuAnimator;->mMenuItemSpacing:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getHeight()F

    move-result v0

    add-float/2addr v2, v0

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method
