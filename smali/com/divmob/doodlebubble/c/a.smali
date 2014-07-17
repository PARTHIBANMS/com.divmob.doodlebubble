.class public Lcom/divmob/doodlebubble/c/a;
.super Lcom/divmob/maegame/g/c;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Bingo!"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Nice!"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Excellent!"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Good!"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "WOW!"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Bravo!"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Really Cool!"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Great Work!"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Amazing!"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Awesome!"

    aput-object v2, v0, v1

    sput-object v0, Lcom/divmob/doodlebubble/c/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/divmob/maegame/g/d;)V
    .locals 2

    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lcom/divmob/maegame/g/c;-><init>(Ljava/lang/String;Lcom/divmob/maegame/g/d;)V

    const/4 v0, 0x0

    const/high16 v1, 0x43da

    invoke-virtual {p0, v0, v1}, Lcom/divmob/doodlebubble/c/a;->setPosition(FF)V

    return-void
.end method

.method static synthetic a(Lcom/divmob/doodlebubble/c/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/divmob/doodlebubble/c/a;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-boolean v0, p0, Lcom/divmob/doodlebubble/c/a;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/divmob/doodlebubble/c/a;->clearEntityModifiers()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/divmob/doodlebubble/c/a;->b:Z

    invoke-static {p0}, Lcom/divmob/maegame/g/e;->d(Lorg/anddev/andengine/entity/Entity;)V

    sget-object v0, Lcom/divmob/doodlebubble/c/a;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/c/a;->a(Ljava/lang/String;)V

    sget v0, Lcom/divmob/maegame/a/a;->g:I

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/c/a;->b(I)V

    new-instance v0, Lorg/anddev/andengine/entity/modifier/DelayModifier;

    const/high16 v1, 0x3fc0

    new-instance v2, Lcom/divmob/doodlebubble/c/b;

    invoke-direct {v2, p0}, Lcom/divmob/doodlebubble/c/b;-><init>(Lcom/divmob/doodlebubble/c/a;)V

    invoke-direct {v0, v1, v2}, Lorg/anddev/andengine/entity/modifier/DelayModifier;-><init>(FLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/c/a;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    return-void
.end method

.method public a(Lorg/anddev/andengine/entity/scene/Scene;I)V
    .locals 1

    invoke-virtual {p1, p2}, Lorg/anddev/andengine/entity/scene/Scene;->getChild(I)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/anddev/andengine/entity/IEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method
