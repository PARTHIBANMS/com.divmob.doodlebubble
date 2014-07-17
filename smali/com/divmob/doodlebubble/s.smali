.class Lcom/divmob/doodlebubble/s;
.super Lcom/divmob/maegame/f/a/a;


# instance fields
.field final synthetic a:Lcom/divmob/doodlebubble/MenuActivity;


# direct methods
.method constructor <init>(Lcom/divmob/doodlebubble/MenuActivity;Lcom/divmob/maegame/game/MBaseGameActivity;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/doodlebubble/s;->a:Lcom/divmob/doodlebubble/MenuActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/divmob/maegame/f/a/a;-><init>(Lcom/divmob/maegame/game/MBaseGameActivity;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/divmob/doodlebubble/s;->a:Lcom/divmob/doodlebubble/MenuActivity;

    invoke-static {v0}, Lcom/divmob/doodlebubble/MenuActivity;->e(Lcom/divmob/doodlebubble/MenuActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/divmob/doodlebubble/s;->a:Lcom/divmob/doodlebubble/MenuActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/divmob/doodlebubble/MenuActivity;->a(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/s;->a:Lcom/divmob/doodlebubble/MenuActivity;

    invoke-static {v0}, Lcom/divmob/doodlebubble/MenuActivity;->f(Lcom/divmob/doodlebubble/MenuActivity;)V

    goto :goto_0
.end method
