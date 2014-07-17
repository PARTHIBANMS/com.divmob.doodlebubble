.class public Lcom/divmob/d/a$a;
.super Lorg/anddev/andengine/entity/Entity;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/divmob/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:[Lorg/anddev/andengine/entity/sprite/Sprite;

.field final synthetic b:Lcom/divmob/d/a;

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:Lorg/anddev/andengine/entity/modifier/MoveYModifier;

.field private k:F

.field private l:F

.field private m:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Lcom/divmob/d/a;Lorg/anddev/andengine/ui/activity/BaseGameActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/divmob/d/a$a;->b:Lcom/divmob/d/a;

    invoke-direct {p0}, Lorg/anddev/andengine/entity/Entity;-><init>()V

    new-instance v0, Lcom/divmob/d/g;

    invoke-direct {v0, p0}, Lcom/divmob/d/g;-><init>(Lcom/divmob/d/a$a;)V

    invoke-virtual {p2, v0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/divmob/d/a$a;->a:[Lorg/anddev/andengine/entity/sprite/Sprite;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/divmob/d/a$a;->a:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/divmob/d/a$a;->k:F

    iget v3, p0, Lcom/divmob/d/a$a;->mY:F

    iget v4, p0, Lcom/divmob/d/a$a;->l:F

    add-float/2addr v3, v4

    int-to-float v4, v0

    iget v5, p0, Lcom/divmob/d/a$a;->f:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/divmob/d/a$a;Landroid/view/GestureDetector;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/d/a$a;->m:Landroid/view/GestureDetector;

    return-void
.end method

.method private b(FF)V
    .locals 5

    const/4 v3, 0x0

    iput p2, p0, Lcom/divmob/d/a$a;->i:F

    iget v0, p0, Lcom/divmob/d/a$a;->mY:F

    const v1, 0x3e99999a

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    cmpl-float v1, p2, v3

    if-lez v1, :cond_1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    iget v1, p0, Lcom/divmob/d/a$a;->mY:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v2, v0, v3

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/divmob/d/a$a;->e:F

    neg-float v2, v2

    iget v3, p0, Lcom/divmob/d/a$a;->c:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/divmob/d/a$a;->l:F

    sub-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-nez v2, :cond_2

    :cond_0
    new-instance v2, Lorg/anddev/andengine/entity/modifier/MoveYModifier;

    const/high16 v3, 0x43c8

    div-float/2addr v1, v3

    iget v3, p0, Lcom/divmob/d/a$a;->mY:F

    invoke-static {}, Lorg/anddev/andengine/util/modifier/ease/EaseSineOut;->getInstance()Lorg/anddev/andengine/util/modifier/ease/EaseSineOut;

    move-result-object v4

    invoke-direct {v2, v1, v3, v0, v4}, Lorg/anddev/andengine/entity/modifier/MoveYModifier;-><init>(FFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    iput-object v2, p0, Lcom/divmob/d/a$a;->j:Lorg/anddev/andengine/entity/modifier/MoveYModifier;

    :goto_1
    iget-object v0, p0, Lcom/divmob/d/a$a;->j:Lorg/anddev/andengine/entity/modifier/MoveYModifier;

    invoke-virtual {p0, v0}, Lcom/divmob/d/a$a;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    return-void

    :cond_1
    iget v1, p0, Lcom/divmob/d/a$a;->e:F

    neg-float v1, v1

    iget v2, p0, Lcom/divmob/d/a$a;->c:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/divmob/d/a$a;->l:F

    sub-float/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_0

    :cond_2
    new-instance v2, Lorg/anddev/andengine/entity/modifier/MoveYModifier;

    const/high16 v3, 0x4496

    div-float/2addr v1, v3

    iget v3, p0, Lcom/divmob/d/a$a;->mY:F

    invoke-static {}, Lorg/anddev/andengine/util/modifier/ease/EaseSineOut;->getInstance()Lorg/anddev/andengine/util/modifier/ease/EaseSineOut;

    move-result-object v4

    invoke-direct {v2, v1, v3, v0, v4}, Lorg/anddev/andengine/entity/modifier/MoveYModifier;-><init>(FFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    iput-object v2, p0, Lcom/divmob/d/a$a;->j:Lorg/anddev/andengine/entity/modifier/MoveYModifier;

    goto :goto_1
.end method


# virtual methods
.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/divmob/d/a$a;->c:F

    return-void
.end method

.method public a(FF)V
    .locals 0

    iput p1, p0, Lcom/divmob/d/a$a;->k:F

    iput p2, p0, Lcom/divmob/d/a$a;->l:F

    return-void
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 3

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/divmob/d/a$a;->g:F

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/divmob/d/a$a;->h:F

    iget v0, p0, Lcom/divmob/d/a$a;->g:F

    iget v1, p0, Lcom/divmob/d/a$a;->d:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/divmob/d/a$a;->m:Landroid/view/GestureDetector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/divmob/d/a$a;->m:Landroid/view/GestureDetector;

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getMotionEvent()Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionOutside()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionCancel()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/divmob/d/a$a;->getY()F

    move-result v0

    iget v1, p0, Lcom/divmob/d/a$a;->l:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/divmob/d/a$a;->getY()F

    move-result v0

    iget v1, p0, Lcom/divmob/d/a$a;->e:F

    add-float/2addr v0, v1

    sget v1, Lcom/divmob/d/a;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/divmob/d/a$a;->l:F

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    iget v1, p0, Lcom/divmob/d/a$a;->i:F

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/divmob/d/a$a;->b(FF)V

    :cond_2
    return-void
.end method

.method public a([Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/divmob/d/a$a;->f:F

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/divmob/d/a$a;->d:F

    array-length v1, p1

    int-to-float v1, v1

    iget v2, p0, Lcom/divmob/d/a$a;->f:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/divmob/d/a$a;->e:F

    array-length v1, p1

    new-array v1, v1, [Lorg/anddev/andengine/entity/sprite/Sprite;

    iput-object v1, p0, Lcom/divmob/d/a$a;->a:[Lorg/anddev/andengine/entity/sprite/Sprite;

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/divmob/d/a$a;->a()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/divmob/d/a$a;->a:[Lorg/anddev/andengine/entity/sprite/Sprite;

    new-instance v2, Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v3, p1, v0

    invoke-direct {v2, v4, v4, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/divmob/d/a$a;->a:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/divmob/d/a$a;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/divmob/d/a$a;->j:Lorg/anddev/andengine/entity/modifier/MoveYModifier;

    invoke-virtual {p0, v0}, Lcom/divmob/d/a$a;->unregisterEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/divmob/d/a$a;->j:Lorg/anddev/andengine/entity/modifier/MoveYModifier;

    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    invoke-direct {p0, p3, p4}, Lcom/divmob/d/a$a;->b(FF)V

    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onManagedUpdate(F)V
    .locals 3

    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/Entity;->onManagedUpdate(F)V

    new-instance v0, Ljava/lang/Float;

    iget v1, p0, Lcom/divmob/d/a$a;->mY:F

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0}, Ljava/lang/Float;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Lcom/divmob/d/a$a;->i:F

    neg-float v1, v1

    const/high16 v2, 0x447a

    mul-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/divmob/d/a$a;->setPosition(FF)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    const/high16 v3, 0x3f00

    neg-float v0, p4

    iput v0, p0, Lcom/divmob/d/a$a;->i:F

    iget v0, p0, Lcom/divmob/d/a$a;->mY:F

    sub-float/2addr v0, p4

    iput v0, p0, Lcom/divmob/d/a$a;->mY:F

    iget v0, p0, Lcom/divmob/d/a$a;->mY:F

    iget v1, p0, Lcom/divmob/d/a$a;->f:F

    mul-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/divmob/d/a$a;->f:F

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/divmob/d/a$a;->mY:F

    :cond_0
    iget v0, p0, Lcom/divmob/d/a$a;->mY:F

    iget v1, p0, Lcom/divmob/d/a$a;->e:F

    neg-float v1, v1

    iget v2, p0, Lcom/divmob/d/a$a;->c:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/divmob/d/a$a;->f:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/divmob/d/a$a;->l:F

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/divmob/d/a$a;->e:F

    neg-float v0, v0

    iget v1, p0, Lcom/divmob/d/a$a;->c:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/divmob/d/a$a;->f:F

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/divmob/d/a$a;->l:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/divmob/d/a$a;->mY:F

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/divmob/d/a$a;->a:[Lorg/anddev/andengine/entity/sprite/Sprite;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    :goto_1
    return v1

    :cond_0
    iget-object v2, p0, Lcom/divmob/d/a$a;->a:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v2, v2, v0

    iget v3, p0, Lcom/divmob/d/a$a;->g:F

    iget v4, p0, Lcom/divmob/d/a$a;->h:F

    invoke-virtual {v2, v3, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/divmob/d/a$a;->a(I)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
