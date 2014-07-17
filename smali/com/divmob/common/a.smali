.class Lcom/divmob/common/a;
.super Lcom/divmob/maegame/f/a/b;


# instance fields
.field final synthetic a:Lcom/divmob/common/ClassicGame;


# direct methods
.method constructor <init>(Lcom/divmob/common/ClassicGame;FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/common/a;->a:Lcom/divmob/common/ClassicGame;

    invoke-direct {p0, p2, p3, p4}, Lcom/divmob/maegame/f/a/b;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/divmob/common/a;->a:Lcom/divmob/common/ClassicGame;

    invoke-virtual {v0}, Lcom/divmob/common/ClassicGame;->d()V

    return-void
.end method
