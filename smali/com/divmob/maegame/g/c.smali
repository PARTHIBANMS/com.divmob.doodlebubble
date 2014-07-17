.class public Lcom/divmob/maegame/g/c;
.super Lorg/anddev/andengine/entity/primitive/Rectangle;


# instance fields
.field private a:Lcom/divmob/maegame/g/d;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/sprite/AnimatedSprite;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/entity/sprite/AnimatedSprite;",
            ">;"
        }
    .end annotation
.end field

.field private d:I


# direct methods
.method public constructor <init>(FFLjava/lang/String;Lcom/divmob/maegame/g/d;)V
    .locals 1

    const v0, 0x3dcccccd

    invoke-direct {p0, p1, p2, v0, v0}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    iput-object p4, p0, Lcom/divmob/maegame/g/c;->a:Lcom/divmob/maegame/g/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/divmob/maegame/g/c;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/divmob/maegame/g/c;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Lcom/divmob/maegame/g/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/divmob/maegame/g/c;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/divmob/maegame/g/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/divmob/maegame/g/c;-><init>(FFLjava/lang/String;Lcom/divmob/maegame/g/d;)V

    return-void
.end method

.method private c(I)V
    .locals 2

    iget-object v0, p0, Lcom/divmob/maegame/g/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/maegame/g/c;->a:Lcom/divmob/maegame/g/d;

    invoke-virtual {v0}, Lcom/divmob/maegame/g/d;->a()Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    iget-object v1, p0, Lcom/divmob/maegame/g/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/divmob/maegame/g/c;->a:Lcom/divmob/maegame/g/d;

    invoke-virtual {v1, v0, p1}, Lcom/divmob/maegame/g/d;->a(Lorg/anddev/andengine/entity/sprite/AnimatedSprite;I)V

    invoke-virtual {p0, v0}, Lcom/divmob/maegame/g/c;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/divmob/maegame/g/c;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    iget-object v1, p0, Lcom/divmob/maegame/g/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/divmob/maegame/g/e;->d(Lorg/anddev/andengine/entity/Entity;)V

    iget-object v1, p0, Lcom/divmob/maegame/g/c;->a:Lcom/divmob/maegame/g/d;

    invoke-virtual {v1, v0, p1}, Lcom/divmob/maegame/g/d;->a(Lorg/anddev/andengine/entity/sprite/AnimatedSprite;I)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iput p1, p0, Lcom/divmob/maegame/g/c;->d:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/divmob/maegame/g/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/divmob/maegame/g/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/Entity;

    invoke-static {v0, p1}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/Entity;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/divmob/maegame/g/c;->a:Lcom/divmob/maegame/g/d;

    invoke-virtual {v1}, Lcom/divmob/maegame/g/d;->b()V

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v2, v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/divmob/maegame/g/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/divmob/maegame/g/c;->d:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/divmob/maegame/g/c;->d:I

    invoke-virtual {p0, v0}, Lcom/divmob/maegame/g/c;->a(I)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v0, 0x20

    if-ne v4, v0, :cond_3

    iget-object v0, p0, Lcom/divmob/maegame/g/c;->a:Lcom/divmob/maegame/g/d;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/divmob/maegame/g/d;->a(Lorg/anddev/andengine/entity/sprite/AnimatedSprite;I)V

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/divmob/maegame/g/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    iget-object v1, p0, Lcom/divmob/maegame/g/c;->a:Lcom/divmob/maegame/g/d;

    invoke-virtual {v1, v0, v4}, Lcom/divmob/maegame/g/d;->a(Lorg/anddev/andengine/entity/sprite/AnimatedSprite;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v0, v3, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v4}, Lcom/divmob/maegame/g/c;->c(I)V

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/divmob/maegame/g/c;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/divmob/maegame/g/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    iget-object v2, p0, Lcom/divmob/maegame/g/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/divmob/maegame/g/e;->e(Lorg/anddev/andengine/entity/Entity;)V

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_2
.end method

.method public a(Lorg/anddev/andengine/entity/scene/Scene;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public a(Lorg/anddev/andengine/entity/scene/Scene;I)V
    .locals 1

    invoke-virtual {p1, p2}, Lorg/anddev/andengine/entity/scene/Scene;->getChild(I)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/anddev/andengine/entity/IEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public b()F
    .locals 1

    iget-object v0, p0, Lcom/divmob/maegame/g/c;->a:Lcom/divmob/maegame/g/d;

    invoke-virtual {v0}, Lcom/divmob/maegame/g/d;->c()F

    move-result v0

    return v0
.end method

.method public b(I)V
    .locals 2

    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/divmob/maegame/g/c;->b()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/divmob/maegame/g/c;->mY:F

    invoke-virtual {p0, v0, v1}, Lcom/divmob/maegame/g/c;->setPosition(FF)V

    return-void
.end method

.method public c()F
    .locals 2

    iget-object v0, p0, Lcom/divmob/maegame/g/c;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getHeight()F

    move-result v0

    return v0
.end method

.method public getHeight()F
    .locals 1

    invoke-virtual {p0}, Lcom/divmob/maegame/g/c;->c()F

    move-result v0

    return v0
.end method

.method public getWidth()F
    .locals 1

    invoke-virtual {p0}, Lcom/divmob/maegame/g/c;->b()F

    move-result v0

    return v0
.end method
