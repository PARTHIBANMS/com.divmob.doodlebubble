.class public abstract Lcom/divmob/common/ClassicGame;
.super Lcom/divmob/maegame/game/XMLGame;

# interfaces
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;


# instance fields
.field protected a:Lorg/anddev/andengine/engine/camera/Camera;

.field protected b:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

.field protected c:Lcom/divmob/maegame/f/a/b;

.field protected d:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

.field protected e:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

.field protected f:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field protected g:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private h:Lorg/anddev/andengine/entity/scene/Scene;

.field private i:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private j:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

.field private k:Lcom/divmob/c/c;

.field private l:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private m:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private n:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private o:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private p:Lcom/divmob/maegame/f/a/d;

.field private q:Lcom/divmob/maegame/f/a/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/divmob/maegame/game/XMLGame;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/divmob/common/ClassicGame;)Lcom/divmob/maegame/d/a;
    .locals 1

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->y:Lcom/divmob/maegame/d/a;

    return-object v0
.end method

.method static synthetic b(Lcom/divmob/common/ClassicGame;)Lcom/divmob/maegame/d/b;
    .locals 1

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->v:Lcom/divmob/maegame/d/b;

    return-object v0
.end method

.method private k()V
    .locals 6

    const/16 v5, 0x200

    const/16 v4, 0x100

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v4, v4, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/divmob/common/ClassicGame;->b:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    const-string v0, "menu/pausetitle"

    iget-object v1, p0, Lcom/divmob/common/ClassicGame;->b:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v1}, Lcom/divmob/common/ClassicGame;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/common/ClassicGame;->l:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    const-string v0, "menu/resumebtn_label"

    iget-object v1, p0, Lcom/divmob/common/ClassicGame;->b:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v1}, Lcom/divmob/common/ClassicGame;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/common/ClassicGame;->m:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    const-string v0, "menu/quitbtn_label"

    iget-object v1, p0, Lcom/divmob/common/ClassicGame;->b:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v1}, Lcom/divmob/common/ClassicGame;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/common/ClassicGame;->n:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    const-string v0, "menu/pause_btn"

    iget-object v1, p0, Lcom/divmob/common/ClassicGame;->b:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v1}, Lcom/divmob/common/ClassicGame;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/common/ClassicGame;->i:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->b:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0}, Lcom/divmob/common/ClassicGame;->c(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)V

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v5, v5, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/divmob/common/ClassicGame;->j:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    const-string v0, "menu/opt_snd_effect"

    iget-object v1, p0, Lcom/divmob/common/ClassicGame;->j:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/divmob/common/ClassicGame;->a(Ljava/lang/String;IILorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/common/ClassicGame;->d:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    const-string v0, "menu/opt_music"

    iget-object v1, p0, Lcom/divmob/common/ClassicGame;->j:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/divmob/common/ClassicGame;->a(Ljava/lang/String;IILorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/common/ClassicGame;->e:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    const-string v0, "menu/dialog"

    iget-object v1, p0, Lcom/divmob/common/ClassicGame;->j:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v1}, Lcom/divmob/common/ClassicGame;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/common/ClassicGame;->f:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->j:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0}, Lcom/divmob/common/ClassicGame;->c(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)V

    return-void
.end method

