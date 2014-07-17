.class public abstract Lcom/divmob/common/ClassicMenu;
.super Lcom/divmob/maegame/menu/MMenu;


# static fields
.field protected static final a:I = 0x0

.field protected static final b:I = 0x1


# instance fields
.field private C:Lcom/divmob/c/i;

.field protected c:Lorg/anddev/andengine/engine/camera/Camera;

.field protected d:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

.field protected e:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field protected f:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

.field protected g:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

.field protected h:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

.field protected i:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field protected j:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

.field protected k:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

.field protected l:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field protected m:Lorg/anddev/andengine/entity/sprite/Sprite;

.field protected n:Lcom/divmob/maegame/f/a/a;

.field protected o:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

.field protected p:Lorg/anddev/andengine/entity/scene/Scene;

.field protected q:Lcom/divmob/maegame/f/a/a;

.field private r:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/divmob/maegame/menu/MMenu;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/divmob/common/ClassicMenu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/divmob/common/ClassicMenu;->m()V

    return-void
.end method

.method static synthetic a(Lcom/divmob/common/ClassicMenu;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/divmob/common/ClassicMenu;->a(F)V

    return-void
.end method

.method static synthetic b(Lcom/divmob/common/ClassicMenu;)Lcom/divmob/maegame/d/b;
    .locals 1

    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->v:Lcom/divmob/maegame/d/b;

    return-object v0
.end method

.method private k()V
    .locals 8

    const/16 v2, 0x200

    const/4 v7, 0x0

    new-instance v0, Lorg/anddev/andengine/entity/scene/Scene;

    invoke-direct {v0}, Lorg/anddev/andengine/entity/scene/Scene;-><init>()V

    iput-object v0, p0, Lcom/divmob/common/ClassicMenu;->p:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->p:Lorg/anddev/andengine/entity/scene/Scene;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->setBackgroundEnabled(Z)V

    new-instance v6, Lorg/anddev/andengine/entity/sprite/Sprite;

    const-string v0, "menu/about_dialog"

    invoke-virtual {p0, v0, v2, v2}, Lcom/divmob/common/ClassicMenu;->a(Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    invoke-direct {v6, v7, v7, v0}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iget v0, p0, Lcom/divmob/common/ClassicMenu;->s:I

    iget v1, p0, Lcom/divmob/common/ClassicMenu;->t:I

    invoke-static {v6, v0, v1}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/sprite/BaseSprite;II)V

    const-string v0, "menu/about_title"

    const/16 v1, 0x40

    invoke-virtual {p0, v0, v2, v1}, Lcom/divmob/common/ClassicMenu;->a(Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v2, 0x42da

    const/high16 v3, 0x4170

    invoke-direct {v1, v2, v3, v0}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    invoke-virtual {v6, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v0

    invoke-static {v1, v0}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/sprite/BaseSprite;F)V

    new-instance v0, Lcom/divmob/common/f;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    const/high16 v2, 0x4317

    add-float v3, v1, v2

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v1

    const/high16 v2, 0x43bc

    add-float v4, v1, v2

    iget-object v5, p0, Lcom/divmob/common/ClassicMenu;->h:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/divmob/common/f;-><init>(Lcom/divmob/common/ClassicMenu;Lcom/divmob/maegame/game/MBaseGameActivity;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    iput-object v0, p0, Lcom/divmob/common/ClassicMenu;->q:Lcom/divmob/maegame/f/a/a;

    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->p:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, v6}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->q:Lcom/divmob/maegame/f/a/a;

    iget-object v1, p0, Lcom/divmob/common/ClassicMenu;->p:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/f/a/a;->a(Lorg/anddev/andengine/entity/scene/Scene;)V

    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->p:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/entity/scene/Scene;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->p:Lorg/anddev/andengine/entity/scene/Scene;

    iget v1, p0, Lcom/divmob/common/ClassicMenu;->s:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v7}, Lorg/anddev/andengine/entity/scene/Scene;->setPosition(FF)V

    return-void
.end method

.method private o()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/maegame/f/a/a;

    invoke-virtual {v0}, Lcom/divmob/maegame/f/a/a;->b()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private p()V
    .locals 3

    invoke-virtual {p0}, Lcom/divmob/common/ClassicMenu;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Exit?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Do you really want to quit?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Yes"

    new-instance v2, Lcom/divmob/common/g;

    invoke-direct {v2, p0}, Lcom/divmob/common/g;-><init>(Lcom/divmob/common/ClassicMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Keep playing"

    new-instance v2, Lcom/divmob/common/h;

    invoke-direct {v2, p0}, Lcom/divmob/common/h;-><init>(Lcom/divmob/common/ClassicMenu;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lorg/anddev/andengine/engine/camera/Camera;
    .locals 1

    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->c:Lorg/anddev/andengine/engine/camera/Camera;

    return-object v0
.end method

.method protected a_()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->p:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {p0, v0, v1, v1}, Lcom/divmob/common/ClassicMenu;->a(Lorg/anddev/andengine/entity/scene/Scene;ZZ)V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-virtual {p0}, Lcom/divmob/common/ClassicMenu;->c()V

    invoke-direct {p0}, Lcom/divmob/common/ClassicMenu;->k()V

    return-void
.end method

.method public b_()V
    .locals 3

    new-instance v0, Lcom/divmob/b/a/a;

    invoke-direct {v0, p0}, Lcom/divmob/b/a/a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060023

    invoke-virtual {p0, v1}, Lcom/divmob/common/ClassicMenu;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/divmob/common/i;

    invoke-direct {v2, p0}, Lcom/divmob/common/i;-><init>(Lcom/divmob/common/ClassicMenu;)V

    invoke-virtual {v0, v1, v2}, Lcom/divmob/b/a/a;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v1, 0x7f060024

    invoke-virtual {p0, v1}, Lcom/divmob/common/ClassicMenu;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/divmob/common/j;

    invoke-direct {v2, p0}, Lcom/divmob/common/j;-><init>(Lcom/divmob/common/ClassicMenu;)V

    invoke-virtual {v0, v1, v2}, Lcom/divmob/b/a/a;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/divmob/b/a/a;->show()V

    return-void
.end method

.method public c()V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    move v0, v6

    :goto_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/4 v1, 0x0

    const/high16 v2, 0x4188

    iget-object v3, p0, Lcom/divmob/common/ClassicMenu;->i:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/divmob/common/ClassicMenu;->m:Lorg/anddev/andengine/entity/sprite/Sprite;

    new-instance v0, Lcom/divmob/common/d;

    const/high16 v1, 0x42c8

    const v2, 0x44004000

    iget-object v3, p0, Lcom/divmob/common/ClassicMenu;->f:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/divmob/common/d;-><init>(Lcom/divmob/common/ClassicMenu;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    iput-object v0, p0, Lcom/divmob/common/ClassicMenu;->o:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    new-instance v0, Lcom/divmob/common/e;

    const/high16 v3, 0x42e6

    const v4, 0x441a8000

    iget-object v5, p0, Lcom/divmob/common/ClassicMenu;->g:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/divmob/common/e;-><init>(Lcom/divmob/common/ClassicMenu;Lcom/divmob/maegame/game/MBaseGameActivity;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    iput-object v0, p0, Lcom/divmob/common/ClassicMenu;->n:Lcom/divmob/maegame/f/a/a;

    invoke-virtual {p0}, Lcom/divmob/common/ClassicMenu;->d()V

    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->m:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget v1, p0, Lcom/divmob/common/ClassicMenu;->s:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/sprite/BaseSprite;F)V

    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, v7}, Lorg/anddev/andengine/entity/scene/Scene;->getChild(I)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/divmob/common/ClassicMenu;->o:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/entity/IEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->u:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v1, p0, Lcom/divmob/common/ClassicMenu;->o:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->n:Lcom/divmob/maegame/f/a/a;

    iget-object v1, p0, Lcom/divmob/common/ClassicMenu;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, v1, v7}, Lcom/divmob/maegame/f/a/a;->a(Lorg/anddev/andengine/entity/scene/Scene;I)V

    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, v7}, Lorg/anddev/andengine/entity/scene/Scene;->getChild(I)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/divmob/common/ClassicMenu;->m:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/entity/IEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/entity/scene/Scene;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, v6}, Lorg/anddev/andengine/entity/scene/Scene;->setOnSceneTouchListenerBindingEnabled(Z)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/divmob/common/ClassicMenu;->u:Lorg/anddev/andengine/entity/scene/Scene;

    new-instance v2, Lorg/anddev/andengine/entity/Entity;

    invoke-direct {v2}, Lorg/anddev/andengine/entity/Entity;-><init>()V

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->C:Lcom/divmob/c/i;

    invoke-virtual {v0}, Lcom/divmob/c/i;->d()V

    invoke-super {p0}, Lcom/divmob/maegame/menu/MMenu;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/divmob/maegame/menu/MMenu;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/divmob/common/ClassicMenu;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1}, Lorg/anddev/andengine/entity/scene/Scene;->hasChildScene()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/divmob/common/ClassicMenu;->a(F)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/divmob/common/ClassicMenu;->C:Lcom/divmob/c/i;

    invoke-virtual {v1}, Lcom/divmob/c/i;->b()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadComplete()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->y:Lcom/divmob/maegame/d/a;

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
    .locals 6

    const/16 v5, 0x400

    const/16 v4, 0x200

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/divmob/maegame/menu/MMenu;->onLoadResources()V

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v5, v5, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/divmob/common/ClassicMenu;->d:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    const-string v0, "menu/menu_logo"

    iget-object v1, p0, Lcom/divmob/common/ClassicMenu;->d:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v1}, Lcom/divmob/common/ClassicMenu;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/common/ClassicMenu;->i:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    const-string v0, "menu/menu_opt_btn"

    iget-object v1, p0, Lcom/divmob/common/ClassicMenu;->d:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/divmob/common/ClassicMenu;->a(Ljava/lang/String;IILorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/common/ClassicMenu;->f:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    const-string v0, "menu/menu_about_btn"

    iget-object v1, p0, Lcom/divmob/common/ClassicMenu;->d:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/divmob/common/ClassicMenu;->a(Ljava/lang/String;IILorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/common/ClassicMenu;->g:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    const-string v0, "menu/back_btn"

    iget-object v1, p0, Lcom/divmob/common/ClassicMenu;->d:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/divmob/common/ClassicMenu;->a(Ljava/lang/String;IILorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/common/ClassicMenu;->h:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    const-string v0, "menu/menu_bg"

    iget-object v1, p0, Lcom/divmob/common/ClassicMenu;->d:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v1}, Lcom/divmob/common/ClassicMenu;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/common/ClassicMenu;->e:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->d:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0}, Lcom/divmob/common/ClassicMenu;->c(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)V

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v4, v4, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/divmob/common/ClassicMenu;->r:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    const-string v0, "menu/opt_snd_effect"

    iget-object v1, p0, Lcom/divmob/common/ClassicMenu;->r:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/divmob/common/ClassicMenu;->a(Ljava/lang/String;IILorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/common/ClassicMenu;->j:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    const-string v0, "menu/opt_music"

    iget-object v1, p0, Lcom/divmob/common/ClassicMenu;->r:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v3, v2, v1}, Lcom/divmob/common/ClassicMenu;->a(Ljava/lang/String;IILorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/common/ClassicMenu;->k:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    const-string v0, "menu/dialog"

    iget-object v1, p0, Lcom/divmob/common/ClassicMenu;->r:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v1}, Lcom/divmob/common/ClassicMenu;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/common/ClassicMenu;->l:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->r:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0}, Lcom/divmob/common/ClassicMenu;->c(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)V

    new-instance v0, Lcom/divmob/c/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/divmob/c/i;-><init>(Landroid/app/Activity;ZI)V

    iput-object v0, p0, Lcom/divmob/common/ClassicMenu;->C:Lcom/divmob/c/i;

    return-void
