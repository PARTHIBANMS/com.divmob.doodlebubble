.class public Lcom/divmob/doodlebubble/MenuActivity;
.super Lcom/divmob/common/PortrailMenu;

# interfaces
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;


# instance fields
.field private C:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

.field private D:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private E:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private F:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private G:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

.field private H:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

.field private I:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

.field private J:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

.field private K:Lcom/divmob/maegame/f/a/a;

.field private L:Lcom/divmob/maegame/f/a/a;

.field private M:Lcom/divmob/maegame/f/a/a;

.field private N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/divmob/doodlebubble/i;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/divmob/doodlebubble/i;",
            ">;"
        }
    .end annotation
.end field

.field private P:Lcom/divmob/doodlebubble/x;

.field private Q:Lorg/anddev/andengine/entity/primitive/Rectangle;

.field private R:Lcom/divmob/maegame/f/b/c;

.field private S:Lorg/anddev/andengine/entity/scene/Scene;

.field private T:Lcom/divmob/maegame/f/a/a;

.field private U:Z

.field private V:Lorg/anddev/andengine/entity/scene/Scene;

.field private W:Lcom/divmob/maegame/f/a/a;

.field private X:Lcom/divmob/maegame/f/b/c;

.field private Y:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

.field private Z:Lcom/divmob/maegame/g/d;

.field private aa:Lorg/anddev/andengine/entity/scene/Scene;

.field private ab:Lorg/anddev/andengine/entity/text/ChangeableText;

.field private ac:Lorg/anddev/andengine/entity/scene/Scene;

.field protected r:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/divmob/common/PortrailMenu;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/divmob/doodlebubble/MenuActivity;)Lorg/anddev/andengine/entity/scene/Scene;
    .locals 1

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->S:Lorg/anddev/andengine/entity/scene/Scene;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/divmob/doodlebubble/GameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/MenuActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(II)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/divmob/doodlebubble/GameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "level"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "world"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/MenuActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/divmob/doodlebubble/MenuActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/divmob/doodlebubble/MenuActivity;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/divmob/doodlebubble/MenuActivity;)Lorg/anddev/andengine/entity/scene/Scene;
    .locals 1

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->V:Lorg/anddev/andengine/entity/scene/Scene;

    return-object v0
.end method

.method private b(I)V
    .locals 6

    new-instance v0, Lcom/divmob/doodlebubble/d/a;

    invoke-direct {v0, p0}, Lcom/divmob/doodlebubble/d/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/divmob/doodlebubble/d/a;->a(I)[I

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, v2

    add-int/lit8 v1, v0, -0x1

    const/4 v0, 0x1

    :goto_0
    if-gez v1, :cond_0

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->ab:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->ab:Lorg/anddev/andengine/entity/text/ChangeableText;

    iget v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->s:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/text/Text;F)V

    return-void

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/divmob/doodlebubble/MenuActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/divmob/doodlebubble/MenuActivity;->u()V

    return-void
.end method

.method static synthetic d(Lcom/divmob/doodlebubble/MenuActivity;)Lorg/anddev/andengine/entity/scene/Scene;
    .locals 1

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->ac:Lorg/anddev/andengine/entity/scene/Scene;

    return-object v0
.end method

