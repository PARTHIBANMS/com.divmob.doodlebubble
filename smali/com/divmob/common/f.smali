.class Lcom/divmob/common/f;
.super Lcom/divmob/maegame/f/a/a;


# instance fields
.field final synthetic a:Lcom/divmob/common/ClassicMenu;


# direct methods
.method constructor <init>(Lcom/divmob/common/ClassicMenu;Lcom/divmob/maegame/game/MBaseGameActivity;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/common/f;->a:Lcom/divmob/common/ClassicMenu;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/divmob/maegame/f/a/a;-><init>(Lcom/divmob/maegame/game/MBaseGameActivity;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/divmob/common/f;->a:Lcom/divmob/common/ClassicMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/divmob/common/ClassicMenu;->a(Lcom/divmob/common/ClassicMenu;F)V

    return-void
.end method