.method private o()V
    .locals 8

    const/high16 v3, 0x4388

    const/high16 v2, 0x41d0

    const/4 v7, 0x0

    new-instance v0, Lorg/anddev/andengine/entity/scene/Scene;

    invoke-direct {v0}, Lorg/anddev/andengine/entity/scene/Scene;-><init>()V

    iput-object v0, p0, Lcom/divmob/common/ClassicGame;->h:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->h:Lorg/anddev/andengine/entity/scene/Scene;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->setBackgroundEnabled(Z)V

    new-instance v0, Lorg/anddev/andengine/entity/primitive/Rectangle;

    sget v1, Lcom/divmob/maegame/a/a;->g:I

    int-to-float v1, v1

    sget v4, Lcom/divmob/maegame/a/a;->h:I

    int-to-float v4, v4

    invoke-direct {v0, v7, v7, v1, v4}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    const v1, -0xcccccd

    invoke-static {v0, v1}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/Entity;I)V

    const v1, 0x3f333333

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setAlpha(F)V

    iget-object v1, p0, Lcom/divmob/common/ClassicGame;->h:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    new-instance v6, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->f:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v6, v7, v7, v0}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    sget v0, Lcom/divmob/maegame/a/a;->g:I

    sget v1, Lcom/divmob/maegame/a/a;->h:I

    invoke-static {v6, v0, v1}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/sprite/BaseSprite;II)V

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->h:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, v6}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x4180

    iget-object v4, p0, Lcom/divmob/common/ClassicGame;->l:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, v7, v1, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    invoke-virtual {v6, v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v4, 0x42dc

    iget-object v5, p0, Lcom/divmob/common/ClassicGame;->m:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v1, v7, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v1, p0, Lcom/divmob/common/ClassicGame;->o:Lorg/anddev/andengine/entity/sprite/Sprite;

    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v4, 0x4346

    iget-object v5, p0, Lcom/divmob/common/ClassicGame;->n:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v1, v7, v4, v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v1, p0, Lcom/divmob/common/ClassicGame;->g:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v1

    invoke-static {v0, v1}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/sprite/BaseSprite;F)V

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->o:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v1

    invoke-static {v0, v1}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/sprite/BaseSprite;F)V

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->g:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v1

    invoke-static {v0, v1}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/sprite/BaseSprite;F)V

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->o:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v6, v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->g:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v6, v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->h:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v1, p0, Lcom/divmob/common/ClassicGame;->o:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->h:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v1, p0, Lcom/divmob/common/ClassicGame;->g:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    new-instance v0, Lcom/divmob/common/b;

    iget-object v4, p0, Lcom/divmob/common/ClassicGame;->d:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    iget-object v1, p0, Lcom/divmob/common/ClassicGame;->v:Lcom/divmob/maegame/d/b;

    invoke-virtual {v1}, Lcom/divmob/maegame/d/b;->a()Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/divmob/common/b;-><init>(Lcom/divmob/common/ClassicGame;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;Z)V

    iput-object v0, p0, Lcom/divmob/common/ClassicGame;->p:Lcom/divmob/maegame/f/a/d;

    new-instance v0, Lcom/divmob/common/c;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v1

    iget-object v4, p0, Lcom/divmob/common/ClassicGame;->e:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-virtual {v4}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTileWidth()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v1, v4

    sub-float v2, v1, v2

    iget-object v4, p0, Lcom/divmob/common/ClassicGame;->e:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    iget-object v1, p0, Lcom/divmob/common/ClassicGame;->v:Lcom/divmob/maegame/d/b;

    invoke-virtual {v1}, Lcom/divmob/maegame/d/b;->b()Z

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/divmob/common/c;-><init>(Lcom/divmob/common/ClassicGame;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;Z)V

    iput-object v0, p0, Lcom/divmob/common/ClassicGame;->q:Lcom/divmob/maegame/f/a/d;

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->p:Lcom/divmob/maegame/f/a/d;

    iget v1, p0, Lcom/divmob/common/ClassicGame;->A:F

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/f/a/d;->setScaleY(F)V

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->q:Lcom/divmob/maegame/f/a/d;

    iget v1, p0, Lcom/divmob/common/ClassicGame;->A:F

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/f/a/d;->setScaleY(F)V

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->p:Lcom/divmob/maegame/f/a/d;

    invoke-virtual {v6, v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->h:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v1, p0, Lcom/divmob/common/ClassicGame;->p:Lcom/divmob/maegame/f/a/d;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->h:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v1, p0, Lcom/divmob/common/ClassicGame;->q:Lcom/divmob/maegame/f/a/d;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->h:Lorg/anddev/andengine/entity/scene/Scene;

    sget v1, Lcom/divmob/maegame/a/a;->g:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v7}, Lorg/anddev/andengine/entity/scene/Scene;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->h:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/entity/scene/Scene;->setOnAreaTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;)V

    return-void
.end method


# virtual methods
.method public a()Lorg/anddev/andengine/engine/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->a:Lorg/anddev/andengine/engine/camera/Camera;

    return-object v0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/divmob/common/a;

    iget-object v1, p0, Lcom/divmob/common/ClassicGame;->i:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, p0, v2, v2, v1}, Lcom/divmob/common/a;-><init>(Lcom/divmob/common/ClassicGame;FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/divmob/common/ClassicGame;->c:Lcom/divmob/maegame/f/a/b;

    invoke-virtual {p0}, Lcom/divmob/common/ClassicGame;->c()V

    invoke-direct {p0}, Lcom/divmob/common/ClassicGame;->o()V

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/entity/scene/Scene;->setOnAreaTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 3

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->h:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/scene/Scene;->clearEntityModifiers()V

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->h:Lorg/anddev/andengine/entity/scene/Scene;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/divmob/common/ClassicGame;->a(Lorg/anddev/andengine/entity/scene/Scene;ZZ)V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;FF)Z
    .locals 1

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->o:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/scene/Scene;->hasChildScene()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/divmob/common/ClassicGame;->a(F)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->g:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/divmob/common/ClassicGame;->e()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/divmob/maegame/game/XMLGame;->onDestroy()V

    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->k:Lcom/divmob/c/c;

    invoke-virtual {v0}, Lcom/divmob/c/c;->e()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/divmob/maegame/game/XMLGame;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :cond_1
    :goto_0
    return v0

    :pswitch_0
    iget-boolean v1, p0, Lcom/divmob/common/ClassicGame;->w:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/divmob/common/ClassicGame;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/scene/Scene;->hasChildScene()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/divmob/common/ClassicGame;->a(F)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/divmob/common/ClassicGame;->d()V

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v2, 0x32

    if-gt v1, v2, :cond_1

    iget-object v1, p0, Lcom/divmob/common/ClassicGame;->k:Lcom/divmob/c/c;

    invoke-virtual {v1}, Lcom/divmob/c/c;->b()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadComplete()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/divmob/common/ClassicGame;->y:Lcom/divmob/maegame/d/a;

    invoke-virtual {v0}, Lcom/divmob/maegame/d/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onLoadResources()V
    .locals 3

    invoke-super {p0}, Lcom/divmob/maegame/game/XMLGame;->onLoadResources()V

    invoke-direct {p0}, Lcom/divmob/common/ClassicGame;->k()V

    new-instance v0, Lcom/divmob/c/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/divmob/c/c;-><init>(Landroid/app/Activity;ZZ)V

    iput-object v0, p0, Lcom/divmob/common/ClassicGame;->k:Lcom/divmob/c/c;

    return-void
.end method

.method public onPauseGame()V
    .locals 1

    invoke-super {p0}, Lcom/divmob/maegame/game/XMLGame;->onPauseGame()V

    :try_start_0
    iget-boolean v0, p0, Lcom/divmob/common/ClassicGame;->w:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/divmob/common/ClassicGame;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