.method static synthetic e(Lcom/divmob/doodlebubble/MenuActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->U:Z

    return v0
.end method

.method static synthetic f(Lcom/divmob/doodlebubble/MenuActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/divmob/doodlebubble/MenuActivity;->s()V

    return-void
.end method

.method static synthetic g(Lcom/divmob/doodlebubble/MenuActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/divmob/doodlebubble/MenuActivity;->r()V

    return-void
.end method

.method private k()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lorg/anddev/andengine/entity/primitive/Rectangle;

    sget v1, Lcom/divmob/maegame/a/a;->g:I

    int-to-float v1, v1

    sget v2, Lcom/divmob/maegame/a/a;->h:I

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->Q:Lorg/anddev/andengine/entity/primitive/Rectangle;

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->Q:Lorg/anddev/andengine/entity/primitive/Rectangle;

    const v1, -0xcccccd

    invoke-static {v0, v1}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/Entity;I)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->Q:Lorg/anddev/andengine/entity/primitive/Rectangle;

    const v1, 0x3f333333

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setAlpha(F)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->Q:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->Q:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-static {v0}, Lcom/divmob/maegame/g/e;->e(Lorg/anddev/andengine/entity/Entity;)V

    return-void
.end method

.method private o()V
    .locals 10

    const/4 v8, 0x0

    const/4 v4, 0x1

    new-instance v0, Lorg/anddev/andengine/entity/scene/Scene;

    invoke-direct {v0}, Lorg/anddev/andengine/entity/scene/Scene;-><init>()V

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->S:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->S:Lorg/anddev/andengine/entity/scene/Scene;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->setBackgroundEnabled(Z)V

    new-instance v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    const/high16 v1, 0x430b

    const/high16 v2, 0x41c8

    iget-object v3, p0, Lcom/divmob/doodlebubble/MenuActivity;->G:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->S:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->s:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/sprite/BaseSprite;F)V

    new-instance v0, Lcom/divmob/maegame/f/b/c;

    iget-object v2, p0, Lcom/divmob/doodlebubble/MenuActivity;->S:Lorg/anddev/andengine/entity/scene/Scene;

    const/4 v3, 0x3

    const-string v5, "worlds/diff_0"

    move-object v1, p0

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/divmob/maegame/f/b/c;-><init>(Lcom/divmob/maegame/game/MBaseGameActivity;Lorg/anddev/andengine/entity/scene/Scene;IILjava/lang/String;I)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->R:Lcom/divmob/maegame/f/b/c;

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->R:Lcom/divmob/maegame/f/b/c;

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->E:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v2, p0, Lcom/divmob/doodlebubble/MenuActivity;->D:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget v3, p0, Lcom/divmob/doodlebubble/MenuActivity;->A:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/divmob/maegame/f/b/c;->a(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;F)V

    iget-object v3, p0, Lcom/divmob/doodlebubble/MenuActivity;->R:Lcom/divmob/maegame/f/b/c;

    const/high16 v6, 0x4270

    const/high16 v7, 0x42c8

    move v5, v4

    move v9, v8

    invoke-virtual/range {v3 .. v9}, Lcom/divmob/maegame/f/b/c;->a(IIFFFF)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->R:Lcom/divmob/maegame/f/b/c;

    const-string v1, "worlds/diff_"

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/f/b/c;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/divmob/doodlebubble/r;

    const/high16 v3, 0x4150

    iget v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->t:I

    iget-object v2, p0, Lcom/divmob/doodlebubble/MenuActivity;->h:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTileHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x7

    int-to-float v4, v1

    iget-object v5, p0, Lcom/divmob/doodlebubble/MenuActivity;->h:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/divmob/doodlebubble/r;-><init>(Lcom/divmob/doodlebubble/MenuActivity;Lcom/divmob/maegame/game/MBaseGameActivity;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->T:Lcom/divmob/maegame/f/a/a;

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->T:Lcom/divmob/maegame/f/a/a;

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->S:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/f/a/a;->a(Lorg/anddev/andengine/entity/scene/Scene;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->S:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/entity/scene/Scene;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->S:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/entity/scene/Scene;->setOnAreaTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->S:Lorg/anddev/andengine/entity/scene/Scene;

    iget v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->s:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v8}, Lorg/anddev/andengine/entity/scene/Scene;->setPosition(FF)V

    return-void
.end method

.method private p()V
    .locals 11

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    new-instance v0, Lorg/anddev/andengine/entity/scene/Scene;

    invoke-direct {v0}, Lorg/anddev/andengine/entity/scene/Scene;-><init>()V

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->V:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->V:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, v10}, Lorg/anddev/andengine/entity/scene/Scene;->setBackgroundEnabled(Z)V

    new-instance v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    const/high16 v1, 0x430b

    const/high16 v2, 0x41c8

    iget-object v3, p0, Lcom/divmob/doodlebubble/MenuActivity;->H:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->V:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->s:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/sprite/BaseSprite;F)V

    new-instance v0, Lcom/divmob/maegame/f/b/c;

    iget-object v2, p0, Lcom/divmob/doodlebubble/MenuActivity;->V:Lorg/anddev/andengine/entity/scene/Scene;

    const/4 v3, 0x6

    const-string v5, "worlds/world_1"

    move-object v1, p0

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/divmob/maegame/f/b/c;-><init>(Lcom/divmob/maegame/game/MBaseGameActivity;Lorg/anddev/andengine/entity/scene/Scene;IILjava/lang/String;I)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->X:Lcom/divmob/maegame/f/b/c;

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->X:Lcom/divmob/maegame/f/b/c;

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->E:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v2, p0, Lcom/divmob/doodlebubble/MenuActivity;->D:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget v3, p0, Lcom/divmob/doodlebubble/MenuActivity;->A:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/divmob/maegame/f/b/c;->a(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;F)V

    iget-object v3, p0, Lcom/divmob/doodlebubble/MenuActivity;->X:Lcom/divmob/maegame/f/b/c;

    const/high16 v6, 0x4270

    const/high16 v7, 0x42c8

    move v5, v4

    move v9, v8

    invoke-virtual/range {v3 .. v9}, Lcom/divmob/maegame/f/b/c;->a(IIFFFF)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->X:Lcom/divmob/maegame/f/b/c;

    const-string v1, "worlds/world_"

    invoke-virtual {v0, v1, v4}, Lcom/divmob/maegame/f/b/c;->a(Ljava/lang/String;I)V

    new-instance v0, Lcom/divmob/doodlebubble/s;

    const/high16 v3, 0x4150

    iget v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->t:I

    iget-object v2, p0, Lcom/divmob/doodlebubble/MenuActivity;->h:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTileHeight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x7

    int-to-float v4, v1

    iget-object v5, p0, Lcom/divmob/doodlebubble/MenuActivity;->h:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/divmob/doodlebubble/s;-><init>(Lcom/divmob/doodlebubble/MenuActivity;Lcom/divmob/maegame/game/MBaseGameActivity;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->W:Lcom/divmob/maegame/f/a/a;

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->W:Lcom/divmob/maegame/f/a/a;

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->V:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/f/a/a;->a(Lorg/anddev/andengine/entity/scene/Scene;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->V:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/entity/scene/Scene;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->V:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/entity/scene/Scene;->setOnAreaTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->V:Lorg/anddev/andengine/entity/scene/Scene;

    iget v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->s:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v8}, Lorg/anddev/andengine/entity/scene/Scene;->setPosition(FF)V

    iput-boolean v10, p0, Lcom/divmob/doodlebubble/MenuActivity;->U:Z

    return-void
.end method

.method private q()V
    .locals 11

    const v1, 0x3e99999a

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->X:Lcom/divmob/maegame/f/b/c;

    invoke-virtual {v0}, Lcom/divmob/maegame/f/b/c;->a()V

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->X:Lcom/divmob/maegame/f/b/c;

    invoke-virtual {v0}, Lcom/divmob/maegame/f/b/c;->c()Lorg/anddev/andengine/entity/primitive/BaseRectangle;

    move-result-object v6

    new-instance v7, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    new-instance v8, Lcom/divmob/doodlebubble/t;

    invoke-direct {v8, p0}, Lcom/divmob/doodlebubble/t;-><init>(Lcom/divmob/doodlebubble/MenuActivity;)V

    const/4 v0, 0x2

    new-array v9, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    const/4 v10, 0x0

    new-instance v0, Lorg/anddev/andengine/entity/modifier/MoveModifier;

    iget-object v2, p0, Lcom/divmob/doodlebubble/MenuActivity;->X:Lcom/divmob/maegame/f/b/c;

    iget v2, v2, Lcom/divmob/maegame/f/b/c;->d:F

    const v3, -0x3e566666

    iget-object v4, p0, Lcom/divmob/doodlebubble/MenuActivity;->X:Lcom/divmob/maegame/f/b/c;

    iget v4, v4, Lcom/divmob/maegame/f/b/c;->e:F

    const v5, -0x3d833334

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/MoveModifier;-><init>(FFFFF)V

    aput-object v0, v9, v10

    const/4 v0, 0x1

    new-instance v2, Lorg/anddev/andengine/entity/modifier/ScaleModifier;

    const/high16 v3, 0x3f80

    const v4, 0x3eb33333

    invoke-direct {v2, v1, v3, v4}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFF)V

    aput-object v2, v9, v0

    invoke-direct {v7, v8, v9}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    invoke-virtual {v6, v7}, Lorg/anddev/andengine/entity/primitive/BaseRectangle;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    return-void
