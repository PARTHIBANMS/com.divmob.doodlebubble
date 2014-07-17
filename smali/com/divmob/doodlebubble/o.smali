.class Lcom/divmob/doodlebubble/o;
.super Lcom/divmob/maegame/f/a/a;


# instance fields
.field final synthetic a:Lcom/divmob/doodlebubble/MenuActivity;


# direct methods
.method constructor <init>(Lcom/divmob/doodlebubble/MenuActivity;Lcom/divmob/maegame/game/MBaseGameActivity;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/doodlebubble/o;->a:Lcom/divmob/doodlebubble/MenuActivity;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/divmob/maegame/f/a/a;-><init>(Lcom/divmob/maegame/game/MBaseGameActivity;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/divmob/doodlebubble/o;->a:Lcom/divmob/doodlebubble/MenuActivity;

    iget-object v1, p0, Lcom/divmob/doodlebubble/o;->a:Lcom/divmob/doodlebubble/MenuActivity;

    invoke-static {v1}, Lcom/divmob/doodlebubble/MenuActivity;->b(Lcom/divmob/doodlebubble/MenuActivity;)Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/divmob/doodlebubble/MenuActivity;->a(Lorg/anddev/andengine/entity/scene/Scene;ZZ)V

    return-void
.end method