.end method

.method public onResumeGame()V
    .locals 2

    invoke-super {p0}, Lcom/divmob/maegame/menu/MMenu;->onResumeGame()V

    :try_start_0
    new-instance v0, Lcom/divmob/maegame/d/b;

    invoke-direct {v0, p0}, Lcom/divmob/maegame/d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/divmob/common/ClassicMenu;->v:Lcom/divmob/maegame/d/b;

    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->v:Lcom/divmob/maegame/d/b;

    invoke-virtual {v0}, Lcom/divmob/maegame/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->o:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    :goto_0
    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->v:Lcom/divmob/maegame/d/b;

    invoke-virtual {v0}, Lcom/divmob/maegame/d/b;->b()Z

    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->y:Lcom/divmob/maegame/d/a;

    iget-object v1, p0, Lcom/divmob/common/ClassicMenu;->v:Lcom/divmob/maegame/d/b;

    invoke-virtual {v1}, Lcom/divmob/maegame/d/b;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/d/a;->b(Z)V

    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->y:Lcom/divmob/maegame/d/a;

    invoke-virtual {v0}, Lcom/divmob/maegame/d/a;->a()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->o:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-direct {p0}, Lcom/divmob/common/ClassicMenu;->o()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/divmob/common/ClassicMenu;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/maegame/f/a/a;

    invoke-virtual {v0}, Lcom/divmob/maegame/f/a/a;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/divmob/maegame/f/a/a;->a()V

    invoke-direct {p0}, Lcom/divmob/common/ClassicMenu;->o()V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