.end method

.method private r()V
    .locals 6

    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->P:Lcom/divmob/doodlebubble/x;

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->X:Lcom/divmob/maegame/f/b/c;

    invoke-virtual {v1}, Lcom/divmob/maegame/f/b/c;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/divmob/doodlebubble/x;->a(I)I

    move-result v3

    move v1, v2

    :goto_1
    sget-object v0, Lcom/divmob/common/a/a;->c:[I

    iget-object v4, p0, Lcom/divmob/doodlebubble/MenuActivity;->X:Lcom/divmob/maegame/f/b/c;

    invoke-virtual {v4}, Lcom/divmob/maegame/f/b/c;->e()I

    move-result v4

    aget v0, v0, v4

    if-lt v1, v0, :cond_1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/i;

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->O:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/divmob/maegame/g/e;->e(Lorg/anddev/andengine/entity/Entity;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->O:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/divmob/doodlebubble/i;

    iget-object v4, p0, Lcom/divmob/doodlebubble/MenuActivity;->Y:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    iget-object v5, p0, Lcom/divmob/doodlebubble/MenuActivity;->Z:Lcom/divmob/maegame/g/d;

    invoke-direct {v0, v4, v5}, Lcom/divmob/doodlebubble/i;-><init>(Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;Lcom/divmob/maegame/g/d;)V

    iget-object v4, p0, Lcom/divmob/doodlebubble/MenuActivity;->V:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v4, v0}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget-object v4, p0, Lcom/divmob/doodlebubble/MenuActivity;->V:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v4, v0}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    :goto_2
    invoke-static {v0}, Lcom/divmob/maegame/g/e;->d(Lorg/anddev/andengine/entity/Entity;)V

    iget-object v4, p0, Lcom/divmob/doodlebubble/MenuActivity;->N:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v0, v4}, Lcom/divmob/doodlebubble/i;->a(I)V

    rem-int/lit8 v4, v1, 0x5

    mul-int/lit8 v4, v4, 0x5a

    add-int/lit8 v4, v4, 0x1e

    int-to-float v4, v4

    div-int/lit8 v5, v1, 0x5

    mul-int/lit8 v5, v5, 0x5a

    add-int/lit8 v5, v5, 0x78

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Lcom/divmob/doodlebubble/i;->setPosition(FF)V

    if-gt v1, v3, :cond_3

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/i;->a()V

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->O:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/i;

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/divmob/doodlebubble/i;->b()V

    goto :goto_3
