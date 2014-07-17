.class public Lcom/divmob/maegame/e/e;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/anddev/andengine/opengl/texture/region/TextureRegion;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lorg/anddev/andengine/ui/activity/BaseGameActivity;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/ui/activity/BaseGameActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/divmob/maegame/e/e;->d:Lorg/anddev/andengine/ui/activity/BaseGameActivity;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/divmob/maegame/e/e;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/divmob/maegame/e/e;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/divmob/maegame/e/e;->c:Ljava/util/HashMap;

    return-void
.end method

.method private static a(Lorg/anddev/andengine/ui/activity/BaseGameActivity;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;)V
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/TextureManager;->loadTexture(Lorg/anddev/andengine/opengl/texture/ITexture;)Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/divmob/maegame/e/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/maegame/e/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, p2, p3, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iget-object v1, p0, Lcom/divmob/maegame/e/e;->d:Lorg/anddev/andengine/ui/activity/BaseGameActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".png"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/divmob/maegame/e/d;->a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;III)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v1

    iget-object v2, p0, Lcom/divmob/maegame/e/e;->b:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/divmob/maegame/e/e;->d:Lorg/anddev/andengine/ui/activity/BaseGameActivity;

    invoke-static {v2, v0}, Lcom/divmob/maegame/e/e;->a(Lorg/anddev/andengine/ui/activity/BaseGameActivity;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;IIII)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/divmob/maegame/e/e;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/maegame/e/e;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, p4, p5, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iget-object v1, p0, Lcom/divmob/maegame/e/e;->d:Lorg/anddev/andengine/ui/activity/BaseGameActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".png"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v7}, Lcom/divmob/maegame/e/d;->a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;IIIII)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v1

    iget-object v2, p0, Lcom/divmob/maegame/e/e;->c:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/divmob/maegame/e/e;->d:Lorg/anddev/andengine/ui/activity/BaseGameActivity;

    invoke-static {v2, v0}, Lcom/divmob/maegame/e/e;->a(Lorg/anddev/andengine/ui/activity/BaseGameActivity;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;)V

    move-object v0, v1

    goto :goto_0
.end method
