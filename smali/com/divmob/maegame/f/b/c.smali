.class public Lcom/divmob/maegame/f/b/c;
.super Ljava/lang/Object;


# static fields
.field private static final k:I = 0x1a


# instance fields
.field private A:Lorg/anddev/andengine/entity/modifier/AlphaModifier;

.field private B:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

.field private C:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

.field public a:I

.field public b:I

.field public c:Lorg/anddev/andengine/entity/scene/Scene;

.field public d:F

.field public e:F

.field public f:F

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private l:[Lorg/anddev/andengine/entity/sprite/Sprite;

.field private m:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private n:Lcom/divmob/maegame/f/b/b;

.field private o:F

.field private p:[Ljava/lang/String;

.field private q:F

.field private r:F

.field private s:F

.field private t:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

.field private u:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

.field private v:Lorg/anddev/andengine/entity/modifier/MoveXModifier;

.field private w:Lorg/anddev/andengine/entity/modifier/MoveXModifier;

.field private x:Lorg/anddev/andengine/entity/modifier/MoveXModifier;

.field private y:Lorg/anddev/andengine/entity/modifier/MoveXModifier;

.field private z:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;


# direct methods
.method public constructor <init>(Lcom/divmob/maegame/game/MBaseGameActivity;Lorg/anddev/andengine/entity/scene/Scene;IILjava/lang/String;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/divmob/maegame/f/b/c;->d:F

    iput v0, p0, Lcom/divmob/maegame/f/b/c;->e:F

    iput-object p2, p0, Lcom/divmob/maegame/f/b/c;->c:Lorg/anddev/andengine/entity/scene/Scene;

    iput p3, p0, Lcom/divmob/maegame/f/b/c;->i:I

    rem-int v0, p3, p4

    sub-int v0, p3, v0

    div-int v1, v0, p4

    rem-int v0, p3, p4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lcom/divmob/maegame/f/b/c;->h:I

    iget v0, p1, Lcom/divmob/maegame/game/MBaseGameActivity;->s:I

    iput v0, p0, Lcom/divmob/maegame/f/b/c;->a:I

    iget v0, p1, Lcom/divmob/maegame/game/MBaseGameActivity;->t:I

    iput v0, p0, Lcom/divmob/maegame/f/b/c;->b:I

    new-instance v0, Lcom/divmob/maegame/f/b/b;

    invoke-direct {v0, p1, p2, p4, p5}, Lcom/divmob/maegame/f/b/b;-><init>(Lcom/divmob/maegame/game/MBaseGameActivity;Lorg/anddev/andengine/entity/scene/Scene;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/divmob/maegame/f/b/c;->n:Lcom/divmob/maegame/f/b/b;

    iput p6, p0, Lcom/divmob/maegame/f/b/c;->g:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/divmob/maegame/f/b/c;)Lorg/anddev/andengine/entity/modifier/MoveXModifier;
    .locals 1

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->v:Lorg/anddev/andengine/entity/modifier/MoveXModifier;

    return-object v0
.end method

.method private a(ILorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 4

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->n:Lcom/divmob/maegame/f/b/b;

    iget v1, p0, Lcom/divmob/maegame/f/b/c;->j:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/divmob/maegame/f/b/c;->i:I

    iget-object v3, p0, Lcom/divmob/maegame/f/b/c;->p:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/divmob/maegame/f/b/b;->a(II[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->n:Lcom/divmob/maegame/f/b/b;

    invoke-virtual {v0, p2}, Lcom/divmob/maegame/f/b/b;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    iget v0, p0, Lcom/divmob/maegame/f/b/c;->j:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/divmob/maegame/f/b/c;->j:I

    invoke-direct {p0}, Lcom/divmob/maegame/f/b/c;->g()V

    return-void
.end method

.method static synthetic a(Lcom/divmob/maegame/f/b/c;ILorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/divmob/maegame/f/b/c;->a(ILorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    return-void
.end method

.method static synthetic b(Lcom/divmob/maegame/f/b/c;)Lorg/anddev/andengine/entity/modifier/MoveXModifier;
    .locals 1

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->w:Lorg/anddev/andengine/entity/modifier/MoveXModifier;

    return-object v0
.end method

.method private b(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;F)V
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3f00

    iput v0, p0, Lcom/divmob/maegame/f/b/c;->j:I

    iget v1, p0, Lcom/divmob/maegame/f/b/c;->h:I

    new-array v1, v1, [Lorg/anddev/andengine/entity/sprite/Sprite;

    iput-object v1, p0, Lcom/divmob/maegame/f/b/c;->l:[Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/divmob/maegame/f/b/c;->l:[Lorg/anddev/andengine/entity/sprite/Sprite;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1a

    int-to-float v1, v1

    iget v2, p0, Lcom/divmob/maegame/f/b/c;->a:I

    int-to-float v2, v2

    sub-float v1, v2, v1

    mul-float/2addr v1, v6

    iget v2, p0, Lcom/divmob/maegame/f/b/c;->b:I

    add-int/lit8 v2, v2, -0x3c

    int-to-float v2, v2

    :goto_0
    iget-object v3, p0, Lcom/divmob/maegame/f/b/c;->l:[Lorg/anddev/andengine/entity/sprite/Sprite;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-direct {v0, v7, v7, p1}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/divmob/maegame/f/b/c;->m:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->m:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, p3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScaleY(F)V

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->c:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v1, p0, Lcom/divmob/maegame/f/b/c;->m:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/divmob/maegame/f/b/c;->q:F

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v6

    iput v0, p0, Lcom/divmob/maegame/f/b/c;->r:F

    iget v0, p0, Lcom/divmob/maegame/f/b/c;->a:I

    int-to-float v0, v0

    iput v0, p0, Lcom/divmob/maegame/f/b/c;->s:F

    invoke-direct {p0}, Lcom/divmob/maegame/f/b/c;->g()V

    invoke-direct {p0}, Lcom/divmob/maegame/f/b/c;->l()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/divmob/maegame/f/b/c;->l:[Lorg/anddev/andengine/entity/sprite/Sprite;

    new-instance v4, Lorg/anddev/andengine/entity/sprite/Sprite;

    mul-int/lit8 v5, v0, 0x1a

    int-to-float v5, v5

    add-float/2addr v5, v1

    invoke-direct {v4, v5, v2, p2}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/divmob/maegame/f/b/c;->l:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v3, v3, v0

    invoke-virtual {v3, p3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setScaleY(F)V

    iget-object v3, p0, Lcom/divmob/maegame/f/b/c;->c:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v4, p0, Lcom/divmob/maegame/f/b/c;->l:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/divmob/maegame/f/b/c;)Lorg/anddev/andengine/entity/modifier/AlphaModifier;
    .locals 1

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->A:Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    return-object v0
.end method

.method private g()V
    .locals 7

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->l:[Lorg/anddev/andengine/entity/sprite/Sprite;

    iget v1, p0, Lcom/divmob/maegame/f/b/c;->j:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v0

    iget v1, p0, Lcom/divmob/maegame/f/b/c;->q:F

    sub-float v3, v0, v1

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->l:[Lorg/anddev/andengine/entity/sprite/Sprite;

    iget v1, p0, Lcom/divmob/maegame/f/b/c;->j:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v0

    iget v1, p0, Lcom/divmob/maegame/f/b/c;->r:F

    sub-float v5, v0, v1

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->m:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->clearEntityModifiers()V

    iget-object v6, p0, Lcom/divmob/maegame/f/b/c;->m:Lorg/anddev/andengine/entity/sprite/Sprite;

    new-instance v0, Lorg/anddev/andengine/entity/modifier/MoveModifier;

    const v1, 0x3e99999a

    iget-object v2, p0, Lcom/divmob/maegame/f/b/c;->m:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v2

    iget-object v4, p0, Lcom/divmob/maegame/f/b/c;->m:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/MoveModifier;-><init>(FFFFF)V

    invoke-virtual {v6, v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->n:Lcom/divmob/maegame/f/b/b;

    invoke-virtual {v0}, Lcom/divmob/maegame/f/b/b;->clearEntityModifiers()V

    iget v0, p0, Lcom/divmob/maegame/f/b/c;->g:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->n:Lcom/divmob/maegame/f/b/b;

    iget-object v1, p0, Lcom/divmob/maegame/f/b/c;->z:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/f/b/b;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->n:Lcom/divmob/maegame/f/b/b;

    iget-object v1, p0, Lcom/divmob/maegame/f/b/c;->t:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/f/b/b;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->n:Lcom/divmob/maegame/f/b/b;

    invoke-virtual {v0}, Lcom/divmob/maegame/f/b/b;->clearEntityModifiers()V

    iget v0, p0, Lcom/divmob/maegame/f/b/c;->g:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->n:Lcom/divmob/maegame/f/b/b;

    iget-object v1, p0, Lcom/divmob/maegame/f/b/c;->z:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/f/b/b;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->n:Lcom/divmob/maegame/f/b/b;

    iget-object v1, p0, Lcom/divmob/maegame/f/b/c;->u:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/f/b/b;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->n:Lcom/divmob/maegame/f/b/b;

    invoke-virtual {v0}, Lcom/divmob/maegame/f/b/b;->clearEntityModifiers()V

    iget v0, p0, Lcom/divmob/maegame/f/b/c;->g:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->n:Lcom/divmob/maegame/f/b/b;

    iget-object v1, p0, Lcom/divmob/maegame/f/b/c;->C:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/f/b/b;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->n:Lcom/divmob/maegame/f/b/b;

    iget-object v1, p0, Lcom/divmob/maegame/f/b/c;->y:Lorg/anddev/andengine/entity/modifier/MoveXModifier;

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/f/b/b;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->n:Lcom/divmob/maegame/f/b/b;

    invoke-virtual {v0}, Lcom/divmob/maegame/f/b/b;->clearEntityModifiers()V

    iget v0, p0, Lcom/divmob/maegame/f/b/c;->g:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->n:Lcom/divmob/maegame/f/b/b;

    iget-object v1, p0, Lcom/divmob/maegame/f/b/c;->B:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/f/b/b;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->n:Lcom/divmob/maegame/f/b/b;

    iget-object v1, p0, Lcom/divmob/maegame/f/b/c;->x:Lorg/anddev/andengine/entity/modifier/MoveXModifier;

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/f/b/b;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private l()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v5, 0x3f80

    const v6, 0x3e99999a

    iget v0, p0, Lcom/divmob/maegame/f/b/c;->g:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    new-array v1, v9, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    new-instance v2, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const/high16 v3, 0x3f00

    const/high16 v4, 0x3f00

    invoke-direct {v2, v3, v5, v4}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v2, v1, v7

    new-instance v2, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const/high16 v3, 0x3f00

    const/high16 v4, 0x3f00

    invoke-direct {v2, v3, v4, v5}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v2, v1, v8

    invoke-direct {v0, v1}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    iput-object v0, p0, Lcom/divmob/maegame/f/b/c;->z:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    new-instance v0, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const/4 v1, 0x0

    invoke-direct {v0, v5, v1, v5}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    iput-object v0, p0, Lcom/divmob/maegame/f/b/c;->A:Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    new-instance v0, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    new-array v1, v9, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    new-instance v2, Lorg/anddev/andengine/entity/modifier/DelayModifier;

    invoke-direct {v2, v6}, Lorg/anddev/andengine/entity/modifier/DelayModifier;-><init>(F)V

    aput-object v2, v1, v7

    new-instance v2, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const/4 v3, 0x0

    new-instance v4, Lcom/divmob/maegame/f/b/f;

    invoke-direct {v4, p0}, Lcom/divmob/maegame/f/b/f;-><init>(Lcom/divmob/maegame/f/b/c;)V

    invoke-direct {v2, v5, v5, v3, v4}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    aput-object v2, v1, v8

    invoke-direct {v0, v1}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    iput-object v0, p0, Lcom/divmob/maegame/f/b/c;->B:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    new-instance v0, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    new-array v1, v9, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    new-instance v2, Lorg/anddev/andengine/entity/modifier/DelayModifier;

    invoke-direct {v2, v6}, Lorg/anddev/andengine/entity/modifier/DelayModifier;-><init>(F)V

    aput-object v2, v1, v7

    new-instance v2, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const/4 v3, 0x0

    new-instance v4, Lcom/divmob/maegame/f/b/g;

    invoke-direct {v4, p0}, Lcom/divmob/maegame/f/b/g;-><init>(Lcom/divmob/maegame/f/b/c;)V

    invoke-direct {v2, v5, v5, v3, v4}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    aput-object v2, v1, v8

    invoke-direct {v0, v1}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    iput-object v0, p0, Lcom/divmob/maegame/f/b/c;->C:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    new-array v1, v9, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    new-instance v2, Lorg/anddev/andengine/entity/modifier/MoveXModifier;

    const/high16 v3, 0x3e80

    iget v4, p0, Lcom/divmob/maegame/f/b/c;->d:F

    iget v5, p0, Lcom/divmob/maegame/f/b/c;->a:I

    int-to-float v5, v5

    mul-float/2addr v5, v6

    invoke-direct {v2, v3, v4, v5}, Lorg/anddev/andengine/entity/modifier/MoveXModifier;-><init>(FFF)V

    aput-object v2, v1, v7

    new-instance v2, Lorg/anddev/andengine/entity/modifier/MoveXModifier;

    const/high16 v3, 0x3e80

    iget v4, p0, Lcom/divmob/maegame/f/b/c;->a:I

    int-to-float v4, v4

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/divmob/maegame/f/b/c;->d:F

    invoke-direct {v2, v3, v4, v5}, Lorg/anddev/andengine/entity/modifier/MoveXModifier;-><init>(FFF)V

    aput-object v2, v1, v8

    invoke-direct {v0, v1}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    iput-object v0, p0, Lcom/divmob/maegame/f/b/c;->t:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    new-instance v0, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    new-array v1, v9, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    new-instance v2, Lorg/anddev/andengine/entity/modifier/MoveXModifier;

    const/high16 v3, 0x3e80

    iget v4, p0, Lcom/divmob/maegame/f/b/c;->d:F

    iget v5, p0, Lcom/divmob/maegame/f/b/c;->a:I

    neg-int v5, v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    invoke-direct {v2, v3, v4, v5}, Lorg/anddev/andengine/entity/modifier/MoveXModifier;-><init>(FFF)V

    aput-object v2, v1, v7

    new-instance v2, Lorg/anddev/andengine/entity/modifier/MoveXModifier;

    const/high16 v3, 0x3e80

    iget v4, p0, Lcom/divmob/maegame/f/b/c;->a:I

    neg-int v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    iget v5, p0, Lcom/divmob/maegame/f/b/c;->d:F

    invoke-direct {v2, v3, v4, v5}, Lorg/anddev/andengine/entity/modifier/MoveXModifier;-><init>(FFF)V

    aput-object v2, v1, v8

    invoke-direct {v0, v1}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    iput-object v0, p0, Lcom/divmob/maegame/f/b/c;->u:Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    new-instance v0, Lorg/anddev/andengine/entity/modifier/MoveXModifier;

    iget v1, p0, Lcom/divmob/maegame/f/b/c;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/divmob/maegame/f/b/c;->d:F

    invoke-direct {v0, v6, v1, v2}, Lorg/anddev/andengine/entity/modifier/MoveXModifier;-><init>(FFF)V

    iput-object v0, p0, Lcom/divmob/maegame/f/b/c;->v:Lorg/anddev/andengine/entity/modifier/MoveXModifier;

    new-instance v0, Lorg/anddev/andengine/entity/modifier/MoveXModifier;

    iget v1, p0, Lcom/divmob/maegame/f/b/c;->s:F

    neg-float v1, v1

    iget v2, p0, Lcom/divmob/maegame/f/b/c;->d:F

    invoke-direct {v0, v6, v1, v2}, Lorg/anddev/andengine/entity/modifier/MoveXModifier;-><init>(FFF)V

    iput-object v0, p0, Lcom/divmob/maegame/f/b/c;->w:Lorg/anddev/andengine/entity/modifier/MoveXModifier;

    new-instance v0, Lorg/anddev/andengine/entity/modifier/MoveXModifier;

    iget v1, p0, Lcom/divmob/maegame/f/b/c;->d:F

    iget v2, p0, Lcom/divmob/maegame/f/b/c;->s:F

    neg-float v2, v2

    new-instance v3, Lcom/divmob/maegame/f/b/d;

    invoke-direct {v3, p0}, Lcom/divmob/maegame/f/b/d;-><init>(Lcom/divmob/maegame/f/b/c;)V

    invoke-direct {v0, v6, v1, v2, v3}, Lorg/anddev/andengine/entity/modifier/MoveXModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    iput-object v0, p0, Lcom/divmob/maegame/f/b/c;->x:Lorg/anddev/andengine/entity/modifier/MoveXModifier;

    new-instance v0, Lorg/anddev/andengine/entity/modifier/MoveXModifier;

    iget v1, p0, Lcom/divmob/maegame/f/b/c;->d:F

    iget v2, p0, Lcom/divmob/maegame/f/b/c;->a:I

    int-to-float v2, v2

    new-instance v3, Lcom/divmob/maegame/f/b/e;

    invoke-direct {v3, p0}, Lcom/divmob/maegame/f/b/e;-><init>(Lcom/divmob/maegame/f/b/c;)V

    invoke-direct {v0, v6, v1, v2, v3}, Lorg/anddev/andengine/entity/modifier/MoveXModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    iput-object v0, p0, Lcom/divmob/maegame/f/b/c;->y:Lorg/anddev/andengine/entity/modifier/MoveXModifier;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/divmob/maegame/f/b/c;->l:[Lorg/anddev/andengine/entity/sprite/Sprite;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->m:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-static {v0}, Lcom/divmob/maegame/g/e;->c(Lorg/anddev/andengine/entity/Entity;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/divmob/maegame/f/b/c;->l:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/divmob/maegame/g/e;->c(Lorg/anddev/andengine/entity/Entity;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(IIFFFF)V
    .locals 7

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->n:Lcom/divmob/maegame/f/b/b;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/divmob/maegame/f/b/b;->a(IIFFFF)V

    iget v0, p0, Lcom/divmob/maegame/f/b/c;->b:I

    int-to-float v0, v0

    sub-float/2addr v0, p4

    iput v0, p0, Lcom/divmob/maegame/f/b/c;->o:F

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/divmob/maegame/f/b/c;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 5

    const/4 v1, 0x0

    iget v0, p0, Lcom/divmob/maegame/f/b/c;->i:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/divmob/maegame/f/b/c;->p:[Ljava/lang/String;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/divmob/maegame/f/b/c;->p:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->n:Lcom/divmob/maegame/f/b/b;

    iget v2, p0, Lcom/divmob/maegame/f/b/c;->i:I

    iget-object v3, p0, Lcom/divmob/maegame/f/b/c;->p:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/divmob/maegame/f/b/b;->a(II[Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/divmob/maegame/f/b/c;->p:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v4, v0, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;F)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/divmob/maegame/f/b/c;->b(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;F)V

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/divmob/maegame/f/b/c;->p:[Ljava/lang/String;

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->n:Lcom/divmob/maegame/f/b/b;

    const/4 v1, 0x0

    iget v2, p0, Lcom/divmob/maegame/f/b/c;->i:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/divmob/maegame/f/b/b;->a(II[Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/divmob/maegame/f/b/c;->c:Lorg/anddev/andengine/entity/scene/Scene;

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/divmob/maegame/f/b/c;->o:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/divmob/maegame/f/b/c;->f:F

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/divmob/maegame/f/b/c;->f:F

    sub-float/2addr v1, v2

    mul-float v2, v1, v1

    const/high16 v3, 0x437a

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget v1, p0, Lcom/divmob/maegame/f/b/c;->j:I

    if-gtz v1, :cond_2

    invoke-direct {p0}, Lcom/divmob/maegame/f/b/c;->h()V

    :goto_1
    invoke-direct {p0}, Lcom/divmob/maegame/f/b/c;->l()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/divmob/maegame/f/b/c;->j()V

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/divmob/maegame/f/b/c;->j:I

    iget v2, p0, Lcom/divmob/maegame/f/b/c;->h:I

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_4

    invoke-direct {p0}, Lcom/divmob/maegame/f/b/c;->i()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/divmob/maegame/f/b/c;->k()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->n:Lcom/divmob/maegame/f/b/b;

    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/divmob/maegame/f/b/c;->j:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/divmob/maegame/f/b/b;->a(FFI)V

    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/divmob/maegame/f/b/c;->l:[Lorg/anddev/andengine/entity/sprite/Sprite;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->m:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-static {v0}, Lcom/divmob/maegame/g/e;->b(Lorg/anddev/andengine/entity/Entity;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/divmob/maegame/f/b/c;->l:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/divmob/maegame/g/e;->b(Lorg/anddev/andengine/entity/Entity;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public c()Lorg/anddev/andengine/entity/primitive/BaseRectangle;
    .locals 1

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->n:Lcom/divmob/maegame/f/b/b;

    return-object v0
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/divmob/maegame/f/b/c;->f()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/divmob/maegame/f/b/c;->j:I

    return v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/divmob/maegame/f/b/c;->n:Lcom/divmob/maegame/f/b/b;

    invoke-virtual {v0}, Lcom/divmob/maegame/f/b/b;->a()I

    move-result v0

    return v0
.end method
