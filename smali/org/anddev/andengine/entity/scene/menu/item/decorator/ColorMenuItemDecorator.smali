.class public Lorg/anddev/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;
.super Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;


# instance fields
.field private final mSelectedBlue:F

.field private final mSelectedGreen:F

.field private final mSelectedRed:F

.field private final mUnselectedBlue:F

.field private final mUnselectedGreen:F

.field private final mUnselectedRed:F


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;FFFFFF)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;-><init>(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V

    iput p2, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;->mSelectedRed:F

    iput p3, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;->mSelectedGreen:F

    iput p4, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;->mSelectedBlue:F

    iput p5, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;->mUnselectedRed:F

    iput p6, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;->mUnselectedGreen:F

    iput p7, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;->mUnselectedBlue:F

    iget v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;->mUnselectedRed:F

    iget v1, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;->mUnselectedGreen:F

    iget v2, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;->mUnselectedBlue:F

    invoke-interface {p1, v0, v1, v2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setColor(FFF)V

    return-void
.end method


# virtual methods
.method public onMenuItemReset(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V
    .locals 3

    iget v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;->mUnselectedRed:F

    iget v1, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;->mUnselectedGreen:F

    iget v2, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;->mUnselectedBlue:F

    invoke-interface {p1, v0, v1, v2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setColor(FFF)V

    return-void
.end method

.method public onMenuItemSelected(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V
    .locals 3

    iget v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;->mSelectedRed:F

    iget v1, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;->mSelectedGreen:F

    iget v2, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;->mSelectedBlue:F

    invoke-interface {p1, v0, v1, v2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setColor(FFF)V

    return-void
.end method

.method public onMenuItemUnselected(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V
    .locals 3

    iget v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;->mUnselectedRed:F

    iget v1, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;->mUnselectedGreen:F

    iget v2, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/ColorMenuItemDecorator;->mUnselectedBlue:F

    invoke-interface {p1, v0, v1, v2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setColor(FFF)V

    return-void
.end method
