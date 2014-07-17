.class Lcom/divmob/doodlebubble/r;
.super Lcom/divmob/maegame/f/a/a;


# instance fields
.field final synthetic a:Lcom/divmob/doodlebubble/MenuActivity;


# direct methods
.method constructor <init>(Lcom/divmob/doodlebubble/MenuActivity;Lcom/divmob/maegame/game/MBaseGameActivity;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/doodlebubble/r;->a:Lcom/divmob/doodlebubble/MenuActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/divmob/maegame/f/a/a;-><init>(Lcom/divmob/maegame/game/MBaseGameActivity;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/divmob/doodlebubble/r;->a:Lcom/divmob/doodlebubble/MenuActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/divmob/doodlebubble/MenuActivity;->a(F)V

    return-void
.end method