.end method

.method private s()V
    .locals 10

    const v1, 0x3e99999a

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/divmob/doodlebubble/MenuActivity;->U:Z

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->X:Lcom/divmob/maegame/f/b/c;

    invoke-virtual {v0}, Lcom/divmob/maegame/f/b/c;->b()V

    move v2, v6

    :goto_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->X:Lcom/divmob/maegame/f/b/c;

    invoke-virtual {v0}, Lcom/divmob/maegame/f/b/c;->c()Lorg/anddev/andengine/entity/primitive/BaseRectangle;

    move-result-object v7

    new-instance v8, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;

    const/4 v0, 0x2

    new-array v9, v0, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    new-instance v0, Lorg/anddev/andengine/entity/modifier/MoveModifier;

    const v2, -0x3e566666

    iget-object v3, p0, Lcom/divmob/doodlebubble/MenuActivity;->X:Lcom/divmob/maegame/f/b/c;

    iget v3, v3, Lcom/divmob/maegame/f/b/c;->d:F

    const v4, -0x3d833334

    iget-object v5, p0, Lcom/divmob/doodlebubble/MenuActivity;->X:Lcom/divmob/maegame/f/b/c;

    iget v5, v5, Lcom/divmob/maegame/f/b/c;->e:F

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/MoveModifier;-><init>(FFFFF)V

    aput-object v0, v9, v6

    const/4 v0, 0x1

    new-instance v2, Lorg/anddev/andengine/entity/modifier/ScaleModifier;

    const v3, 0x3eb33333

    const/high16 v4, 0x3f80

    invoke-direct {v2, v1, v3, v4}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFF)V

    aput-object v2, v9, v0

    invoke-direct {v8, v9}, Lorg/anddev/andengine/entity/modifier/ParallelEntityModifier;-><init>([Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    invoke-virtual {v7, v8}, Lorg/anddev/andengine/entity/primitive/BaseRectangle;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/Entity;

    invoke-static {v0}, Lcom/divmob/maegame/g/e;->c(Lorg/anddev/andengine/entity/Entity;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method private t()V
    .locals 10

    const/16 v9, 0x40

    const/16 v3, 0x200

    const/16 v8, 0x20

    const/high16 v7, 0x4282

    const/4 v1, 0x0

    new-instance v0, Lorg/anddev/andengine/entity/scene/Scene;

    invoke-direct {v0}, Lorg/anddev/andengine/entity/scene/Scene;-><init>()V

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->aa:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->aa:Lorg/anddev/andengine/entity/scene/Scene;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/entity/scene/Scene;->setBackgroundEnabled(Z)V

    new-instance v6, Lorg/anddev/andengine/entity/sprite/Sprite;

    const-string v0, "menu/dialog"

    invoke-virtual {p0, v0, v3, v3}, Lcom/divmob/doodlebubble/MenuActivity;->a(Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    invoke-direct {v6, v1, v1, v0}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const-string v2, "menu/hs_title"

    invoke-virtual {p0, v2, v3, v9}, Lcom/divmob/doodlebubble/MenuActivity;->a(Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v2

    invoke-direct {v0, v1, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    const/high16 v2, 0x429a

    const/high16 v3, 0x40a0

    invoke-virtual {v0, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    invoke-virtual {v6, v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    invoke-static {v0, v2}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/sprite/BaseSprite;F)V

    iget v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->s:I

    iget v2, p0, Lcom/divmob/doodlebubble/MenuActivity;->t:I

    invoke-static {v6, v0, v2}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/sprite/BaseSprite;II)V

    const-string v0, "yardscale.ttf"

    const/16 v2, 0x19

    invoke-virtual {p0, v0, v2}, Lcom/divmob/doodlebubble/MenuActivity;->a(Ljava/lang/String;I)Lorg/anddev/andengine/opengl/font/Font;

    move-result-object v3

    new-instance v0, Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    const/high16 v4, 0x42ce

    add-float/2addr v2, v4

    const-string v4, ""

    const/16 v5, 0x64

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->ab:Lorg/anddev/andengine/entity/text/ChangeableText;

    new-instance v0, Lcom/divmob/doodlebubble/u;

    const-string v2, "menu/easy_btn"

    invoke-virtual {p0, v2, v9, v8}, Lcom/divmob/doodlebubble/MenuActivity;->a(Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v2

    invoke-direct {v0, p0, v1, v1, v2}, Lcom/divmob/doodlebubble/u;-><init>(Lcom/divmob/doodlebubble/MenuActivity;FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    new-instance v2, Lcom/divmob/doodlebubble/v;

    const-string v3, "menu/med_btn"

    const/16 v4, 0x80

    invoke-virtual {p0, v3, v4, v8}, Lcom/divmob/doodlebubble/MenuActivity;->a(Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v3

    invoke-direct {v2, p0, v1, v1, v3}, Lcom/divmob/doodlebubble/v;-><init>(Lcom/divmob/doodlebubble/MenuActivity;FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    new-instance v3, Lcom/divmob/doodlebubble/k;

    const-string v4, "menu/hard_btn"

    const/16 v5, 0x80

    invoke-virtual {p0, v4, v5, v8}, Lcom/divmob/doodlebubble/MenuActivity;->a(Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v4

    invoke-direct {v3, p0, v1, v1, v4}, Lcom/divmob/doodlebubble/k;-><init>(Lcom/divmob/doodlebubble/MenuActivity;FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    invoke-virtual {v6, v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    invoke-virtual {v6, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    invoke-virtual {v6, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    const/high16 v1, 0x41d8

    invoke-virtual {v0, v1, v7}, Lcom/divmob/maegame/f/a/b;->setPosition(FF)V

    const/high16 v1, 0x42fe

    invoke-virtual {v2, v1, v7}, Lcom/divmob/maegame/f/a/b;->setPosition(FF)V

    const/high16 v1, 0x4381

    invoke-virtual {v3, v1, v7}, Lcom/divmob/maegame/f/a/b;->setPosition(FF)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->aa:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->aa:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->aa:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->aa:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, v6}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->aa:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->ab:Lorg/anddev/andengine/entity/text/ChangeableText;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    new-instance v0, Lcom/divmob/doodlebubble/l;

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getX()F

    move-result v1

    const/high16 v2, 0x42e6

    add-float v3, v1, v2

    invoke-virtual {v6}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v1

    const v2, 0x439d8000

    add-float v4, v1, v2

    iget-object v5, p0, Lcom/divmob/doodlebubble/MenuActivity;->h:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/divmob/doodlebubble/l;-><init>(Lcom/divmob/doodlebubble/MenuActivity;Lcom/divmob/maegame/game/MBaseGameActivity;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->aa:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/f/a/a;->a(Lorg/anddev/andengine/entity/scene/Scene;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->aa:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/entity/scene/Scene;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    return-void
.end method

.method private u()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/divmob/doodlebubble/MenuActivity;->b(I)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->aa:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {p0, v0, v1, v1}, Lcom/divmob/doodlebubble/MenuActivity;->a(Lorg/anddev/andengine/entity/scene/Scene;ZZ)V

    return-void
.end method

.method private v()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lorg/anddev/andengine/entity/scene/Scene;

    invoke-direct {v0}, Lorg/anddev/andengine/entity/scene/Scene;-><init>()V

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->ac:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->ac:Lorg/anddev/andengine/entity/scene/Scene;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->setBackgroundEnabled(Z)V

    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const-string v1, "help"

    const/16 v2, 0x200

    const/16 v3, 0x400

    invoke-virtual {p0, v1, v2, v3}, Lcom/divmob/doodlebubble/MenuActivity;->a(Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v1

    invoke-direct {v0, v4, v4, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->ac:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    new-instance v0, Lcom/divmob/doodlebubble/m;

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/divmob/doodlebubble/MenuActivity;->t:I

    iget-object v3, p0, Lcom/divmob/doodlebubble/MenuActivity;->h:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-virtual {v3}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTileHeight()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x5

    int-to-float v2, v2

    iget-object v3, p0, Lcom/divmob/doodlebubble/MenuActivity;->h:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/divmob/doodlebubble/m;-><init>(Lcom/divmob/doodlebubble/MenuActivity;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->ac:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->ac:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    return-void
.end method


# virtual methods
.method protected a(F)V
    .locals 2

    const v1, 0x3e99999a

    invoke-static {v1}, Lcom/divmob/maegame/b/a;->b(F)Lorg/anddev/andengine/entity/modifier/MoveXModifier;

    move-result-object v0

    invoke-super {p0, v1, v0}, Lcom/divmob/common/PortrailMenu;->a(FLorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->Q:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-static {v0}, Lcom/divmob/maegame/g/e;->e(Lorg/anddev/andengine/entity/Entity;)V

    return-void
.end method

.method protected a(Lorg/anddev/andengine/entity/scene/Scene;ZZ)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x3e99999a

    invoke-static {v1}, Lcom/divmob/maegame/b/a;->c(F)Lorg/anddev/andengine/entity/modifier/MoveXModifier;

    move-result-object v1

    invoke-super {p0, p1, p2, v0, v1}, Lcom/divmob/common/PortrailMenu;->a(Lorg/anddev/andengine/entity/scene/Scene;ZZLorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->Q:Lorg/anddev/andengine/entity/primitive/Rectangle;

    invoke-static {v0}, Lcom/divmob/maegame/g/e;->d(Lorg/anddev/andengine/entity/Entity;)V

    return-void
.end method

.method public b()V
    .locals 0

    invoke-super {p0}, Lcom/divmob/common/PortrailMenu;->b()V

    invoke-direct {p0}, Lcom/divmob/doodlebubble/MenuActivity;->o()V

    invoke-direct {p0}, Lcom/divmob/doodlebubble/MenuActivity;->p()V

    invoke-direct {p0}, Lcom/divmob/doodlebubble/MenuActivity;->t()V

    invoke-direct {p0}, Lcom/divmob/doodlebubble/MenuActivity;->v()V

    invoke-direct {p0}, Lcom/divmob/doodlebubble/MenuActivity;->k()V

    return-void
.end method

.method public d()V
    .locals 9

    const/4 v8, 0x0

    const v7, 0x4420c000

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->e:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/MenuActivity;->a(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    new-instance v0, Lcom/divmob/doodlebubble/j;

    const/high16 v3, 0x42ba

    const/high16 v4, 0x438f

    iget-object v5, p0, Lcom/divmob/doodlebubble/MenuActivity;->G:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/divmob/doodlebubble/j;-><init>(Lcom/divmob/doodlebubble/MenuActivity;Lcom/divmob/maegame/game/MBaseGameActivity;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->K:Lcom/divmob/maegame/f/a/a;

    new-instance v0, Lcom/divmob/doodlebubble/o;

    const/high16 v3, 0x4282

    const v4, 0x43b98000

    iget-object v5, p0, Lcom/divmob/doodlebubble/MenuActivity;->H:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/divmob/doodlebubble/o;-><init>(Lcom/divmob/doodlebubble/MenuActivity;Lcom/divmob/maegame/game/MBaseGameActivity;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->L:Lcom/divmob/maegame/f/a/a;

    new-instance v0, Lcom/divmob/doodlebubble/p;

    const/high16 v3, 0x42c0

    const v4, 0x43e58000

    iget-object v5, p0, Lcom/divmob/doodlebubble/MenuActivity;->I:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/divmob/doodlebubble/p;-><init>(Lcom/divmob/doodlebubble/MenuActivity;Lcom/divmob/maegame/game/MBaseGameActivity;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->M:Lcom/divmob/maegame/f/a/a;

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->o:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    const/high16 v1, 0x42ac

    const v2, 0x44088000

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->n:Lcom/divmob/maegame/f/a/a;

    const/high16 v1, 0x42fa

    invoke-virtual {v0, v1, v7}, Lcom/divmob/maegame/f/a/a;->setPosition(FF)V

    new-instance v0, Lcom/divmob/doodlebubble/q;

    const/high16 v1, 0x439e

    iget-object v2, p0, Lcom/divmob/doodlebubble/MenuActivity;->J:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-direct {v0, p0, v1, v7, v2}, Lcom/divmob/doodlebubble/q;-><init>(Lcom/divmob/doodlebubble/MenuActivity;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->K:Lcom/divmob/maegame/f/a/a;

    iget-object v2, p0, Lcom/divmob/doodlebubble/MenuActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1, v2, v6}, Lcom/divmob/maegame/f/a/a;->a(Lorg/anddev/andengine/entity/scene/Scene;I)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->L:Lcom/divmob/maegame/f/a/a;

    iget-object v2, p0, Lcom/divmob/doodlebubble/MenuActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1, v2, v6}, Lcom/divmob/maegame/f/a/a;->a(Lorg/anddev/andengine/entity/scene/Scene;I)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->M:Lcom/divmob/maegame/f/a/a;

    iget-object v2, p0, Lcom/divmob/doodlebubble/MenuActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1, v2, v6}, Lcom/divmob/maegame/f/a/a;->a(Lorg/anddev/andengine/entity/scene/Scene;I)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1, v6}, Lorg/anddev/andengine/entity/scene/Scene;->getChild(I)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/anddev/andengine/entity/IEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    const-string v0, "menu/fence"

    const/16 v1, 0x100

    const/16 v2, 0x200

    invoke-virtual {p0, v0, v1, v2}, Lcom/divmob/doodlebubble/MenuActivity;->c(Ljava/lang/String;II)Lorg/anddev/andengine/entity/sprite/Sprite;

    move-result-object v0

    const/high16 v1, 0x42d8

    const/high16 v2, 0x4390

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1, v8}, Lorg/anddev/andengine/entity/scene/Scene;->getChild(I)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/anddev/andengine/entity/IEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v1, 0x42d2

    const v2, 0x441e4000

    iget-object v3, p0, Lcom/divmob/doodlebubble/MenuActivity;->F:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1, v8}, Lorg/anddev/andengine/entity/scene/Scene;->getChild(I)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/anddev/andengine/entity/IEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public g()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    const/16 v1, 0x200

    const/16 v2, 0x400

    sget-object v3, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->C:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    const-string v0, "menu/endless_btn"

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->C:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/divmob/doodlebubble/MenuActivity;->a(Ljava/lang/String;IILorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->G:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    const-string v0, "menu/story_btn"

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->C:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/divmob/doodlebubble/MenuActivity;->a(Ljava/lang/String;IILorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->H:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    const-string v0, "menu/menu_hs_btn"

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->C:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/divmob/doodlebubble/MenuActivity;->a(Ljava/lang/String;IILorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->I:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    const-string v0, "coverflow/indicate"

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->C:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v1}, Lcom/divmob/doodlebubble/MenuActivity;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->D:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    const-string v0, "coverflow/slider"

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->C:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v1}, Lcom/divmob/doodlebubble/MenuActivity;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->E:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    const-string v0, "worlds/lock"

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->C:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v5, v4, v1}, Lcom/divmob/doodlebubble/MenuActivity;->a(Ljava/lang/String;IILorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->Y:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    const-string v0, "menu/help_btn"

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->C:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v4, v5, v1}, Lcom/divmob/doodlebubble/MenuActivity;->a(Ljava/lang/String;IILorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->J:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    const-string v0, "menu/helptray"

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->C:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v1}, Lcom/divmob/doodlebubble/MenuActivity;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->F:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->C:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/MenuActivity;->c(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)V

    return-void
.end method

.method public h()V
    .locals 3

    new-instance v0, Lcom/divmob/maegame/g/d;

    const-string v1, "violetnumber"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/divmob/maegame/g/d;-><init>(Lcom/divmob/maegame/game/MBaseGameActivity;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->Z:Lcom/divmob/maegame/g/d;

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->N:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->O:Ljava/util/ArrayList;

    new-instance v0, Lcom/divmob/doodlebubble/x;

    invoke-direct {v0, p0}, Lcom/divmob/doodlebubble/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->P:Lcom/divmob/doodlebubble/x;

    return-void
.end method

.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;FF)Z
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/divmob/doodlebubble/MenuActivity;->r:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x1b58

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->U:Z

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/i;

    iget-boolean v0, v0, Lcom/divmob/doodlebubble/i;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->X:Lcom/divmob/maegame/f/b/c;

    invoke-virtual {v0}, Lcom/divmob/maegame/f/b/c;->e()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/divmob/doodlebubble/MenuActivity;->a(II)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public onResumeGame()V
    .locals 1

    invoke-super {p0}, Lcom/divmob/common/PortrailMenu;->onResumeGame()V

    iget-boolean v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->U:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/divmob/doodlebubble/MenuActivity;->s()V

    :cond_0
    return-void
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->V:Lorg/anddev/andengine/entity/scene/Scene;

    if-ne p1, v1, :cond_2

    iget-boolean v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->U:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->X:Lcom/divmob/maegame/f/b/c;

    invoke-virtual {v1, p1, p2}, Lcom/divmob/maegame/f/b/c;->a(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->X:Lcom/divmob/maegame/f/b/c;

    invoke-virtual {v1}, Lcom/divmob/maegame/f/b/c;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcom/divmob/doodlebubble/MenuActivity;->U:Z

    invoke-direct {p0}, Lcom/divmob/doodlebubble/MenuActivity;->q()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/divmob/common/PortrailMenu;->onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    :goto_1
    return v0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->U:Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->S:Lorg/anddev/andengine/entity/scene/Scene;

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->R:Lcom/divmob/maegame/f/b/c;

    invoke-virtual {v1, p1, p2}, Lcom/divmob/maegame/f/b/c;->a(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/divmob/doodlebubble/MenuActivity;->R:Lcom/divmob/maegame/f/b/c;

    invoke-virtual {v1}, Lcom/divmob/maegame/f/b/c;->f()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/divmob/common/PortrailMenu;->onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/divmob/doodlebubble/MenuActivity;->a(I)V

    goto :goto_2

    :pswitch_1
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/divmob/doodlebubble/MenuActivity;->a(I)V

    goto :goto_2

    :pswitch_2
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/divmob/doodlebubble/MenuActivity;->a(I)V

    goto :goto_2

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/divmob/common/PortrailMenu;->onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
