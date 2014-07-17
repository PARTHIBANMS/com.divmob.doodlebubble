.class public Lcom/divmob/maegame/c/a;
.super Lorg/anddev/andengine/entity/sprite/Sprite;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/divmob/maegame/game/MBaseGameActivity;Ljava/lang/String;FFII)V
    .locals 1

    invoke-virtual {p1}, Lcom/divmob/maegame/game/MBaseGameActivity;->l()Lcom/divmob/maegame/e/e;

    move-result-object v0

    invoke-virtual {v0, p2, p5, p6}, Lcom/divmob/maegame/e/e;->a(Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    invoke-direct {p0, p3, p4, v0}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    return-void
.end method

.method public constructor <init>(Lcom/divmob/maegame/game/MBaseGameActivity;Ljava/lang/String;II)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/divmob/maegame/c/a;-><init>(Lcom/divmob/maegame/game/MBaseGameActivity;Ljava/lang/String;FFII)V

    return-void
.end method


# virtual methods
.method public a(Lcom/divmob/maegame/game/MBaseGameActivity;Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/divmob/maegame/game/MBaseGameActivity;->l()Lcom/divmob/maegame/e/e;

    move-result-object v6

    iget-object v0, v6, Lcom/divmob/maegame/e/e;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/divmob/maegame/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->clearTextureAtlasSources()V

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/divmob/maegame/e/d;->a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;III)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v1

    iget-object v2, v6, Lcom/divmob/maegame/e/e;->a:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/divmob/maegame/c/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v6, Lcom/divmob/maegame/e/e;->b:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/divmob/maegame/c/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v6, Lcom/divmob/maegame/e/e;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v6, Lcom/divmob/maegame/e/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/divmob/maegame/c/a;->a:Ljava/lang/String;

    return-void
.end method
