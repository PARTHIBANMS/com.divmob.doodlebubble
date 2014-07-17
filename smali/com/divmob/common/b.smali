.class Lcom/divmob/common/b;
.super Lcom/divmob/maegame/f/a/d;


# instance fields
.field final synthetic a:Lcom/divmob/common/ClassicGame;


# direct methods
.method constructor <init>(Lcom/divmob/common/ClassicGame;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;Z)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/common/b;->a:Lcom/divmob/common/ClassicGame;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/divmob/maegame/f/a/d;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/divmob/common/b;->a:Lcom/divmob/common/ClassicGame;

    invoke-static {v0}, Lcom/divmob/common/ClassicGame;->a(Lcom/divmob/common/ClassicGame;)Lcom/divmob/maegame/d/a;

    move-result-object v1

    sget-boolean v0, Lcom/divmob/maegame/d/a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/divmob/maegame/d/a;->a(Z)V

    iget-object v0, p0, Lcom/divmob/common/b;->a:Lcom/divmob/common/ClassicGame;

    invoke-static {v0}, Lcom/divmob/common/ClassicGame;->b(Lcom/divmob/common/ClassicGame;)Lcom/divmob/maegame/d/b;

    move-result-object v0

    sget-boolean v1, Lcom/divmob/maegame/d/a;->a:Z

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/d/b;->a(Z)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
