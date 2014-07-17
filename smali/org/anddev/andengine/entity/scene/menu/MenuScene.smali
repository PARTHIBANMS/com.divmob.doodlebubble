.class public Lorg/anddev/andengine/entity/scene/menu/MenuScene;
.super Lorg/anddev/andengine/entity/scene/CameraScene;

# interfaces
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;
    }
.end annotation


# instance fields
.field private mMenuAnimator:Lorg/anddev/andengine/entity/scene/menu/animator/IMenuAnimator;

.field private final mMenuItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOnMenuItemClickListener:Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;

.field private mSelectedMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;-><init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;-><init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/scene/CameraScene;-><init>(Lorg/anddev/andengine/engine/camera/Camera;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mMenuItems:Ljava/util/ArrayList;

    sget-object v0, Lorg/anddev/andengine/entity/scene/menu/animator/IMenuAnimator;->DEFAULT:Lorg/anddev/andengine/entity/scene/menu/animator/IMenuAnimator;

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mMenuAnimator:Lorg/anddev/andengine/entity/scene/menu/animator/IMenuAnimator;

    iput-object p2, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mOnMenuItemClickListener:Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;

    invoke-virtual {p0, p0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    invoke-virtual {p0, p0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->setOnAreaTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;-><init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;)V

    return-void
.end method


# virtual methods
.method public addMenuItem(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    return-void
.end method

.method public back()V
    .locals 0

    invoke-super {p0}, Lorg/anddev/andengine/entity/scene/CameraScene;->back()V

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->reset()V

    return-void
.end method

.method public buildAnimations()V
    .locals 4

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->prepareAnimations()V

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/camera/Camera;->getWidthRaw()F

    move-result v0

    iget-object v1, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/camera/Camera;->getHeightRaw()F

    move-result v1

    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mMenuAnimator:Lorg/anddev/andengine/entity/scene/menu/animator/IMenuAnimator;

    iget-object v3, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mMenuItems:Ljava/util/ArrayList;

    invoke-interface {v2, v3, v0, v1}, Lorg/anddev/andengine/entity/scene/menu/animator/IMenuAnimator;->buildAnimations(Ljava/util/ArrayList;FF)V

    return-void
.end method

.method public clearChildScene()V
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->getChildScene()Lorg/anddev/andengine/entity/scene/menu/MenuScene;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->getChildScene()Lorg/anddev/andengine/entity/scene/menu/MenuScene;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->reset()V

    invoke-super {p0}, Lorg/anddev/andengine/entity/scene/CameraScene;->clearChildScene()V

    :cond_0
    return-void
.end method

.method public closeMenuScene()V
    .locals 0

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->back()V

    return-void
.end method

.method public bridge synthetic getChildScene()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->getChildScene()Lorg/anddev/andengine/entity/scene/menu/MenuScene;

    move-result-object v0

    return-object v0
.end method

.method public getChildScene()Lorg/anddev/andengine/entity/scene/menu/MenuScene;
    .locals 1

    invoke-super {p0}, Lorg/anddev/andengine/entity/scene/CameraScene;->getChildScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;

    return-object v0
.end method

.method public getMenuItemCount()I
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getOnMenuItemClickListener()Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mOnMenuItemClickListener:Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;

    return-object v0
.end method

.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;FF)Z
    .locals 2

    const/4 v1, 0x0

    check-cast p2, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    if-eq v0, p2, :cond_1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onUnselected()V

    :cond_1
    iput-object p2, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onSelected()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mOnMenuItemClickListener:Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mOnMenuItemClickListener:Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;

    invoke-interface {v0, p0, p2, p3, p4}, Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;->onMenuItemClicked(Lorg/anddev/andengine/entity/scene/menu/MenuScene;Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;FF)Z

    move-result v0

    invoke-interface {p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onUnselected()V

    iput-object v1, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    goto :goto_1

    :pswitch_2
    invoke-interface {p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onUnselected()V

    iput-object v1, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onUnselected()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mSelectedMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public prepareAnimations()V
    .locals 4

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/camera/Camera;->getWidthRaw()F

    move-result v0

    iget-object v1, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/camera/Camera;->getHeightRaw()F

    move-result v1

    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mMenuAnimator:Lorg/anddev/andengine/entity/scene/menu/animator/IMenuAnimator;

    iget-object v3, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mMenuItems:Ljava/util/ArrayList;

    invoke-interface {v2, v3, v0, v1}, Lorg/anddev/andengine/entity/scene/menu/animator/IMenuAnimator;->prepareAnimations(Ljava/util/ArrayList;FF)V

    return-void
.end method

.method public reset()V
    .locals 3

    invoke-super {p0}, Lorg/anddev/andengine/entity/scene/CameraScene;->reset()V

    iget-object v2, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mMenuItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->prepareAnimations()V

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->reset()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public setChildScene(Lorg/anddev/andengine/entity/scene/Scene;ZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p1, Lorg/anddev/andengine/entity/scene/menu/MenuScene;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/scene/CameraScene;->setChildScene(Lorg/anddev/andengine/entity/scene/Scene;ZZZ)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MenuScene accepts only MenuScenes as a ChildScene."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMenuAnimator(Lorg/anddev/andengine/entity/scene/menu/animator/IMenuAnimator;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mMenuAnimator:Lorg/anddev/andengine/entity/scene/menu/animator/IMenuAnimator;

    return-void
.end method

.method public setOnMenuItemClickListener(Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/menu/MenuScene;->mOnMenuItemClickListener:Lorg/anddev/andengine/entity/scene/menu/MenuScene$IOnMenuItemClickListener;

    return-void
.end method
