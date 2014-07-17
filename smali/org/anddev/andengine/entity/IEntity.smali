.class public interface abstract Lorg/anddev/andengine/entity/IEntity;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/engine/handler/IUpdateHandler;
.implements Lorg/anddev/andengine/opengl/IDrawable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/entity/IEntity$IEntityCallable;,
        Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;
    }
.end annotation


# virtual methods
.method public abstract attachChild(Lorg/anddev/andengine/entity/IEntity;)V
.end method

.method public abstract attachChild(Lorg/anddev/andengine/entity/IEntity;I)Z
.end method

.method public abstract callOnChildren(Lorg/anddev/andengine/entity/IEntity$IEntityCallable;)V
.end method

.method public abstract callOnChildren(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;Lorg/anddev/andengine/entity/IEntity$IEntityCallable;)V
.end method

.method public abstract clearEntityModifiers()V
.end method

.method public abstract clearUpdateHandlers()V
.end method

.method public abstract convertLocalToSceneCoordinates(FF)[F
.end method

.method public abstract convertLocalToSceneCoordinates(FF[F)[F
.end method

.method public abstract convertLocalToSceneCoordinates([F)[F
.end method

.method public abstract convertLocalToSceneCoordinates([F[F)[F
.end method

.method public abstract convertSceneToLocalCoordinates(FF)[F
.end method

.method public abstract convertSceneToLocalCoordinates(FF[F)[F
.end method

.method public abstract convertSceneToLocalCoordinates([F)[F
.end method

.method public abstract convertSceneToLocalCoordinates([F[F)[F
.end method

.method public abstract detachChild(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;)Lorg/anddev/andengine/entity/IEntity;
.end method

.method public abstract detachChild(Lorg/anddev/andengine/entity/IEntity;)Z
.end method

.method public abstract detachChildren()V
.end method

.method public abstract detachChildren(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;)Z
.end method

.method public abstract detachSelf()Z
.end method

.method public abstract findChild(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;)Lorg/anddev/andengine/entity/IEntity;
.end method

.method public abstract getAlpha()F
.end method

.method public abstract getBlue()F
.end method

.method public abstract getChild(I)Lorg/anddev/andengine/entity/IEntity;
.end method

.method public abstract getChildCount()I
.end method

.method public abstract getChildIndex(Lorg/anddev/andengine/entity/IEntity;)I
.end method

.method public abstract getFirstChild()Lorg/anddev/andengine/entity/IEntity;
.end method

.method public abstract getGreen()F
.end method

.method public abstract getInitialX()F
.end method

.method public abstract getInitialY()F
.end method

.method public abstract getLastChild()Lorg/anddev/andengine/entity/IEntity;
.end method

.method public abstract getLocalToSceneTransformation()Lorg/anddev/andengine/util/Transformation;
.end method

.method public abstract getParent()Lorg/anddev/andengine/entity/IEntity;
.end method

.method public abstract getRed()F
.end method

.method public abstract getRotation()F
.end method

.method public abstract getRotationCenterX()F
.end method

.method public abstract getRotationCenterY()F
.end method

.method public abstract getScaleCenterX()F
.end method

.method public abstract getScaleCenterY()F
.end method

.method public abstract getScaleX()F
.end method

.method public abstract getScaleY()F
.end method

.method public abstract getSceneCenterCoordinates()[F
.end method

.method public abstract getSceneToLocalTransformation()Lorg/anddev/andengine/util/Transformation;
.end method

.method public abstract getUserData()Ljava/lang/Object;
.end method

.method public abstract getX()F
.end method

.method public abstract getY()F
.end method

.method public abstract getZIndex()I
.end method

.method public abstract hasParent()Z
.end method

.method public abstract isChildrenIgnoreUpdate()Z
.end method

.method public abstract isChildrenVisible()Z
.end method

.method public abstract isIgnoreUpdate()Z
.end method

.method public abstract isRotated()Z
.end method

.method public abstract isScaled()Z
.end method

.method public abstract isVisible()Z
.end method

.method public abstract onAttached()V
.end method

.method public abstract onDetached()V
.end method

.method public abstract registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
.end method

.method public abstract registerUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)V
.end method

.method public abstract setAlpha(F)V
.end method

.method public abstract setChildIndex(Lorg/anddev/andengine/entity/IEntity;I)Z
.end method

.method public abstract setChildrenIgnoreUpdate(Z)V
.end method

.method public abstract setChildrenVisible(Z)V
.end method

.method public abstract setColor(FFF)V
.end method

.method public abstract setColor(FFFF)V
.end method

.method public abstract setIgnoreUpdate(Z)V
.end method

.method public abstract setInitialPosition()V
.end method

.method public abstract setParent(Lorg/anddev/andengine/entity/IEntity;)V
.end method

.method public abstract setPosition(FF)V
.end method

.method public abstract setPosition(Lorg/anddev/andengine/entity/IEntity;)V
.end method

.method public abstract setRotation(F)V
.end method

.method public abstract setRotationCenter(FF)V
.end method

.method public abstract setRotationCenterX(F)V
.end method

.method public abstract setRotationCenterY(F)V
.end method

.method public abstract setScale(F)V
.end method

.method public abstract setScale(FF)V
.end method

.method public abstract setScaleCenter(FF)V
.end method

.method public abstract setScaleCenterX(F)V
.end method

.method public abstract setScaleCenterY(F)V
.end method

.method public abstract setScaleX(F)V
.end method

.method public abstract setScaleY(F)V
.end method

.method public abstract setUserData(Ljava/lang/Object;)V
.end method

.method public abstract setVisible(Z)V
.end method

.method public abstract setZIndex(I)V
.end method

.method public abstract sortChildren()V
.end method

.method public abstract sortChildren(Ljava/util/Comparator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract swapChildren(II)Z
.end method

.method public abstract swapChildren(Lorg/anddev/andengine/entity/IEntity;Lorg/anddev/andengine/entity/IEntity;)Z
.end method

.method public abstract unregisterEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Z
.end method

.method public abstract unregisterEntityModifiers(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierMatcher;)Z
.end method

.method public abstract unregisterUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)Z
.end method

.method public abstract unregisterUpdateHandlers(Lorg/anddev/andengine/engine/handler/IUpdateHandler$IUpdateHandlerMatcher;)Z
.end method
