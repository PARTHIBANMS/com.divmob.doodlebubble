.class public Lcom/divmob/maegame/f/c/b;
.super Lcom/divmob/maegame/f/a/d;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/divmob/maegame/f/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/divmob/maegame/f/a/d;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    invoke-virtual {p0}, Lcom/divmob/maegame/f/c/b;->d()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/divmob/maegame/f/c/b;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/divmob/maegame/f/c/b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/divmob/maegame/f/c/b;->c:I

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b()V
    .locals 3

    iget-object v0, p0, Lcom/divmob/maegame/f/c/b;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/maegame/f/c/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/divmob/maegame/f/c/b;->b:Z

    invoke-super {p0}, Lcom/divmob/maegame/f/a/d;->b()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/divmob/maegame/f/c/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/maegame/f/c/b;

    invoke-virtual {v0}, Lcom/divmob/maegame/f/c/b;->d()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/divmob/maegame/f/c/b;->c:I

    return v0
.end method
