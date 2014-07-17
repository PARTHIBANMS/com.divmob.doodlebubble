.class public Lcom/divmob/doodlebubble/e/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/divmob/maegame/g/c;

.field private c:Lcom/divmob/maegame/g/c;

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:I

.field private i:I

.field private j:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private k:I


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lcom/divmob/maegame/g/d;)V
    .locals 4

    const/high16 v3, 0x4110

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-direct {v0, v1, v1, p1}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/e/a;->j:Lorg/anddev/andengine/entity/sprite/Sprite;

    new-instance v0, Lcom/divmob/maegame/g/c;

    const/high16 v1, 0x40c0

    const-string v2, "123"

    invoke-direct {v0, v3, v1, v2, p2}, Lcom/divmob/maegame/g/c;-><init>(FFLjava/lang/String;Lcom/divmob/maegame/g/d;)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/e/a;->c:Lcom/divmob/maegame/g/c;

    new-instance v0, Lcom/divmob/maegame/g/c;

    const/high16 v1, 0x4204

    const-string v2, ""

    invoke-direct {v0, v3, v1, v2, p2}, Lcom/divmob/maegame/g/c;-><init>(FFLjava/lang/String;Lcom/divmob/maegame/g/d;)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/e/a;->b:Lcom/divmob/maegame/g/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/divmob/doodlebubble/e/a;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/divmob/doodlebubble/e/a;->f:I

    return-void
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lcom/divmob/doodlebubble/e/a;->c:Lcom/divmob/maegame/g/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "# "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/divmob/doodlebubble/e/a;->i:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/divmob/doodlebubble/e/a;->e:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/g/c;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/divmob/doodlebubble/e/a;->e:I

    return v0
.end method

.method public a(I)V
    .locals 3

    iget v0, p0, Lcom/divmob/doodlebubble/e/a;->d:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/divmob/doodlebubble/e/a;->d:I

    iget-object v0, p0, Lcom/divmob/doodlebubble/e/a;->b:Lcom/divmob/maegame/g/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "$ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/divmob/doodlebubble/e/a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/g/c;->a(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/divmob/doodlebubble/e/a;->g:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/divmob/doodlebubble/e/a;->d:I

    div-int/lit16 v1, v0, 0x2710

    iget v0, p0, Lcom/divmob/doodlebubble/e/a;->e:I

    if-le v1, v0, :cond_1

    iget-object v0, p0, Lcom/divmob/doodlebubble/e/a;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/divmob/doodlebubble/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v2, Lcom/divmob/common/a/a;->a:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/divmob/doodlebubble/e/a;->a:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iput v1, p0, Lcom/divmob/doodlebubble/e/a;->e:I

    invoke-direct {p0}, Lcom/divmob/doodlebubble/e/a;->h()V

    :cond_1
    return-void
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lcom/divmob/doodlebubble/e/a;->f:I

    iput p1, p0, Lcom/divmob/doodlebubble/e/a;->e:I

    iput p2, p0, Lcom/divmob/doodlebubble/e/a;->i:I

    invoke-direct {p0}, Lcom/divmob/doodlebubble/e/a;->h()V

    return-void
.end method

.method public a(Lorg/anddev/andengine/entity/scene/Scene;I)V
    .locals 2

    invoke-virtual {p1, p2}, Lorg/anddev/andengine/entity/scene/Scene;->getChild(I)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/divmob/doodlebubble/e/a;->j:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/entity/IEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    invoke-virtual {p1, p2}, Lorg/anddev/andengine/entity/scene/Scene;->getChild(I)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/divmob/doodlebubble/e/a;->b:Lcom/divmob/maegame/g/c;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/entity/IEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    invoke-virtual {p1, p2}, Lorg/anddev/andengine/entity/scene/Scene;->getChild(I)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/divmob/doodlebubble/e/a;->c:Lcom/divmob/maegame/g/c;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/entity/IEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public a(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/divmob/doodlebubble/e/a;->g:Z

    if-eqz p1, :cond_0

    iput p2, p0, Lcom/divmob/doodlebubble/e/a;->h:I

    :cond_0
    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/divmob/doodlebubble/e/a;->i:I

    return v0
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/divmob/doodlebubble/e/a;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/divmob/doodlebubble/e/a;->d:I

    return v0
.end method

.method public d()V
    .locals 2

    iget v0, p0, Lcom/divmob/doodlebubble/e/a;->e:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/divmob/doodlebubble/e/a;->i:I

    invoke-virtual {p0, v0, v1}, Lcom/divmob/doodlebubble/e/a;->a(II)V

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/divmob/doodlebubble/e/a;->g:Z

    return v0
.end method

.method public f()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/e/a;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/divmob/doodlebubble/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/divmob/doodlebubble/e/a;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v0, p0, Lcom/divmob/doodlebubble/e/a;->k:I

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public g()V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/divmob/doodlebubble/e/a;->f:I

    iget v2, p0, Lcom/divmob/doodlebubble/e/a;->i:I

    invoke-virtual {p0, v1, v2}, Lcom/divmob/doodlebubble/e/a;->a(II)V

    iput v0, p0, Lcom/divmob/doodlebubble/e/a;->d:I

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/e/a;->a(I)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-boolean v1, p0, Lcom/divmob/doodlebubble/e/a;->g:Z

    if-eqz v1, :cond_0

    :goto_0
    iget v1, p0, Lcom/divmob/doodlebubble/e/a;->h:I

    if-le v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/e/a;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
