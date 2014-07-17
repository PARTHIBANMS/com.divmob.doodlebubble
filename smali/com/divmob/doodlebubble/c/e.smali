.class public Lcom/divmob/doodlebubble/c/e;
.super Lcom/divmob/maegame/g/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/divmob/maegame/g/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/divmob/maegame/g/c;-><init>(Ljava/lang/String;Lcom/divmob/maegame/g/d;)V

    return-void
.end method

.method private a()V
    .locals 1

    invoke-static {p0}, Lcom/divmob/maegame/g/e;->e(Lorg/anddev/andengine/entity/Entity;)V

    sget-object v0, Lcom/divmob/doodlebubble/GameActivity;->j:Lcom/divmob/doodlebubble/c/g;

    invoke-virtual {v0, p0}, Lcom/divmob/doodlebubble/c/g;->b(Lcom/divmob/doodlebubble/c/e;)V

    return-void
.end method

.method static synthetic a(Lcom/divmob/doodlebubble/c/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/divmob/doodlebubble/c/e;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/divmob/doodlebubble/a/a;I)V
    .locals 8

    const/high16 v0, 0x4040

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/c/e;->setScale(F)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/divmob/doodlebubble/c/e;->setPosition(Lorg/anddev/andengine/entity/IEntity;)V

    invoke-virtual {p0}, Lcom/divmob/doodlebubble/c/e;->clearEntityModifiers()V

    invoke-static {p0}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/Entity;)V

    iget v0, p0, Lcom/divmob/doodlebubble/c/e;->mY:F

    const/high16 v1, 0x42c8

    sub-float/2addr v0, v1

    const/high16 v1, 0x3fc0

    new-instance v2, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v4, 0x0

    new-instance v5, Lorg/anddev/andengine/entity/modifier/MoveYModifier;

    iget v6, p0, Lcom/divmob/doodlebubble/c/e;->mY:F

    new-instance v7, Lcom/divmob/doodlebubble/c/f;

    invoke-direct {v7, p0}, Lcom/divmob/doodlebubble/c/f;-><init>(Lcom/divmob/doodlebubble/c/e;)V

    invoke-direct {v5, v1, v6, v0, v7}, Lorg/anddev/andengine/entity/modifier/MoveYModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    aput-object v5, v3, v4

    const/4 v0, 0x1

    new-instance v4, Lorg/anddev/andengine/entity/modifier/AlphaModifier;

    const/high16 v5, 0x3f80

    const v6, 0x3e99999a

    invoke-direct {v4, v1, v5, v6}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFF)V

    aput-object v4, v3, v0

    invoke-direct {v2, v3}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    invoke-virtual {p0, v2}, Lcom/divmob/doodlebubble/c/e;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    return-void
.end method
