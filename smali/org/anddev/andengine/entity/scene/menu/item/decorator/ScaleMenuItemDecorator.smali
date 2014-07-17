.class public Lorg/anddev/andengine/entity/scene/menu/item/decorator/ScaleMenuItemDecorator;
.super Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;


# instance fields
.field private final mSelectedScale:F

.field private final mUnselectedScale:F


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;FF)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;-><init>(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V

    iput p2, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ScaleMenuItemDecorator;->mSelectedScale:F

    iput p3, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ScaleMenuItemDecorator;->mUnselectedScale:F

    invoke-interface {p1, p3}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setScale(F)V

    return-void
.end method


# virtual methods
.method public onMenuItemReset(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ScaleMenuItemDecorator;->mUnselectedScale:F

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ScaleMenuItemDecorator;->setScale(F)V

    return-void
.end method

.method public onMenuItemSelected(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ScaleMenuItemDecorator;->mSelectedScale:F

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ScaleMenuItemDecorator;->setScale(F)V

    return-void
.end method

.method public onMenuItemUnselected(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ScaleMenuItemDecorator;->mUnselectedScale:F

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ScaleMenuItemDecorator;->setScale(F)V

    return-void
.end method
