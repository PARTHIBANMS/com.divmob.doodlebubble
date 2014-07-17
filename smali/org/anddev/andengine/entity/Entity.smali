.class public Lorg/anddev/andengine/entity/Entity;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/entity/IEntity;


# static fields
.field private static final CHILDREN_CAPACITY_DEFAULT:I = 0x4

.field private static final ENTITYMODIFIERS_CAPACITY_DEFAULT:I = 0x4

.field private static final PARAMETERCALLABLE_DETACHCHILD:Lorg/anddev/andengine/util/ParameterCallable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/ParameterCallable",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static final UPDATEHANDLERS_CAPACITY_DEFAULT:I = 0x4

.field private static final VERTICES_LOCAL_TO_SCENE_TMP:[F

.field private static final VERTICES_SCENE_TO_LOCAL_TMP:[F


# instance fields
.field protected mAlpha:F

.field protected mBlue:F

.field protected mChildren:Lorg/anddev/andengine/util/SmartList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/SmartList",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected mChildrenIgnoreUpdate:Z

.field protected mChildrenVisible:Z

.field private mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

.field protected mGreen:F

.field protected mIgnoreUpdate:Z

.field private final mInitialX:F

.field private final mInitialY:F

.field private final mLocalToParentTransformation:Lorg/anddev/andengine/util/Transformation;

.field private mLocalToParentTransformationDirty:Z

.field private final mLocalToSceneTransformation:Lorg/anddev/andengine/util/Transformation;

.field private mParent:Lorg/anddev/andengine/entity/IEntity;

.field private final mParentToLocalTransformation:Lorg/anddev/andengine/util/Transformation;

.field private mParentToLocalTransformationDirty:Z

.field protected mRed:F

.field protected mRotation:F

.field protected mRotationCenterX:F

.field protected mRotationCenterY:F

.field protected mScaleCenterX:F

.field protected mScaleCenterY:F

.field protected mScaleX:F

.field protected mScaleY:F

.field private final mSceneToLocalTransformation:Lorg/anddev/andengine/util/Transformation;

.field private mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

.field private mUserData:Ljava/lang/Object;

.field protected mVisible:Z

.field protected mX:F

.field protected mY:F

.field protected mZIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    new-array v0, v1, [F

    sput-object v0, Lorg/anddev/andengine/entity/Entity;->VERTICES_SCENE_TO_LOCAL_TMP:[F

    new-array v0, v1, [F

    sput-object v0, Lorg/anddev/andengine/entity/Entity;->VERTICES_LOCAL_TO_SCENE_TMP:[F

    new-instance v0, Lorg/anddev/andengine/entity/Entity$1;

    invoke-direct {v0}, Lorg/anddev/andengine/entity/Entity$1;-><init>()V

    sput-object v0, Lorg/anddev/andengine/entity/Entity;->PARAMETERCALLABLE_DETACHCHILD:Lorg/anddev/andengine/util/ParameterCallable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/anddev/andengine/entity/Entity;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/high16 v0, 0x3f80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lorg/anddev/andengine/entity/Entity;->mVisible:Z

    iput-boolean v3, p0, Lorg/anddev/andengine/entity/Entity;->mIgnoreUpdate:Z

    iput-boolean v2, p0, Lorg/anddev/andengine/entity/Entity;->mChildrenVisible:Z

    iput-boolean v3, p0, Lorg/anddev/andengine/entity/Entity;->mChildrenIgnoreUpdate:Z

    iput v3, p0, Lorg/anddev/andengine/entity/Entity;->mZIndex:I

    iput v0, p0, Lorg/anddev/andengine/entity/Entity;->mRed:F

    iput v0, p0, Lorg/anddev/andengine/entity/Entity;->mGreen:F

    iput v0, p0, Lorg/anddev/andengine/entity/Entity;->mBlue:F

    iput v0, p0, Lorg/anddev/andengine/entity/Entity;->mAlpha:F

    iput v1, p0, Lorg/anddev/andengine/entity/Entity;->mRotation:F

    iput v1, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterX:F

    iput v1, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterY:F

    iput v0, p0, Lorg/anddev/andengine/entity/Entity;->mScaleX:F

    iput v0, p0, Lorg/anddev/andengine/entity/Entity;->mScaleY:F

    iput v1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterX:F

    iput v1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterY:F

    iput-boolean v2, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    iput-boolean v2, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    new-instance v0, Lorg/anddev/andengine/util/Transformation;

    invoke-direct {v0}, Lorg/anddev/andengine/util/Transformation;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformation:Lorg/anddev/andengine/util/Transformation;

    new-instance v0, Lorg/anddev/andengine/util/Transformation;

    invoke-direct {v0}, Lorg/anddev/andengine/util/Transformation;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformation:Lorg/anddev/andengine/util/Transformation;

    new-instance v0, Lorg/anddev/andengine/util/Transformation;

    invoke-direct {v0}, Lorg/anddev/andengine/util/Transformation;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToSceneTransformation:Lorg/anddev/andengine/util/Transformation;

    new-instance v0, Lorg/anddev/andengine/util/Transformation;

    invoke-direct {v0}, Lorg/anddev/andengine/util/Transformation;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mSceneToLocalTransformation:Lorg/anddev/andengine/util/Transformation;

    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mInitialX:F

    iput p2, p0, Lorg/anddev/andengine/entity/Entity;->mInitialY:F

    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mX:F

    iput p2, p0, Lorg/anddev/andengine/entity/Entity;->mY:F

    return-void
.end method

.method private allocateChildren()V
    .locals 2

    new-instance v0, Lorg/anddev/andengine/util/SmartList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/anddev/andengine/util/SmartList;-><init>(I)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    return-void
.end method

.method private allocateEntityModifiers()V
    .locals 2

    new-instance v0, Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/anddev/andengine/entity/modifier/EntityModifierList;-><init>(Lorg/anddev/andengine/entity/IEntity;I)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    return-void
.end method

.method private allocateUpdateHandlers()V
    .locals 2

    new-instance v0, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;-><init>(I)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    return-void
.end method


# virtual methods
.method protected applyRotation(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mRotation:F

    cmpl-float v1, v0, v4

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterX:F

    iget v2, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterY:F

    invoke-interface {p1, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    const/high16 v3, 0x3f80

    invoke-interface {p1, v0, v4, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    neg-float v0, v1

    neg-float v1, v2

    invoke-interface {p1, v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    :cond_0
    return-void
.end method

.method protected applyScale(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mScaleX:F

    iget v1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleY:F

    cmpl-float v2, v0, v4

    if-nez v2, :cond_0

    cmpl-float v2, v1, v4

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterX:F

    iget v3, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterY:F

    invoke-interface {p1, v2, v3, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    invoke-interface {p1, v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    neg-float v0, v2

    neg-float v1, v3

    invoke-interface {p1, v0, v1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    :cond_1
    return-void
.end method

.method protected applyTranslation(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mX:F

    iget v1, p0, Lorg/anddev/andengine/entity/Entity;->mY:F

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    return-void
.end method

.method public attachChild(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pEntity already has a parent!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/anddev/andengine/entity/Entity;->allocateChildren()V

    :cond_1
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/SmartList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p0}, Lorg/anddev/andengine/entity/IEntity;->setParent(Lorg/anddev/andengine/entity/IEntity;)V

    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->onAttached()V

    return-void
.end method

.method public attachChild(Lorg/anddev/andengine/entity/IEntity;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pEntity already has a parent!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/anddev/andengine/entity/Entity;->allocateChildren()V

    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, p2, p1}, Lorg/anddev/andengine/util/SmartList;->add(ILjava/lang/Object;)V

    invoke-interface {p1, p0}, Lorg/anddev/andengine/entity/IEntity;->setParent(Lorg/anddev/andengine/entity/IEntity;)V

    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->onAttached()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public callOnChildren(Lorg/anddev/andengine/entity/IEntity$IEntityCallable;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/SmartList;->call(Lorg/anddev/andengine/util/ParameterCallable;)V

    goto :goto_0
.end method

.method public callOnChildren(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;Lorg/anddev/andengine/entity/IEntity$IEntityCallable;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/util/SmartList;->call(Lorg/anddev/andengine/util/IMatcher;Lorg/anddev/andengine/util/ParameterCallable;)V

    goto :goto_0
.end method

.method public clearEntityModifiers()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/EntityModifierList;->clear()V

    goto :goto_0
.end method

.method public clearUpdateHandlers()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->clear()V

    goto :goto_0
.end method

.method public convertLocalToSceneCoordinates(FF)[F
    .locals 1

    sget-object v0, Lorg/anddev/andengine/entity/Entity;->VERTICES_LOCAL_TO_SCENE_TMP:[F

    invoke-virtual {p0, p1, p2, v0}, Lorg/anddev/andengine/entity/Entity;->convertLocalToSceneCoordinates(FF[F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertLocalToSceneCoordinates(FF[F)[F
    .locals 1

    const/4 v0, 0x0

    aput p1, p3, v0

    const/4 v0, 0x1

    aput p2, p3, v0

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/Entity;->getLocalToSceneTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/anddev/andengine/util/Transformation;->transform([F)V

    return-object p3
.end method

.method public convertLocalToSceneCoordinates([F)[F
    .locals 1

    sget-object v0, Lorg/anddev/andengine/entity/Entity;->VERTICES_LOCAL_TO_SCENE_TMP:[F

    invoke-virtual {p0, p1, v0}, Lorg/anddev/andengine/entity/Entity;->convertSceneToLocalCoordinates([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertLocalToSceneCoordinates([F[F)[F
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    aget v0, p1, v1

    aput v0, p2, v1

    aget v0, p1, v2

    aput v0, p2, v2

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/Entity;->getLocalToSceneTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/anddev/andengine/util/Transformation;->transform([F)V

    return-object p2
.end method

.method public convertSceneToLocalCoordinates(FF)[F
    .locals 1

    sget-object v0, Lorg/anddev/andengine/entity/Entity;->VERTICES_SCENE_TO_LOCAL_TMP:[F

    invoke-virtual {p0, p1, p2, v0}, Lorg/anddev/andengine/entity/Entity;->convertSceneToLocalCoordinates(FF[F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertSceneToLocalCoordinates(FF[F)[F
    .locals 1

    const/4 v0, 0x0

    aput p1, p3, v0

    const/4 v0, 0x1

    aput p2, p3, v0

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/Entity;->getSceneToLocalTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/anddev/andengine/util/Transformation;->transform([F)V

    return-object p3
.end method

.method public convertSceneToLocalCoordinates([F)[F
    .locals 1

    sget-object v0, Lorg/anddev/andengine/entity/Entity;->VERTICES_SCENE_TO_LOCAL_TMP:[F

    invoke-virtual {p0, p1, v0}, Lorg/anddev/andengine/entity/Entity;->convertSceneToLocalCoordinates([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertSceneToLocalCoordinates([F[F)[F
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    aget v0, p1, v1

    aput v0, p2, v1

    aget v0, p1, v2

    aput v0, p2, v2

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/Entity;->getSceneToLocalTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/anddev/andengine/util/Transformation;->transform([F)V

    return-object p2
.end method

.method public detachChild(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;)Lorg/anddev/andengine/entity/IEntity;
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    sget-object v1, Lorg/anddev/andengine/entity/Entity;->PARAMETERCALLABLE_DETACHCHILD:Lorg/anddev/andengine/util/ParameterCallable;

    invoke-virtual {v0, p1, v1}, Lorg/anddev/andengine/util/SmartList;->remove(Lorg/anddev/andengine/util/IMatcher;Lorg/anddev/andengine/util/ParameterCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/IEntity;

    goto :goto_0
.end method

.method public detachChild(Lorg/anddev/andengine/entity/IEntity;)Z
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    sget-object v1, Lorg/anddev/andengine/entity/Entity;->PARAMETERCALLABLE_DETACHCHILD:Lorg/anddev/andengine/util/ParameterCallable;

    invoke-virtual {v0, p1, v1}, Lorg/anddev/andengine/util/SmartList;->remove(Ljava/lang/Object;Lorg/anddev/andengine/util/ParameterCallable;)Z

    move-result v0

    goto :goto_0
.end method

.method public detachChildren()V
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    sget-object v1, Lorg/anddev/andengine/entity/Entity;->PARAMETERCALLABLE_DETACHCHILD:Lorg/anddev/andengine/util/ParameterCallable;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/util/SmartList;->clear(Lorg/anddev/andengine/util/ParameterCallable;)V

    goto :goto_0
.end method

.method public detachChildren(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;)Z
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    sget-object v1, Lorg/anddev/andengine/entity/Entity;->PARAMETERCALLABLE_DETACHCHILD:Lorg/anddev/andengine/util/ParameterCallable;

    invoke-virtual {v0, p1, v1}, Lorg/anddev/andengine/util/SmartList;->removeAll(Lorg/anddev/andengine/util/IMatcher;Lorg/anddev/andengine/util/ParameterCallable;)Z

    move-result v0

    goto :goto_0
.end method

.method public detachSelf()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mParent:Lorg/anddev/andengine/entity/IEntity;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lorg/anddev/andengine/entity/IEntity;->detachChild(Lorg/anddev/andengine/entity/IEntity;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected doDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 0

    return-void
.end method

.method public findChild(Lorg/anddev/andengine/entity/IEntity$IEntityMatcher;)Lorg/anddev/andengine/entity/IEntity;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/SmartList;->find(Lorg/anddev/andengine/util/IMatcher;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/IEntity;

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mAlpha:F

    return v0
.end method

.method public getBlue()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mBlue:F

    return v0
.end method

.method public getChild(I)Lorg/anddev/andengine/entity/IEntity;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/IEntity;

    goto :goto_0
.end method

.method public getChildCount()I
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getChildIndex(Lorg/anddev/andengine/entity/IEntity;)I
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->getParent()Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    if-eq v0, p0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/util/SmartList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public getFirstChild()Lorg/anddev/andengine/entity/IEntity;
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/IEntity;

    goto :goto_0
.end method

.method public getGreen()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mGreen:F

    return v0
.end method

.method public getInitialX()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mInitialX:F

    return v0
.end method

.method public getInitialY()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mInitialY:F

    return v0
.end method

.method public getLastChild()Lorg/anddev/andengine/entity/IEntity;
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    iget-object v1, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v1}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/IEntity;

    goto :goto_0
.end method

.method public getLocalToParentTransformation()Lorg/anddev/andengine/util/Transformation;
    .locals 7

    const/high16 v4, 0x3f80

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformation:Lorg/anddev/andengine/util/Transformation;

    iget-boolean v1, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/anddev/andengine/util/Transformation;->setToIdentity()V

    iget v1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleX:F

    iget v2, p0, Lorg/anddev/andengine/entity/Entity;->mScaleY:F

    cmpl-float v3, v1, v4

    if-nez v3, :cond_0

    cmpl-float v3, v2, v4

    if-eqz v3, :cond_1

    :cond_0
    iget v3, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterX:F

    iget v4, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterY:F

    neg-float v5, v3

    neg-float v6, v4

    invoke-virtual {v0, v5, v6}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/util/Transformation;->postScale(FF)V

    invoke-virtual {v0, v3, v4}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    :cond_1
    iget v1, p0, Lorg/anddev/andengine/entity/Entity;->mRotation:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterX:F

    iget v3, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterY:F

    neg-float v4, v2

    neg-float v5, v3

    invoke-virtual {v0, v4, v5}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/util/Transformation;->postRotate(F)V

    invoke-virtual {v0, v2, v3}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    :cond_2
    iget v1, p0, Lorg/anddev/andengine/entity/Entity;->mX:F

    iget v2, p0, Lorg/anddev/andengine/entity/Entity;->mY:F

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    :cond_3
    return-object v0
.end method

.method public getLocalToSceneTransformation()Lorg/anddev/andengine/util/Transformation;
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToSceneTransformation:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/Entity;->getLocalToParentTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/util/Transformation;->setTo(Lorg/anddev/andengine/util/Transformation;)V

    iget-object v1, p0, Lorg/anddev/andengine/entity/Entity;->mParent:Lorg/anddev/andengine/entity/IEntity;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/anddev/andengine/entity/IEntity;->getLocalToSceneTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/util/Transformation;->postConcat(Lorg/anddev/andengine/util/Transformation;)V

    :cond_0
    return-object v0
.end method

.method public getParent()Lorg/anddev/andengine/entity/IEntity;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mParent:Lorg/anddev/andengine/entity/IEntity;

    return-object v0
.end method

.method public getParentToLocalTransformation()Lorg/anddev/andengine/util/Transformation;
    .locals 8

    const/high16 v7, 0x3f80

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformation:Lorg/anddev/andengine/util/Transformation;

    iget-boolean v1, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/anddev/andengine/util/Transformation;->setToIdentity()V

    iget v1, p0, Lorg/anddev/andengine/entity/Entity;->mX:F

    neg-float v1, v1

    iget v2, p0, Lorg/anddev/andengine/entity/Entity;->mY:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    iget v1, p0, Lorg/anddev/andengine/entity/Entity;->mRotation:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterX:F

    iget v3, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterY:F

    neg-float v4, v2

    neg-float v5, v3

    invoke-virtual {v0, v4, v5}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/util/Transformation;->postRotate(F)V

    invoke-virtual {v0, v2, v3}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    :cond_0
    iget v1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleX:F

    iget v2, p0, Lorg/anddev/andengine/entity/Entity;->mScaleY:F

    cmpl-float v3, v1, v7

    if-nez v3, :cond_1

    cmpl-float v3, v2, v7

    if-eqz v3, :cond_2

    :cond_1
    iget v3, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterX:F

    iget v4, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterY:F

    neg-float v5, v3

    neg-float v6, v4

    invoke-virtual {v0, v5, v6}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    div-float v1, v7, v1

    div-float v2, v7, v2

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/util/Transformation;->postScale(FF)V

    invoke-virtual {v0, v3, v4}, Lorg/anddev/andengine/util/Transformation;->postTranslate(FF)V

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    :cond_3
    return-object v0
.end method

.method public getRed()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mRed:F

    return v0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mRotation:F

    return v0
.end method

.method public getRotationCenterX()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterX:F

    return v0
.end method

.method public getRotationCenterY()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterY:F

    return v0
.end method

.method public getScaleCenterX()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterX:F

    return v0
.end method

.method public getScaleCenterY()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterY:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mScaleY:F

    return v0
.end method

.method public getSceneCenterCoordinates()[F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/anddev/andengine/entity/Entity;->convertLocalToSceneCoordinates(FF)[F

    move-result-object v0

    return-object v0
.end method

.method public getSceneToLocalTransformation()Lorg/anddev/andengine/util/Transformation;
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mSceneToLocalTransformation:Lorg/anddev/andengine/util/Transformation;

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/Entity;->getParentToLocalTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/util/Transformation;->setTo(Lorg/anddev/andengine/util/Transformation;)V

    iget-object v1, p0, Lorg/anddev/andengine/entity/Entity;->mParent:Lorg/anddev/andengine/entity/IEntity;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/anddev/andengine/entity/IEntity;->getSceneToLocalTransformation()Lorg/anddev/andengine/util/Transformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/util/Transformation;->postConcat(Lorg/anddev/andengine/util/Transformation;)V

    :cond_0
    return-object v0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mUserData:Ljava/lang/Object;

    return-object v0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mY:F

    return v0
.end method

.method public getZIndex()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mZIndex:I

    return v0
.end method

.method public hasParent()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mParent:Lorg/anddev/andengine/entity/IEntity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChildrenIgnoreUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildrenIgnoreUpdate:Z

    return v0
.end method

.method public isChildrenVisible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildrenVisible:Z

    return v0
.end method

.method public isIgnoreUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mIgnoreUpdate:Z

    return v0
.end method

.method public isRotated()Z
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mRotation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScaled()Z
    .locals 2

    const/high16 v1, 0x3f80

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mScaleX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mScaleY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mVisible:Z

    return v0
.end method

.method protected onApplyTransformations(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/Entity;->applyTranslation(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/Entity;->applyRotation(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/Entity;->applyScale(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public onAttached()V
    .locals 0

    return-void
.end method

.method public onDetached()V
    .locals 0

    return-void
.end method

.method public final onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/entity/Entity;->onManagedDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    :cond_0
    return-void
.end method

.method protected onDrawChildren(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildrenVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/entity/Entity;->onManagedDrawChildren(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    :cond_0
    return-void
.end method

.method protected onManagedDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 0

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/Entity;->onApplyTransformations(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/entity/Entity;->doDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/entity/Entity;->onDrawChildren(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    return-void
.end method

.method public onManagedDrawChildren(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 4

    iget-object v2, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/IEntity;

    invoke-interface {v0, p1, p2}, Lorg/anddev/andengine/entity/IEntity;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected onManagedUpdate(F)V
    .locals 4

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/modifier/EntityModifierList;->onUpdate(F)V

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->onUpdate(F)V

    :cond_1
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildrenIgnoreUpdate:Z

    if-nez v0, :cond_2

    iget-object v2, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/IEntity;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/entity/IEntity;->onUpdate(F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final onUpdate(F)V
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mIgnoreUpdate:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/Entity;->onManagedUpdate(F)V

    :cond_0
    return-void
.end method

.method public registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/anddev/andengine/entity/Entity;->allocateEntityModifiers()V

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/modifier/EntityModifierList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/anddev/andengine/entity/Entity;->allocateUpdateHandlers()V

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    iput-boolean v2, p0, Lorg/anddev/andengine/entity/Entity;->mVisible:Z

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mIgnoreUpdate:Z

    iput-boolean v2, p0, Lorg/anddev/andengine/entity/Entity;->mChildrenVisible:Z

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildrenIgnoreUpdate:Z

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mInitialX:F

    iput v0, p0, Lorg/anddev/andengine/entity/Entity;->mX:F

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mInitialY:F

    iput v0, p0, Lorg/anddev/andengine/entity/Entity;->mY:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/entity/Entity;->mRotation:F

    iput v1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleX:F

    iput v1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleY:F

    iput v1, p0, Lorg/anddev/andengine/entity/Entity;->mRed:F

    iput v1, p0, Lorg/anddev/andengine/entity/Entity;->mGreen:F

    iput v1, p0, Lorg/anddev/andengine/entity/Entity;->mBlue:F

    iput v1, p0, Lorg/anddev/andengine/entity/Entity;->mAlpha:F

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/EntityModifierList;->reset()V

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/IEntity;

    invoke-interface {v0}, Lorg/anddev/andengine/entity/IEntity;->reset()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mAlpha:F

    return-void
.end method

.method public setChildIndex(Lorg/anddev/andengine/entity/IEntity;I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->getParent()Lorg/anddev/andengine/entity/IEntity;

    move-result-object v1

    if-eq v1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v1, p1}, Lorg/anddev/andengine/util/SmartList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v1, p2, p1}, Lorg/anddev/andengine/util/SmartList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setChildrenIgnoreUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/entity/Entity;->mChildrenIgnoreUpdate:Z

    return-void
.end method

.method public setChildrenVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/entity/Entity;->mChildrenVisible:Z

    return-void
.end method

.method public setColor(FFF)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mRed:F

    iput p2, p0, Lorg/anddev/andengine/entity/Entity;->mGreen:F

    iput p3, p0, Lorg/anddev/andengine/entity/Entity;->mBlue:F

    return-void
.end method

.method public setColor(FFFF)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mRed:F

    iput p2, p0, Lorg/anddev/andengine/entity/Entity;->mGreen:F

    iput p3, p0, Lorg/anddev/andengine/entity/Entity;->mBlue:F

    iput p4, p0, Lorg/anddev/andengine/entity/Entity;->mAlpha:F

    return-void
.end method

.method public setIgnoreUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/entity/Entity;->mIgnoreUpdate:Z

    return-void
.end method

.method public setInitialPosition()V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mInitialX:F

    iput v0, p0, Lorg/anddev/andengine/entity/Entity;->mX:F

    iget v0, p0, Lorg/anddev/andengine/entity/Entity;->mInitialY:F

    iput v0, p0, Lorg/anddev/andengine/entity/Entity;->mY:F

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    return-void
.end method

.method public setParent(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/entity/Entity;->mParent:Lorg/anddev/andengine/entity/IEntity;

    return-void
.end method

.method public setPosition(FF)V
    .locals 1

    const/4 v0, 0x1

    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mX:F

    iput p2, p0, Lorg/anddev/andengine/entity/Entity;->mY:F

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    return-void
.end method

.method public setPosition(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 2

    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->getX()F

    move-result v0

    invoke-interface {p1}, Lorg/anddev/andengine/entity/IEntity;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/entity/Entity;->setPosition(FF)V

    return-void
.end method

.method public setRotation(F)V
    .locals 1

    const/4 v0, 0x1

    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mRotation:F

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    return-void
.end method

.method public setRotationCenter(FF)V
    .locals 1

    const/4 v0, 0x1

    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterX:F

    iput p2, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterY:F

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    return-void
.end method

.method public setRotationCenterX(F)V
    .locals 1

    const/4 v0, 0x1

    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterX:F

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    return-void
.end method

.method public setRotationCenterY(F)V
    .locals 1

    const/4 v0, 0x1

    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mRotationCenterY:F

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    return-void
.end method

.method public setScale(F)V
    .locals 1

    const/4 v0, 0x1

    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleX:F

    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleY:F

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    return-void
.end method

.method public setScale(FF)V
    .locals 1

    const/4 v0, 0x1

    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleX:F

    iput p2, p0, Lorg/anddev/andengine/entity/Entity;->mScaleY:F

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    return-void
.end method

.method public setScaleCenter(FF)V
    .locals 1

    const/4 v0, 0x1

    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterX:F

    iput p2, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterY:F

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    return-void
.end method

.method public setScaleCenterX(F)V
    .locals 1

    const/4 v0, 0x1

    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterX:F

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    return-void
.end method

.method public setScaleCenterY(F)V
    .locals 1

    const/4 v0, 0x1

    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleCenterY:F

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    return-void
.end method

.method public setScaleX(F)V
    .locals 1

    const/4 v0, 0x1

    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleX:F

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    return-void
.end method

.method public setScaleY(F)V
    .locals 1

    const/4 v0, 0x1

    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mScaleY:F

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/entity/Entity;->mUserData:Ljava/lang/Object;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/entity/Entity;->mVisible:Z

    return-void
.end method

.method public setZIndex(I)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/entity/Entity;->mZIndex:I

    return-void
.end method

.method public sortChildren()V
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/anddev/andengine/entity/ZIndexSorter;->getInstance()Lorg/anddev/andengine/entity/ZIndexSorter;

    move-result-object v0

    iget-object v1, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/ZIndexSorter;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method public sortChildren(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/anddev/andengine/entity/ZIndexSorter;->getInstance()Lorg/anddev/andengine/entity/ZIndexSorter;

    move-result-object v0

    iget-object v1, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-virtual {v0, v1, p1}, Lorg/anddev/andengine/entity/ZIndexSorter;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public swapChildren(II)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mChildren:Lorg/anddev/andengine/util/SmartList;

    invoke-static {v0, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public swapChildren(Lorg/anddev/andengine/entity/IEntity;Lorg/anddev/andengine/entity/IEntity;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/Entity;->getChildIndex(Lorg/anddev/andengine/entity/IEntity;)I

    move-result v0

    invoke-virtual {p0, p2}, Lorg/anddev/andengine/entity/Entity;->getChildIndex(Lorg/anddev/andengine/entity/IEntity;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/entity/Entity;->swapChildren(II)Z

    move-result v0

    return v0
.end method

.method public unregisterEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/modifier/EntityModifierList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public unregisterEntityModifiers(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierMatcher;)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mEntityModifiers:Lorg/anddev/andengine/entity/modifier/EntityModifierList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/modifier/EntityModifierList;->removeAll(Lorg/anddev/andengine/util/IMatcher;)Z

    move-result v0

    goto :goto_0
.end method

.method public unregisterUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public unregisterUpdateHandlers(Lorg/anddev/andengine/engine/handler/IUpdateHandler$IUpdateHandlerMatcher;)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/entity/Entity;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->removeAll(Lorg/anddev/andengine/util/IMatcher;)Z

    move-result v0

    goto :goto_0
.end method
