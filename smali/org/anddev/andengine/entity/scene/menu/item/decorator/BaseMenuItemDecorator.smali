.class public abstract Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;


# instance fields
.field private final mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    return-void
.end method


# virtual methods
.method public attachChild(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public attachChild(Lorg/anddev/andengine/entity/IEntity;I)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->attachChild(Lorg/anddev/andengine/entity/IEntity;I)Z

    move-result v0

    return v0
.end method

.method public callOnChildren(Lorg/anddev/andengine/entity/IEntity$IEntityCallable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->callOnChildren(Lorg/anddev/andengine/entity/IEntity$IEntityCallable;)V

    return-void
.end method

.method public callOnChildren(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;Lorg/anddev/andengine/entity/IEntity$IEntityCallable;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->callOnChildren(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;Lorg/anddev/andengine/entity/IEntity$IEntityCallable;)V

    return-void
.end method

.method public clearEntityModifiers()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->clearEntityModifiers()V

    return-void
.end method

.method public clearUpdateHandlers()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->clearUpdateHandlers()V

    return-void
.end method

.method public collidesWith(Lorg/anddev/andengine/entity/shape/IShape;)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->collidesWith(Lorg/anddev/andengine/entity/shape/IShape;)Z

    move-result v0

    return v0
.end method

.method public contains(FF)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->contains(FF)Z

    move-result v0

    return v0
.end method

.method public convertLocalToSceneCoordinates(FF)[F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->convertLocalToSceneCoordinates(FF)[F

    move-result-object v0

    return-object v0
.end method

.method public convertLocalToSceneCoordinates(FF[F)[F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2, p3}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->convertLocalToSceneCoordinates(FF[F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertLocalToSceneCoordinates([F)[F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->convertLocalToSceneCoordinates([F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertLocalToSceneCoordinates([F[F)[F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->convertLocalToSceneCoordinates([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertSceneToLocalCoordinates(FF)[F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->convertSceneToLocalCoordinates(FF)[F

    move-result-object v0

    return-object v0
.end method

.method public convertSceneToLocalCoordinates(FF[F)[F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2, p3}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->convertSceneToLocalCoordinates(FF[F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertSceneToLocalCoordinates([F)[F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->convertSceneToLocalCoordinates([F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertSceneToLocalCoordinates([F[F)[F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->convertSceneToLocalCoordinates([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method public detachChild(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;)Lorg/anddev/andengine/entity/IEntity;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->detachChild(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public detachChild(Lorg/anddev/andengine/entity/IEntity;)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->detachChild(Lorg/anddev/andengine/entity/IEntity;)Z

    move-result v0

    return v0
.end method

.method public detachChildren()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->detachChildren()V

    return-void
.end method

.method public detachChildren(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->detachChildren(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;)Z

    move-result v0

    return v0
.end method

.method public detachSelf()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->detachSelf()Z

    move-result v0

    return v0
.end method

.method public findChild(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;)Lorg/anddev/andengine/entity/IEntity;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->findChild(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public getAlpha()F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getBaseHeight()F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getBaseHeight()F

    move-result v0

    return v0
.end method

.method public getBaseWidth()F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getBaseWidth()F

    move-result v0

    return v0
.end method

.method public getBlue()F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getBlue()F

    move-result v0

    return v0
.end method

.method public getChild(I)Lorg/anddev/andengine/entity/IEntity;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getChild(I)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildIndex(Lorg/anddev/andengine/entity/IEntity;)I
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getChildIndex(Lorg/anddev/andengine/entity/IEntity;)I

    move-result v0

    return v0
.end method

.method public getFirstChild()Lorg/anddev/andengine/entity/IEntity;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getFirstChild()Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public getGreen()F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getGreen()F

    move-result v0

    return v0
.end method

.method public getHeight()F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getHeight()F

    move-result v0

    return v0
.end method

.method public getHeightScaled()F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getHeightScaled()F

    move-result v0

    return v0
.end method

.method public getID()I
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getID()I

    move-result v0

    return v0
.end method

.method public getInitialX()F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getInitialX()F

    move-result v0

    return v0
.end method

.method public getInitialY()F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getInitialY()F

    move-result v0

    return v0
.end method

.method public getLastChild()Lorg/anddev/andengine/entity/IEntity;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getLastChild()Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public getLocalToSceneTransformation()Lorg/anddev/andengine/util/Transformation;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getLocalToSceneTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lorg/anddev/andengine/entity/IEntity;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getParent()Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public getRed()F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getRed()F

    move-result v0

    return v0
.end method

.method public getRotation()F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getRotation()F

    move-result v0

    return v0
.end method

.method public getRotationCenterX()F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getRotationCenterX()F

    move-result v0

    return v0
.end method

.method public getRotationCenterY()F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getRotationCenterY()F

    move-result v0

    return v0
.end method

.method public getScaleCenterX()F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getScaleCenterX()F

    move-result v0

    return v0
.end method

.method public getScaleCenterY()F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getScaleCenterY()F

    move-result v0

    return v0
.end method

.method public getScaleX()F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getScaleX()F

    move-result v0

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getScaleY()F

    move-result v0

    return v0
.end method

.method public getSceneCenterCoordinates()[F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getSceneCenterCoordinates()[F

    move-result-object v0

    return-object v0
.end method

.method public getSceneToLocalTransformation()Lorg/anddev/andengine/util/Transformation;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getSceneToLocalTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v0

    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getUserData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getWidth()F

    move-result v0

    return v0
.end method

.method public getWidthScaled()F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getWidthScaled()F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getX()F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getY()F

    move-result v0

    return v0
.end method

.method public getZIndex()I
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->getZIndex()I

    move-result v0

    return v0
.end method

.method public hasParent()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->hasParent()Z

    move-result v0

    return v0
.end method

.method public isChildrenIgnoreUpdate()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->isChildrenIgnoreUpdate()Z

    move-result v0

    return v0
.end method

.method public isChildrenVisible()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->isChildrenVisible()Z

    move-result v0

    return v0
.end method

.method public isCullingEnabled()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->isCullingEnabled()Z

    move-result v0

    return v0
.end method

.method public isIgnoreUpdate()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->isIgnoreUpdate()Z

    move-result v0

    return v0
.end method

.method public isRotated()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->isRotated()Z

    move-result v0

    return v0
.end method

.method public isScaled()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->isScaled()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->isVisible()Z

    move-result v0

    return v0
.end method

.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2, p3}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onAttached()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onAttached()V

    return-void
.end method

.method public onDetached()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onDetached()V

    return-void
.end method

.method public onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    return-void
.end method

.method protected abstract onMenuItemReset(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V
.end method

.method protected abstract onMenuItemSelected(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V
.end method

.method protected abstract onMenuItemUnselected(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V
.end method

.method public final onSelected()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onSelected()V

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->onMenuItemSelected(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V

    return-void
.end method

.method public final onUnselected()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onUnselected()V

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->onMenuItemUnselected(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V

    return-void
.end method

.method public onUpdate(F)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->onUpdate(F)V

    return-void
.end method

.method public registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    return-void
.end method

.method public registerUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->registerUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)V

    return-void
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->reset()V

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->onMenuItemReset(Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setAlpha(F)V

    return-void
.end method

.method public setBlendFunction(II)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setBlendFunction(II)V

    return-void
.end method

.method public setChildIndex(Lorg/anddev/andengine/entity/IEntity;I)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setChildIndex(Lorg/anddev/andengine/entity/IEntity;I)Z

    move-result v0

    return v0
.end method

.method public setChildrenIgnoreUpdate(Z)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setChildrenIgnoreUpdate(Z)V

    return-void
.end method

.method public setChildrenVisible(Z)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setChildrenVisible(Z)V

    return-void
.end method

.method public setColor(FFF)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2, p3}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setColor(FFF)V

    return-void
.end method

.method public setColor(FFFF)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setColor(FFFF)V

    return-void
.end method

.method public setCullingEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setCullingEnabled(Z)V

    return-void
.end method

.method public setIgnoreUpdate(Z)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setIgnoreUpdate(Z)V

    return-void
.end method

.method public setInitialPosition()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setInitialPosition()V

    return-void
.end method

.method public setParent(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setParent(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public setPosition(FF)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setPosition(FF)V

    return-void
.end method

.method public setPosition(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setPosition(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public setRotation(F)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setRotation(F)V

    return-void
.end method

.method public setRotationCenter(FF)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setRotationCenter(FF)V

    return-void
.end method

.method public setRotationCenterX(F)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setRotationCenterX(F)V

    return-void
.end method

.method public setRotationCenterY(F)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setRotationCenterY(F)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setScale(F)V

    return-void
.end method

.method public setScale(FF)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setScale(FF)V

    return-void
.end method

.method public setScaleCenter(FF)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setScaleCenter(FF)V

    return-void
.end method

.method public setScaleCenterX(F)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setScaleCenterX(F)V

    return-void
.end method

.method public setScaleCenterY(F)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setScaleCenterY(F)V

    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setScaleX(F)V

    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setScaleY(F)V

    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setUserData(Ljava/lang/Object;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setVisible(Z)V

    return-void
.end method

.method public setZIndex(I)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->setZIndex(I)V

    return-void
.end method

.method public sortChildren()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->sortChildren()V

    return-void
.end method

.method public sortChildren(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->sortChildren(Ljava/util/Comparator;)V

    return-void
.end method

.method public swapChildren(II)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->swapChildren(II)Z

    move-result v0

    return v0
.end method

.method public swapChildren(Lorg/anddev/andengine/entity/IEntity;Lorg/anddev/andengine/entity/IEntity;)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->swapChildren(Lorg/anddev/andengine/entity/IEntity;Lorg/anddev/andengine/entity/IEntity;)Z

    move-result v0

    return v0
.end method

.method public unregisterEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->unregisterEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Z

    move-result v0

    return v0
.end method

.method public unregisterEntityModifiers(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierMatcher;)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->unregisterEntityModifiers(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierMatcher;)Z

    move-result v0

    return v0
.end method

.method public unregisterUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->unregisterUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)Z

    move-result v0

    return v0
.end method

.method public unregisterUpdateHandlers(Lorg/anddev/andengine/engine/handler/IUpdateHandler$IUpdateHandlerMatcher;)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/decorator/BaseMenuItemDecorator;->mMenuItem:Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;->unregisterUpdateHandlers(Lorg/anddev/andengine/engine/handler/IUpdateHandler$IUpdateHandlerMatcher;)Z

    move-result v0

    return v0
.end method
