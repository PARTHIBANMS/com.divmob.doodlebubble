.class public Lcom/divmob/doodlebubble/GameActivity;
.super Lcom/divmob/common/PortrailGame;

# interfaces
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;


# static fields
.field private static final C:I = 0x9

.field private static final D:I = 0x3

.field private static final E:I = 0x0

.field private static final F:I = 0x1

.field private static final G:I = 0x2

.field private static ak:I = 0x0

.field public static h:F = 0.0f

.field public static i:Lcom/divmob/doodlebubble/c/d; = null

.field public static j:Lcom/divmob/doodlebubble/c/g; = null

.field private static final o:F = 0.3f

.field private static final p:F = 5.0f

.field private static final q:I = 0x0

.field private static final r:I = 0x1


# instance fields
.field private H:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

.field private I:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

.field private J:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private K:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

.field private L:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private M:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private N:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private O:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/divmob/doodlebubble/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private P:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/divmob/doodlebubble/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/divmob/doodlebubble/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private R:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/divmob/doodlebubble/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private S:Lcom/divmob/doodlebubble/a/a;

.field private T:Lcom/divmob/doodlebubble/a/b;

.field private U:Z

.field private V:Lcom/divmob/doodlebubble/b/a;

.field private W:Lcom/divmob/doodlebubble/e/a;

.field private X:[I

.field private Y:J

.field private Z:Lcom/divmob/doodlebubble/x;

.field private aA:Lorg/anddev/andengine/entity/scene/Scene;

.field private aB:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private aC:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private aD:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private aE:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private aF:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private aG:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private aH:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private aI:Lcom/divmob/maegame/g/c;

.field private aJ:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

.field private aK:Lorg/anddev/andengine/entity/scene/Scene;

.field private aL:Landroid/widget/Button;

.field private aa:F

.field private ab:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private ac:I

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:Lcom/divmob/c/c;

.field private ai:Lcom/google/android/gms/ads/InterstitialAd;

.field private aj:Lcom/google/android/gms/ads/AdView;

.field private al:Lcom/divmob/maegame/g/d;

.field private am:Lorg/anddev/andengine/audio/sound/Sound;

.field private an:Lorg/anddev/andengine/audio/sound/Sound;

.field private ao:Lorg/anddev/andengine/audio/sound/Sound;

.field private ap:Lorg/anddev/andengine/audio/sound/Sound;

.field private aq:Lorg/anddev/andengine/audio/sound/Sound;

.field private ar:J

.field private as:Lorg/anddev/andengine/entity/scene/Scene;

.field private at:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private au:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private av:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private aw:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private ax:Lorg/anddev/andengine/entity/sprite/Sprite;

.field private ay:Lcom/divmob/maegame/g/c;

.field private az:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

.field k:Lorg/anddev/andengine/entity/sprite/Sprite;

.field l:Lorg/anddev/andengine/entity/sprite/Sprite;

.field m:Lorg/anddev/andengine/entity/sprite/Sprite;

.field n:Lorg/anddev/andengine/entity/sprite/Sprite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/divmob/doodlebubble/GameActivity;->h:F

    const/4 v0, 0x0

    sput v0, Lcom/divmob/doodlebubble/GameActivity;->ak:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/divmob/common/PortrailGame;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/divmob/doodlebubble/GameActivity;->U:Z

    iput-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->ai:Lcom/google/android/gms/ads/InterstitialAd;

    iput-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->aj:Lcom/google/android/gms/ads/AdView;

    iput-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->aL:Landroid/widget/Button;

    return-void
.end method

.method private A()V
    .locals 3

    new-instance v0, Lcom/divmob/doodlebubble/d/a;

    invoke-direct {v0, p0}, Lcom/divmob/doodlebubble/d/a;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/divmob/doodlebubble/GameActivity;->ad:I

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    invoke-virtual {v2}, Lcom/divmob/doodlebubble/e/a;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/divmob/doodlebubble/d/a;->a(II)Z

    return-void
.end method

.method private B()V
    .locals 3

    const/16 v2, 0x200

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v2, v2, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aJ:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    const-string v0, "rs/world_completed"

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->aJ:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v1}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aE:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    const-string v0, "rs/finish_world_text"

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->aJ:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v1}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aF:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    const-string v0, "rs/level_completed"

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->aJ:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v1}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aC:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    const-string v0, "rs/u_scored"

    const/16 v1, 0x100

    const/16 v2, 0x40

    invoke-virtual {p0, v0, v1, v2}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aD:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    const-string v0, "rs/continue"

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->aJ:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v1}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aB:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aJ:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/GameActivity;->c(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)V

    return-void
.end method

.method private C()V
    .locals 7

    const/high16 v6, 0x43ff

    const/high16 v4, 0x439b

    const/high16 v3, 0x436e

    const/4 v5, 0x0

    new-instance v0, Lorg/anddev/andengine/entity/scene/Scene;

    invoke-direct {v0}, Lorg/anddev/andengine/entity/scene/Scene;-><init>()V

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aA:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aA:Lorg/anddev/andengine/entity/scene/Scene;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->setBackgroundEnabled(Z)V

    new-instance v0, Lorg/anddev/andengine/entity/primitive/Rectangle;

    sget v1, Lcom/divmob/maegame/a/a;->g:I

    int-to-float v1, v1

    sget v2, Lcom/divmob/maegame/a/a;->h:I

    int-to-float v2, v2

    invoke-direct {v0, v5, v5, v1, v2}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    const v1, -0xcccccd

    invoke-static {v0, v1}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/Entity;I)V

    const v1, 0x3f333333

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setAlpha(F)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->aA:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    const-string v0, "rs/result_dialog"

    const/16 v1, 0x200

    const/16 v2, 0x400

    invoke-virtual {p0, v0, v1, v2}, Lcom/divmob/doodlebubble/GameActivity;->c(Ljava/lang/String;II)Lorg/anddev/andengine/entity/sprite/Sprite;

    move-result-object v0

    const/high16 v1, 0x4270

    invoke-virtual {v0, v5, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    iget v1, p0, Lcom/divmob/doodlebubble/GameActivity;->s:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/sprite/BaseSprite;F)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->aA:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->aC:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v1, v5, v3, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->k:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->k:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->k:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    invoke-static {v1, v2}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/sprite/BaseSprite;F)V

    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->aE:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v1, v5, v3, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->l:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->l:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->l:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    invoke-static {v1, v2}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/sprite/BaseSprite;F)V

    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->aD:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v1, v5, v4, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->m:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->m:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->m:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    invoke-static {v1, v2}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/sprite/BaseSprite;F)V

    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->aF:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v1, v5, v4, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->n:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->n:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->n:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    invoke-static {v1, v2}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/sprite/BaseSprite;F)V

    new-instance v1, Lcom/divmob/maegame/g/c;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    const v3, 0x43b78000

    add-float/2addr v2, v3

    const-string v3, ""

    iget-object v4, p0, Lcom/divmob/doodlebubble/GameActivity;->al:Lcom/divmob/maegame/g/d;

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/divmob/maegame/g/c;-><init>(FFLjava/lang/String;Lcom/divmob/maegame/g/d;)V

    iput-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->aI:Lcom/divmob/maegame/g/c;

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->aA:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->aI:Lcom/divmob/maegame/g/c;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v2, 0x428a

    iget-object v3, p0, Lcom/divmob/doodlebubble/GameActivity;->av:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v1, v2, v6, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->aH:Lorg/anddev/andengine/entity/sprite/Sprite;

    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    const v2, 0x438f8000

    iget-object v3, p0, Lcom/divmob/doodlebubble/GameActivity;->aB:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v1, v2, v6, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->aG:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->aA:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->aG:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->aA:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->aH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->aA:Lorg/anddev/andengine/entity/scene/Scene;

    sget v2, Lcom/divmob/maegame/a/a;->g:I

    int-to-float v2, v2

    invoke-virtual {v1, v2, v5}, Lorg/anddev/andengine/entity/scene/Scene;->setPosition(FF)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->aG:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->aH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aA:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/entity/scene/Scene;->setOnAreaTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;)V

    return-void
.end method

.method private D()V
    .locals 6

    const/16 v4, 0x80

    const/4 v5, 0x0

    new-instance v0, Lorg/anddev/andengine/entity/scene/Scene;

    invoke-direct {v0}, Lorg/anddev/andengine/entity/scene/Scene;-><init>()V

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aK:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aK:Lorg/anddev/andengine/entity/scene/Scene;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->setBackgroundEnabled(Z)V

    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    const-string v1, "help"

    const/16 v2, 0x200

    const/16 v3, 0x400

    invoke-virtual {p0, v1, v2, v3}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v1

    invoke-direct {v0, v5, v5, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->aK:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    const-string v1, "menu/back_btn"

    const/4 v2, 0x1

    const/4 v3, 0x2

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;IIII)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    new-instance v1, Lcom/divmob/doodlebubble/f;

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/divmob/doodlebubble/GameActivity;->t:I

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTileHeight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x5

    int-to-float v3, v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/divmob/doodlebubble/f;-><init>(Lcom/divmob/doodlebubble/GameActivity;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aK:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aK:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    return-void
.end method

.method private a(IIZ)Lcom/divmob/doodlebubble/a/a;
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/divmob/doodlebubble/a/a;

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->K:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-direct {v0, v1}, Lcom/divmob/doodlebubble/a/a;-><init>(Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, v1, v2}, Lcom/divmob/doodlebubble/a/a;->a(Lorg/anddev/andengine/entity/scene/Scene;I)V

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/divmob/doodlebubble/a/a;->a(II)V

    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/divmob/doodlebubble/GameActivity;->b(II)Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v1}, Lcom/divmob/doodlebubble/a/a;->a(II)V

    :cond_0
    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->O:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/divmob/doodlebubble/a/a;->c:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/divmob/doodlebubble/a/a;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->P:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->Q:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/a/a;

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/a/a;->b()V

    goto :goto_0
.end method

.method private a(FF)V
    .locals 6

    const/high16 v5, 0x4190

    const/high16 v2, 0x4140

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->am:Lorg/anddev/andengine/audio/sound/Sound;

    invoke-static {v0}, Lcom/divmob/maegame/d/a;->a(Lorg/anddev/andengine/audio/sound/Sound;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/divmob/doodlebubble/GameActivity;->U:Z

    iget v0, p0, Lcom/divmob/doodlebubble/GameActivity;->s:I

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    sub-float v0, p1, v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    add-float/2addr v0, v2

    :goto_0
    iget v1, p0, Lcom/divmob/doodlebubble/GameActivity;->t:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iget-object v3, p0, Lcom/divmob/doodlebubble/GameActivity;->T:Lcom/divmob/doodlebubble/a/b;

    div-float v4, v0, v2

    mul-float/2addr v4, v5

    div-float/2addr v1, v2

    neg-float v1, v1

    mul-float/2addr v1, v5

    invoke-virtual {v3, v4, v1}, Lcom/divmob/doodlebubble/a/b;->a(FF)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->V:Lcom/divmob/doodlebubble/b/a;

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-static {v0}, Lorg/anddev/andengine/util/MathUtils;->radToDeg(F)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {v1, v0}, Lcom/divmob/doodlebubble/b/a;->setRotation(F)V

    return-void

    :cond_0
    sub-float/2addr v0, v2

    goto :goto_0
.end method

.method static synthetic a(I)V
    .locals 0

    sput p0, Lcom/divmob/doodlebubble/GameActivity;->ak:I

    return-void
.end method

.method private a(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/divmob/doodlebubble/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "w"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "array"

    invoke-virtual {p0}, Lcom/divmob/doodlebubble/GameActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/divmob/doodlebubble/GameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v2, v1, v0

    invoke-direct {p0, v0, v2}, Lcom/divmob/doodlebubble/GameActivity;->a(ILjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(ILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_2

    move v1, v0

    :goto_1
    const/4 v3, 0x1

    invoke-direct {p0, p1, v1, v3}, Lcom/divmob/doodlebubble/GameActivity;->a(IIZ)Lcom/divmob/doodlebubble/a/a;

    move-result-object v3

    sget v1, Lcom/divmob/common/a/a;->a:I

    if-le v2, v1, :cond_3

    add-int/lit8 v1, v2, -0x1

    :goto_2
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v3, v2}, Lcom/divmob/doodlebubble/a/a;->a(I)V

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->X:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/divmob/doodlebubble/GameActivity;J)V
    .locals 0

    iput-wide p1, p0, Lcom/divmob/doodlebubble/GameActivity;->ar:J

    return-void
.end method

.method private a(Lcom/divmob/doodlebubble/a/a;)V
    .locals 9

    const/4 v2, -0x1

    const/4 v8, 0x1

    iput-boolean v8, p1, Lcom/divmob/doodlebubble/a/a;->e:Z

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->R:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p1, Lcom/divmob/doodlebubble/a/a;->c:I

    rem-int/lit8 v4, v0, 0x2

    invoke-virtual {p1}, Lcom/divmob/doodlebubble/a/a;->f()I

    move-result v5

    move v3, v2

    :goto_0
    if-le v3, v8, :cond_0

    return-void

    :cond_0
    move v1, v2

    :goto_1
    if-le v1, v8, :cond_1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    if-ne v1, v8, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    if-ne v1, v2, :cond_5

    if-ne v4, v8, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->O:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/divmob/doodlebubble/a/a;->c:I

    add-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/divmob/doodlebubble/a/a;->d:I

    add-int/2addr v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/a/a;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/a/a;->f()I

    move-result v6

    if-ne v5, v6, :cond_5

    iget-boolean v6, v0, Lcom/divmob/doodlebubble/a/a;->e:Z

    if-nez v6, :cond_5

    invoke-direct {p0, v0}, Lcom/divmob/doodlebubble/GameActivity;->a(Lcom/divmob/doodlebubble/a/a;)V

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private a(Lcom/divmob/doodlebubble/a/a;Z)V
    .locals 3

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/e/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->X:[I

    invoke-virtual {p1}, Lcom/divmob/doodlebubble/a/a;->f()I

    move-result v1

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->X:[I

    invoke-virtual {p1}, Lcom/divmob/doodlebubble/a/a;->f()I

    move-result v1

    aget v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    iget-object v0, v0, Lcom/divmob/doodlebubble/e/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->X:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    :cond_0
    sget-object v0, Lcom/divmob/doodlebubble/GameActivity;->i:Lcom/divmob/doodlebubble/c/d;

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/c/d;->obtainPoolItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/c/c;

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/c/c;->hasParent()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/divmob/doodlebubble/c/c;->a(Lorg/anddev/andengine/entity/scene/Scene;I)V

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/divmob/doodlebubble/c/c;->a(Lcom/divmob/doodlebubble/a/a;Z)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->X:[I

    aget v1, v1, v0

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    invoke-virtual {v1, v0}, Lcom/divmob/doodlebubble/e/a;->b(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(Z)V
    .locals 5

    iget v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ac:I

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->R:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ac:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->R:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/a/a;

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->P:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->O:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/divmob/doodlebubble/a/a;->c:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/divmob/doodlebubble/a/a;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/a/a;->a()V

    invoke-direct {p0, v0, p1}, Lcom/divmob/doodlebubble/GameActivity;->a(Lcom/divmob/doodlebubble/a/a;Z)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    sget v2, Lcom/divmob/common/a/a;->b:I

    invoke-virtual {v0, v2}, Lcom/divmob/doodlebubble/e/a;->a(I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/divmob/doodlebubble/GameActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/divmob/doodlebubble/GameActivity;->U:Z

    return v0
.end method

.method private b(II)Landroid/graphics/Point;
    .locals 9

    const/4 v8, -0x1

    const/4 v3, 0x1

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->O:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/a/a;

    rem-int/lit8 v5, p1, 0x2

    if-eqz v0, :cond_0

    move v2, v3

    :goto_0
    if-ge v2, v8, :cond_1

    :cond_0
    move v4, v3

    :goto_1
    if-ge v4, v8, :cond_7

    const/4 v0, 0x0

    iget v2, v1, Landroid/graphics/Point;->x:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->x:I

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_1
    move v4, v3

    :goto_3
    if-ge v4, v8, :cond_2

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    if-eqz v4, :cond_6

    :cond_3
    if-eqz v2, :cond_5

    if-eqz v4, :cond_5

    if-ne v4, v3, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    if-ne v4, v8, :cond_6

    if-ne v5, v3, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->O:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    add-int v7, p1, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int v7, p2, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/a/a;

    if-nez v0, :cond_6

    add-int v0, p1, v2

    iput v0, v1, Landroid/graphics/Point;->x:I

    add-int v0, p2, v4

    iput v0, v1, Landroid/graphics/Point;->y:I

    move-object v0, v1

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_3

    :cond_7
    move v2, v3

    :goto_4
    if-ge v2, v8, :cond_8

    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_1

    :cond_8
    if-nez v4, :cond_9

    if-eqz v2, :cond_c

    :cond_9
    if-eqz v4, :cond_b

    if-eqz v2, :cond_b

    if-ne v2, v3, :cond_a

    if-eqz v5, :cond_b

    :cond_a
    if-ne v2, v8, :cond_c

    if-ne v5, v3, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->O:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/StringBuilder;

    add-int v7, p1, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int v7, p2, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/a/a;

    if-eqz v0, :cond_c

    move-object v0, v1

    goto/16 :goto_2

    :cond_c
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_4
.end method

.method static synthetic b(Lcom/divmob/doodlebubble/GameActivity;)Lcom/divmob/doodlebubble/a/b;
    .locals 1

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->T:Lcom/divmob/doodlebubble/a/b;

    return-object v0
.end method

.method private b(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, p1, :cond_0

    return-void

    :cond_0
    rem-int/lit8 v0, v1, 0x2

    :goto_1
    const/16 v2, 0x9

    if-lt v0, v2, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/divmob/doodlebubble/GameActivity;->a(IIZ)Lcom/divmob/doodlebubble/a/a;

    move-result-object v2

    iget-object v3, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    invoke-virtual {v3}, Lcom/divmob/doodlebubble/e/a;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/divmob/doodlebubble/a/a;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private b(Lcom/divmob/doodlebubble/a/a;)V
    .locals 8

    const/4 v2, -0x1

    const/4 v7, 0x1

    iput-boolean v7, p1, Lcom/divmob/doodlebubble/a/a;->e:Z

    iget v0, p1, Lcom/divmob/doodlebubble/a/a;->c:I

    rem-int/lit8 v4, v0, 0x2

    move v3, v2

    :goto_0
    if-le v3, v7, :cond_0

    return-void

    :cond_0
    move v1, v2

    :goto_1
    if-le v1, v7, :cond_1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    if-ne v1, v7, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    if-ne v1, v2, :cond_5

    if-ne v4, v7, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->O:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/divmob/doodlebubble/a/a;->c:I

    add-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/divmob/doodlebubble/a/a;->d:I

    add-int/2addr v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/a/a;

    if-eqz v0, :cond_5

    iget-boolean v5, v0, Lcom/divmob/doodlebubble/a/a;->e:Z

    if-nez v5, :cond_5

    invoke-direct {p0, v0}, Lcom/divmob/doodlebubble/GameActivity;->b(Lcom/divmob/doodlebubble/a/a;)V

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method static synthetic c(Lcom/divmob/doodlebubble/GameActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->P:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/divmob/doodlebubble/GameActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/divmob/doodlebubble/GameActivity;->s()V

    return-void
.end method

.method static synthetic e(Lcom/divmob/doodlebubble/GameActivity;)Lcom/divmob/doodlebubble/e/a;
    .locals 1

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    return-object v0
.end method

.method static synthetic f(Lcom/divmob/doodlebubble/GameActivity;)Lcom/divmob/doodlebubble/x;
    .locals 1

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->Z:Lcom/divmob/doodlebubble/x;

    return-object v0
.end method

.method static synthetic g(Lcom/divmob/doodlebubble/GameActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/divmob/doodlebubble/GameActivity;->z()V

    return-void
.end method

.method static synthetic h(Lcom/divmob/doodlebubble/GameActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ar:J

    return-wide v0
.end method

.method static synthetic i(Lcom/divmob/doodlebubble/GameActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/divmob/doodlebubble/GameActivity;->o()V

    return-void
.end method

.method static synthetic j(Lcom/divmob/doodlebubble/GameActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/divmob/doodlebubble/GameActivity;->p()V

    return-void
.end method

.method static synthetic k()I
    .locals 1

    sget v0, Lcom/divmob/doodlebubble/GameActivity;->ak:I

    return v0
.end method

.method static synthetic k(Lcom/divmob/doodlebubble/GameActivity;)Lcom/google/android/gms/ads/InterstitialAd;
    .locals 1

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ai:Lcom/google/android/gms/ads/InterstitialAd;

    return-object v0
.end method

.method static synthetic l(Lcom/divmob/doodlebubble/GameActivity;)Lcom/divmob/c/c;
    .locals 1

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ah:Lcom/divmob/c/c;

    return-object v0
.end method

.method private o()V
    .locals 3

    invoke-direct {p0}, Lcom/divmob/doodlebubble/GameActivity;->q()V

    sget v0, Lcom/divmob/doodlebubble/GameActivity;->h:F

    iget v1, p0, Lcom/divmob/doodlebubble/GameActivity;->aa:F

    add-float/2addr v0, v1

    sput v0, Lcom/divmob/doodlebubble/GameActivity;->h:F

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    sget v0, Lcom/divmob/doodlebubble/GameActivity;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/divmob/doodlebubble/GameActivity;->v()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/a/a;

    iget v2, p0, Lcom/divmob/doodlebubble/GameActivity;->aa:F

    invoke-virtual {v0, v2}, Lcom/divmob/doodlebubble/a/a;->a(F)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/a/a;

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/a/a;->getY()F

    move-result v0

    sget v2, Lcom/divmob/maegame/a/a;->h:I

    add-int/lit16 v2, v2, -0x90

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/divmob/doodlebubble/GameActivity;->y()V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private p()V
    .locals 4

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/divmob/doodlebubble/GameActivity;->h:F

    iget v1, p0, Lcom/divmob/doodlebubble/GameActivity;->aa:F

    add-float/2addr v0, v1

    sput v0, Lcom/divmob/doodlebubble/GameActivity;->h:F

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ab:Lorg/anddev/andengine/entity/sprite/Sprite;

    const/4 v1, 0x0

    sget v2, Lcom/divmob/doodlebubble/GameActivity;->h:F

    iget-object v3, p0, Lcom/divmob/doodlebubble/GameActivity;->ab:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/a/a;

    iget v2, p0, Lcom/divmob/doodlebubble/GameActivity;->aa:F

    invoke-virtual {v0, v2}, Lcom/divmob/doodlebubble/a/a;->a(F)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/a/a;

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/a/a;->getY()F

    move-result v0

    sget v2, Lcom/divmob/maegame/a/a;->h:I

    add-int/lit16 v2, v2, -0x90

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/divmob/doodlebubble/GameActivity;->y()V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private q()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aa:F

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/a/a;

    iget v0, v0, Lcom/divmob/doodlebubble/a/a;->c:I

    const/4 v2, 0x7

    if-lt v0, v2, :cond_1

    const v0, 0x3e99999a

    iput v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aa:F

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private r()V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->X:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->O:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :goto_1
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    sput v0, Lcom/divmob/doodlebubble/GameActivity;->h:F

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/e/a;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/e/a;->g()V

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/divmob/doodlebubble/GameActivity;->b(I)V

    :cond_0
    invoke-direct {p0}, Lcom/divmob/doodlebubble/GameActivity;->t()V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->T:Lcom/divmob/doodlebubble/a/b;

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    invoke-virtual {v1}, Lcom/divmob/doodlebubble/e/a;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/divmob/doodlebubble/a/b;->a(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/divmob/doodlebubble/GameActivity;->Y:J

    const v0, 0x3e99999a

    iput v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aa:F

    return-void

    :cond_1
    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->X:[I

    aput v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/a/a;

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->Q:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/a/a;->a()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/e/a;->a()I

    move-result v0

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    invoke-virtual {v2}, Lcom/divmob/doodlebubble/e/a;->b()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/divmob/doodlebubble/GameActivity;->a(II)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/e/a;->g()V

    :goto_2
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->X:[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->X:[I

    aget v0, v0, v1

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    invoke-virtual {v0, v1}, Lcom/divmob/doodlebubble/e/a;->b(I)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private s()V
    .locals 8

    const-wide/high16 v6, 0x3fe0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->T:Lcom/divmob/doodlebubble/a/b;

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/a/b;->getY()F

    move-result v0

    sget v2, Lcom/divmob/doodlebubble/GameActivity;->h:F

    sub-float/2addr v0, v2

    const/high16 v2, 0x4228

    div-float/2addr v0, v2

    float-to-double v2, v0

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/lit8 v0, v0, 0x0

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->T:Lcom/divmob/doodlebubble/a/b;

    invoke-virtual {v2}, Lcom/divmob/doodlebubble/a/b;->getX()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x4038

    sub-double/2addr v2, v4

    rem-int/lit8 v4, v0, 0x2

    mul-int/lit8 v4, v4, 0x18

    int-to-double v4, v4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4048

    div-double/2addr v2, v4

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    rem-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x8

    if-le v2, v3, :cond_0

    rem-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x8

    :cond_0
    if-gez v2, :cond_1

    move v2, v1

    :cond_1
    if-gez v0, :cond_2

    move v0, v1

    :cond_2
    invoke-direct {p0, v0, v2, v1}, Lcom/divmob/doodlebubble/GameActivity;->a(IIZ)Lcom/divmob/doodlebubble/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->T:Lcom/divmob/doodlebubble/a/b;

    invoke-virtual {v2}, Lcom/divmob/doodlebubble/a/b;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/divmob/doodlebubble/a/a;->a(I)V

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->R:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0, v0}, Lcom/divmob/doodlebubble/GameActivity;->a(Lcom/divmob/doodlebubble/a/a;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_3

    iput v1, p0, Lcom/divmob/doodlebubble/GameActivity;->ac:I

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->an:Lorg/anddev/andengine/audio/sound/Sound;

    invoke-static {v0}, Lcom/divmob/maegame/d/a;->a(Lorg/anddev/andengine/audio/sound/Sound;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/divmob/doodlebubble/GameActivity;->a(Z)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->X:[I

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->T:Lcom/divmob/doodlebubble/a/b;

    invoke-virtual {v1}, Lcom/divmob/doodlebubble/a/b;->f()I

    move-result v1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    invoke-direct {p0}, Lcom/divmob/doodlebubble/GameActivity;->u()V

    :goto_0
    invoke-direct {p0}, Lcom/divmob/doodlebubble/GameActivity;->t()V

    return-void

    :cond_3
    move v2, v1

    :goto_1
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_4

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->X:[I

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->T:Lcom/divmob/doodlebubble/a/b;

    invoke-virtual {v1}, Lcom/divmob/doodlebubble/a/b;->f()I

    move-result v1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ao:Lorg/anddev/andengine/audio/sound/Sound;

    invoke-static {v0}, Lcom/divmob/maegame/d/a;->a(Lorg/anddev/andengine/audio/sound/Sound;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->R:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/a/a;

    iput-boolean v1, v0, Lcom/divmob/doodlebubble/a/a;->e:Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method

.method private t()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->T:Lcom/divmob/doodlebubble/a/b;

    sget v1, Lcom/divmob/maegame/a/a;->g:I

    int-to-float v1, v1

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    const/high16 v2, 0x41c0

    sub-float/2addr v1, v2

    sget v2, Lcom/divmob/maegame/a/a;->h:I

    int-to-float v2, v2

    const/high16 v3, 0x4240

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/divmob/doodlebubble/a/b;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->T:Lcom/divmob/doodlebubble/a/b;

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->S:Lcom/divmob/doodlebubble/a/a;

    invoke-virtual {v1}, Lcom/divmob/doodlebubble/a/a;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/divmob/doodlebubble/a/b;->a(I)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->S:Lcom/divmob/doodlebubble/a/a;

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    invoke-virtual {v1}, Lcom/divmob/doodlebubble/e/a;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/divmob/doodlebubble/a/a;->a(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/divmob/doodlebubble/GameActivity;->U:Z

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->T:Lcom/divmob/doodlebubble/a/b;

    invoke-virtual {v0, v4, v4}, Lcom/divmob/doodlebubble/a/b;->b(FF)V

    return-void
.end method

.method private u()V
    .locals 5

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    const/16 v0, 0xa

    if-lt v1, v0, :cond_0

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    invoke-direct {p0, v2}, Lcom/divmob/doodlebubble/GameActivity;->a(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->O:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0,"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/a/a;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/divmob/doodlebubble/GameActivity;->b(Lcom/divmob/doodlebubble/a/a;)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/a/a;

    iget-boolean v3, v0, Lcom/divmob/doodlebubble/a/a;->e:Z

    if-eqz v3, :cond_3

    iput-boolean v2, v0, Lcom/divmob/doodlebubble/a/a;->e:Z

    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/divmob/doodlebubble/GameActivity;->R:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private v()V
    .locals 5

    const/high16 v0, -0x3d58

    sput v0, Lcom/divmob/doodlebubble/GameActivity;->h:F

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->O:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->P:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/divmob/doodlebubble/GameActivity;->b(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->P:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/a/a;

    iget v2, v0, Lcom/divmob/doodlebubble/a/a;->c:I

    add-int/lit8 v2, v2, 0x2

    iget v3, v0, Lcom/divmob/doodlebubble/a/a;->d:I

    invoke-virtual {v0, v2, v3}, Lcom/divmob/doodlebubble/a/a;->a(II)V

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->O:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/divmob/doodlebubble/a/a;->c:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/divmob/doodlebubble/a/a;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private w()V
    .locals 4

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    const/16 v1, 0x200

    const/16 v2, 0x80

    sget-object v3, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->az:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    iget v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ae:I

    if-nez v0, :cond_0

    const-string v0, "rs/congrats"

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->az:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v1}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->at:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    :goto_0
    const-string v0, "rs/tryagain"

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->az:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v1}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->au:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    const-string v0, "rs/menu"

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->az:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v1}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->av:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->az:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/GameActivity;->c(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)V

    return-void

    :cond_0
    const-string v0, "rs/gameover"

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->az:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v1}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->at:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    goto :goto_0
.end method

.method private x()V
    .locals 7

    const/high16 v6, 0x43ff

    const/4 v5, 0x0

    new-instance v0, Lorg/anddev/andengine/entity/scene/Scene;

    invoke-direct {v0}, Lorg/anddev/andengine/entity/scene/Scene;-><init>()V

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->as:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->as:Lorg/anddev/andengine/entity/scene/Scene;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->setBackgroundEnabled(Z)V

    new-instance v0, Lorg/anddev/andengine/entity/primitive/Rectangle;

    sget v1, Lcom/divmob/maegame/a/a;->g:I

    int-to-float v1, v1

    sget v2, Lcom/divmob/maegame/a/a;->h:I

    int-to-float v2, v2

    invoke-direct {v0, v5, v5, v1, v2}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    const v1, -0xcccccd

    invoke-static {v0, v1}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/Entity;I)V

    const v1, 0x3f333333

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setAlpha(F)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->as:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    const-string v0, "rs/result_dialog"

    const/16 v1, 0x200

    const/16 v2, 0x400

    invoke-virtual {p0, v0, v1, v2}, Lcom/divmob/doodlebubble/GameActivity;->c(Ljava/lang/String;II)Lorg/anddev/andengine/entity/sprite/Sprite;

    move-result-object v0

    const/high16 v1, 0x4270

    invoke-virtual {v0, v5, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    iget v1, p0, Lcom/divmob/doodlebubble/GameActivity;->s:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/sprite/BaseSprite;F)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->as:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v2, 0x436e

    iget-object v3, p0, Lcom/divmob/doodlebubble/GameActivity;->at:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v1, v5, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    invoke-static {v1, v2}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/sprite/BaseSprite;F)V

    const-string v1, "rs/u_scored"

    const/16 v2, 0x100

    const/16 v3, 0x40

    invoke-virtual {p0, v1, v2, v3}, Lcom/divmob/doodlebubble/GameActivity;->c(Ljava/lang/String;II)Lorg/anddev/andengine/entity/sprite/Sprite;

    move-result-object v1

    const v2, 0x43988000

    invoke-virtual {v1, v5, v2}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v2

    invoke-static {v1, v2}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/sprite/BaseSprite;F)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    new-instance v1, Lcom/divmob/maegame/g/c;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/sprite/Sprite;->getY()F

    move-result v2

    const v3, 0x43b78000

    add-float/2addr v2, v3

    const-string v3, ""

    iget-object v4, p0, Lcom/divmob/doodlebubble/GameActivity;->al:Lcom/divmob/maegame/g/d;

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/divmob/maegame/g/c;-><init>(FFLjava/lang/String;Lcom/divmob/maegame/g/d;)V

    iput-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->ay:Lcom/divmob/maegame/g/c;

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->as:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->ay:Lcom/divmob/maegame/g/c;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v2, 0x438d

    iget-object v3, p0, Lcom/divmob/doodlebubble/GameActivity;->au:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v1, v2, v6, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->aw:Lorg/anddev/andengine/entity/sprite/Sprite;

    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    const/high16 v2, 0x428a

    iget-object v3, p0, Lcom/divmob/doodlebubble/GameActivity;->av:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v1, v2, v6, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->ax:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->as:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->aw:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->as:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->ax:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/scene/Scene;->registerTouchArea(Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->as:Lorg/anddev/andengine/entity/scene/Scene;

    sget v2, Lcom/divmob/maegame/a/a;->g:I

    int-to-float v2, v2

    invoke-virtual {v1, v2, v5}, Lorg/anddev/andengine/entity/scene/Scene;->setPosition(FF)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->aw:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->ax:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->as:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/entity/scene/Scene;->setOnAreaTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnAreaTouchListener;)V

    return-void
.end method

.method private y()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ay:Lcom/divmob/maegame/g/c;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    invoke-virtual {v2}, Lcom/divmob/doodlebubble/e/a;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/g/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ay:Lcom/divmob/maegame/g/c;

    iget v1, p0, Lcom/divmob/doodlebubble/GameActivity;->s:I

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/g/c;->b(I)V

    iget v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ae:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/divmob/doodlebubble/GameActivity;->A()V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aq:Lorg/anddev/andengine/audio/sound/Sound;

    invoke-static {v0}, Lcom/divmob/maegame/d/a;->a(Lorg/anddev/andengine/audio/sound/Sound;)V

    :goto_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->as:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {p0, v0, v3, v3}, Lcom/divmob/doodlebubble/GameActivity;->a(Lorg/anddev/andengine/entity/scene/Scene;ZZ)V

    new-instance v0, Lcom/divmob/doodlebubble/d;

    invoke-direct {v0, p0}, Lcom/divmob/doodlebubble/d;-><init>(Lcom/divmob/doodlebubble/GameActivity;)V

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ap:Lorg/anddev/andengine/audio/sound/Sound;

    invoke-static {v0}, Lcom/divmob/maegame/d/a;->a(Lorg/anddev/andengine/audio/sound/Sound;)V

    goto :goto_0
.end method

.method private z()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aq:Lorg/anddev/andengine/audio/sound/Sound;

    invoke-static {v0}, Lcom/divmob/maegame/d/a;->a(Lorg/anddev/andengine/audio/sound/Sound;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/e/a;->a()I

    move-result v0

    sget-object v1, Lcom/divmob/common/a/a;->c:[I

    iget v2, p0, Lcom/divmob/doodlebubble/GameActivity;->ag:I

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aI:Lcom/divmob/maegame/g/c;

    invoke-virtual {v0, v4}, Lcom/divmob/maegame/g/c;->setVisible(Z)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aI:Lcom/divmob/maegame/g/c;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    invoke-virtual {v2}, Lcom/divmob/doodlebubble/e/a;->c()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/g/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aI:Lcom/divmob/maegame/g/c;

    iget v1, p0, Lcom/divmob/doodlebubble/GameActivity;->s:I

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/g/c;->b(I)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->k:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->m:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->l:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->n:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    :goto_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aA:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {p0, v0, v3, v4}, Lcom/divmob/doodlebubble/GameActivity;->a(Lorg/anddev/andengine/entity/scene/Scene;ZZ)V

    new-instance v0, Lcom/divmob/doodlebubble/e;

    invoke-direct {v0, p0}, Lcom/divmob/doodlebubble/e;-><init>(Lcom/divmob/doodlebubble/GameActivity;)V

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aI:Lcom/divmob/maegame/g/c;

    invoke-virtual {v0, v3}, Lcom/divmob/maegame/g/c;->setVisible(Z)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->k:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->m:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->l:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->n:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {v0, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected a(F)V
    .locals 2

    const/high16 v1, 0x3f00

    invoke-static {v1}, Lcom/divmob/maegame/b/a;->b(F)Lorg/anddev/andengine/entity/modifier/MoveXModifier;

    move-result-object v0

    invoke-super {p0, v1, v0}, Lcom/divmob/common/PortrailGame;->a(FLorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    return-void
.end method

.method protected a(Lorg/anddev/andengine/entity/scene/Scene;ZZ)V
    .locals 1

    const v0, 0x3e99999a

    invoke-static {v0}, Lcom/divmob/maegame/b/a;->c(F)Lorg/anddev/andengine/entity/modifier/MoveXModifier;

    move-result-object v0

    invoke-super {p0, p1, p2, p3, v0}, Lcom/divmob/common/PortrailGame;->a(Lorg/anddev/andengine/entity/scene/Scene;ZZLorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/divmob/common/PortrailGame;->b()V

    invoke-direct {p0}, Lcom/divmob/doodlebubble/GameActivity;->x()V

    invoke-direct {p0}, Lcom/divmob/doodlebubble/GameActivity;->C()V

    invoke-direct {p0}, Lcom/divmob/doodlebubble/GameActivity;->D()V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->Z:Lcom/divmob/doodlebubble/x;

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/x;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aK:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {p0, v0, v1, v1}, Lcom/divmob/doodlebubble/GameActivity;->a(Lorg/anddev/andengine/entity/scene/Scene;ZZ)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 11

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v7, 0x0

    move v0, v7

    :goto_0
    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    iget-object v8, p0, Lcom/divmob/doodlebubble/GameActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    new-instance v9, Lorg/anddev/andengine/entity/scene/background/SpriteBackground;

    new-instance v0, Lcom/divmob/doodlebubble/b;

    sget v1, Lcom/divmob/maegame/a/a;->g:I

    int-to-float v4, v1

    sget v1, Lcom/divmob/maegame/a/a;->h:I

    int-to-float v5, v1

    iget-object v6, p0, Lcom/divmob/doodlebubble/GameActivity;->J:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-object v1, p0

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/divmob/doodlebubble/b;-><init>(Lcom/divmob/doodlebubble/GameActivity;FFFFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    invoke-direct {v9, v0}, Lorg/anddev/andengine/entity/scene/background/SpriteBackground;-><init>(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    invoke-virtual {v8, v9}, Lorg/anddev/andengine/entity/scene/Scene;->setBackground(Lorg/anddev/andengine/entity/scene/background/IBackground;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/entity/scene/Scene;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->V:Lcom/divmob/doodlebubble/b/a;

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, v1, v7}, Lcom/divmob/doodlebubble/b/a;->a(Lorg/anddev/andengine/entity/scene/Scene;I)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, v7}, Lorg/anddev/andengine/entity/scene/Scene;->getChild(I)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->S:Lcom/divmob/doodlebubble/a/a;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/entity/IEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->T:Lcom/divmob/doodlebubble/a/b;

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, v1, v7}, Lcom/divmob/doodlebubble/a/b;->a(Lorg/anddev/andengine/entity/scene/Scene;I)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, v1, v10}, Lcom/divmob/doodlebubble/e/a;->a(Lorg/anddev/andengine/entity/scene/Scene;I)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->c:Lcom/divmob/maegame/f/a/b;

    iget v1, p0, Lcom/divmob/doodlebubble/GameActivity;->s:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/divmob/doodlebubble/GameActivity;->c:Lcom/divmob/maegame/f/a/b;

    invoke-virtual {v3}, Lcom/divmob/maegame/f/a/b;->getWidth()F

    move-result v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x4040

    sub-float/2addr v1, v3

    const/high16 v3, 0x40e0

    invoke-virtual {v0, v1, v3}, Lcom/divmob/maegame/f/a/b;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->c:Lcom/divmob/maegame/f/a/b;

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, v1, v10}, Lcom/divmob/maegame/f/a/b;->a(Lorg/anddev/andengine/entity/scene/Scene;I)V

    new-instance v0, Lorg/anddev/andengine/entity/sprite/Sprite;

    sget v1, Lcom/divmob/maegame/a/a;->h:I

    add-int/lit16 v1, v1, -0x90

    int-to-float v1, v1

    iget-object v3, p0, Lcom/divmob/doodlebubble/GameActivity;->M:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, v2, v1, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iget v1, p0, Lcom/divmob/doodlebubble/GameActivity;->s:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setWidth(F)V

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1, v10}, Lorg/anddev/andengine/entity/scene/Scene;->getChild(I)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/anddev/andengine/entity/IEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    invoke-direct {p0}, Lcom/divmob/doodlebubble/GameActivity;->r()V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    new-instance v1, Lcom/divmob/doodlebubble/c;

    invoke-direct {v1, p0}, Lcom/divmob/doodlebubble/c;-><init>(Lcom/divmob/doodlebubble/GameActivity;)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->registerUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/e/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ceil"

    const/16 v1, 0x200

    const/16 v3, 0x20

    invoke-virtual {p0, v0, v1, v3}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    sget v3, Lcom/divmob/doodlebubble/GameActivity;->h:F

    const/high16 v4, 0x41a0

    sub-float/2addr v3, v4

    invoke-direct {v1, v2, v3, v0}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->ab:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ab:Lorg/anddev/andengine/entity/sprite/Sprite;

    iget v1, p0, Lcom/divmob/doodlebubble/GameActivity;->s:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setWidth(F)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, v7}, Lorg/anddev/andengine/entity/scene/Scene;->getChild(I)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->ab:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/entity/IEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    new-instance v3, Lorg/anddev/andengine/entity/Entity;

    invoke-direct {v3}, Lorg/anddev/andengine/entity/Entity;-><init>()V

    invoke-virtual {v1, v3}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public e()V
    .locals 1

    iget v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ae:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/divmob/doodlebubble/GameActivity;->A()V

    :cond_0
    invoke-virtual {p0}, Lcom/divmob/doodlebubble/GameActivity;->finish()V

    return-void
.end method

.method public g()V
    .locals 8

    const/16 v7, 0x400

    const/4 v6, 0x1

    const/16 v5, 0x20

    const/16 v4, 0x200

    new-instance v0, Lcom/divmob/doodlebubble/x;

    invoke-direct {v0, p0}, Lcom/divmob/doodlebubble/x;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->Z:Lcom/divmob/doodlebubble/x;

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v4, v4, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->H:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    const-string v0, "cannon"

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->H:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v1}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->L:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->H:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/GameActivity;->c(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)V

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/16 v1, 0x100

    const/16 v2, 0x80

    sget-object v3, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v1, v2, v3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    const-string v1, "bubbles"

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;IILorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v1

    iput-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->K:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/GameActivity;->a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;)V

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v7, v7, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->I:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0}, Lcom/divmob/doodlebubble/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ae:I

    const/4 v0, 0x6

    invoke-static {v6, v0}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bg_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->I:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v1, v2}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v1

    iput-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->J:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "rope_0"

    invoke-virtual {p0, v0, v4, v5}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->M:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    :goto_1
    const-string v0, "hud/hud"

    iget-object v1, p0, Lcom/divmob/doodlebubble/GameActivity;->I:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0, v1}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->N:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->I:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/GameActivity;->c(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)V

    invoke-direct {p0}, Lcom/divmob/doodlebubble/GameActivity;->w()V

    invoke-direct {p0}, Lcom/divmob/doodlebubble/GameActivity;->B()V

    return-void

    :cond_0
    iput v6, p0, Lcom/divmob/doodlebubble/GameActivity;->ae:I

    invoke-virtual {p0}, Lcom/divmob/doodlebubble/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "level"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/divmob/doodlebubble/GameActivity;->af:I

    invoke-virtual {p0}, Lcom/divmob/doodlebubble/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "world"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ag:I

    iget v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ag:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    const-string v0, "rope_2"

    invoke-virtual {p0, v0, v4, v5}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->M:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    goto :goto_1

    :pswitch_2
    const-string v0, "rope_1"

    invoke-virtual {p0, v0, v4, v5}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->M:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public h()V
    .locals 3

    new-instance v0, Lcom/divmob/maegame/g/d;

    const-string v1, "violetnumber"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/divmob/maegame/g/d;-><init>(Lcom/divmob/maegame/game/MBaseGameActivity;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->al:Lcom/divmob/maegame/g/d;

    return-void
.end method

.method public i()V
    .locals 1

    :try_start_0
    const-string v0, "fire.ogg"

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->am:Lorg/anddev/andengine/audio/sound/Sound;

    const-string v0, "pop.ogg"

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->an:Lorg/anddev/andengine/audio/sound/Sound;

    const-string v0, "collide.ogg"

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ao:Lorg/anddev/andengine/audio/sound/Sound;

    const-string v0, "lost.ogg"

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ap:Lorg/anddev/andengine/audio/sound/Sound;

    const-string v0, "win.ogg"

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aq:Lorg/anddev/andengine/audio/sound/Sound;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public j()V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/divmob/doodlebubble/GameActivity;->U:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->O:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->P:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->Q:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->R:Ljava/util/ArrayList;

    new-instance v0, Lcom/divmob/doodlebubble/b/a;

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->L:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, v2}, Lcom/divmob/doodlebubble/b/a;-><init>(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->V:Lcom/divmob/doodlebubble/b/a;

    const/4 v0, 0x6

    new-array v2, v0, [Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move v0, v1

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    new-instance v0, Lcom/divmob/doodlebubble/c/d;

    iget-object v3, p0, Lcom/divmob/doodlebubble/GameActivity;->K:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-direct {v0, v3, v2}, Lcom/divmob/doodlebubble/c/d;-><init>(Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    sput-object v0, Lcom/divmob/doodlebubble/GameActivity;->i:Lcom/divmob/doodlebubble/c/d;

    new-instance v0, Lcom/divmob/doodlebubble/a/b;

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->K:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-direct {v0, v2}, Lcom/divmob/doodlebubble/a/b;-><init>(Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->T:Lcom/divmob/doodlebubble/a/b;

    new-instance v0, Lcom/divmob/doodlebubble/a/a;

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->K:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-direct {v0, v2}, Lcom/divmob/doodlebubble/a/a;-><init>(Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->S:Lcom/divmob/doodlebubble/a/a;

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->S:Lcom/divmob/doodlebubble/a/a;

    sget v2, Lcom/divmob/maegame/a/a;->g:I

    int-to-float v2, v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c0

    sub-float/2addr v2, v3

    sget v3, Lcom/divmob/maegame/a/a;->h:I

    int-to-float v3, v3

    const/high16 v4, 0x4240

    sub-float/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/divmob/doodlebubble/a/a;->setPosition(FF)V

    new-instance v0, Lcom/divmob/doodlebubble/e/a;

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->N:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v3, p0, Lcom/divmob/doodlebubble/GameActivity;->al:Lcom/divmob/maegame/g/d;

    invoke-direct {v0, v2, v3}, Lcom/divmob/doodlebubble/e/a;-><init>(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;Lcom/divmob/maegame/g/d;)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    invoke-virtual {p0}, Lcom/divmob/doodlebubble/GameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "mode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    invoke-virtual {v2}, Lcom/divmob/doodlebubble/e/a;->g()V

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    invoke-virtual {v2, v6, v0}, Lcom/divmob/doodlebubble/e/a;->a(ZI)V

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iput v1, p0, Lcom/divmob/doodlebubble/GameActivity;->ad:I

    :goto_1
    sget v0, Lcom/divmob/common/a/a;->a:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->X:[I

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "feather_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    const/16 v5, 0x40

    invoke-virtual {p0, v3, v4, v5}, Lcom/divmob/doodlebubble/GameActivity;->a(Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    iput v6, p0, Lcom/divmob/doodlebubble/GameActivity;->ad:I

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ad:I

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    invoke-virtual {v2, v1, v0}, Lcom/divmob/doodlebubble/e/a;->a(ZI)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    iget v1, p0, Lcom/divmob/doodlebubble/GameActivity;->af:I

    iget v2, p0, Lcom/divmob/doodlebubble/GameActivity;->ag:I

    invoke-virtual {v0, v1, v2}, Lcom/divmob/doodlebubble/e/a;->a(II)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;FF)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aw:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/divmob/doodlebubble/GameActivity;->a(F)V

    invoke-direct {p0}, Lcom/divmob/doodlebubble/GameActivity;->r()V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/divmob/common/PortrailGame;->onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;FF)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ax:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aH:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/divmob/doodlebubble/GameActivity;->finish()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aG:Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/e/a;->a()I

    move-result v0

    sget-object v1, Lcom/divmob/common/a/a;->c:[I

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    invoke-virtual {v2}, Lcom/divmob/doodlebubble/e/a;->b()I

    move-result v2

    aget v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/divmob/doodlebubble/GameActivity;->finish()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->W:Lcom/divmob/doodlebubble/e/a;

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/e/a;->d()V

    invoke-direct {p0}, Lcom/divmob/doodlebubble/GameActivity;->r()V

    invoke-virtual {p0, v3}, Lcom/divmob/doodlebubble/GameActivity;->a(F)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/divmob/common/PortrailGame;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aL:Landroid/widget/Button;

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aL:Landroid/widget/Button;

    new-instance v1, Lcom/divmob/doodlebubble/h;

    invoke-direct {v1, p0}, Lcom/divmob/doodlebubble/h;-><init>(Lcom/divmob/doodlebubble/GameActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/GameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/AdView;

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aj:Lcom/google/android/gms/ads/AdView;

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aj:Lcom/google/android/gms/ads/AdView;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    invoke-virtual {p0}, Lcom/divmob/doodlebubble/GameActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/AnalyticsSampleApp;

    sget-object v1, Lcom/divmob/doodlebubble/AnalyticsSampleApp$a;->a:Lcom/divmob/doodlebubble/AnalyticsSampleApp$a;

    invoke-virtual {v0, v1}, Lcom/divmob/doodlebubble/AnalyticsSampleApp;->a(Lcom/divmob/doodlebubble/AnalyticsSampleApp$a;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    const-string v1, "Home"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setScreenName(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$AppViewBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    new-instance v0, Lcom/google/android/gms/ads/InterstitialAd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ai:Lcom/google/android/gms/ads/InterstitialAd;

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ai:Lcom/google/android/gms/ads/InterstitialAd;

    const-string v1, "ca-app-pub-8209338489199604/2505578976"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ai:Lcom/google/android/gms/ads/InterstitialAd;

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    new-instance v0, Lcom/divmob/c/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/divmob/c/c;-><init>(Landroid/app/Activity;ZZ)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ah:Lcom/divmob/c/c;

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/divmob/common/PortrailGame;->onDestroy()V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->ah:Lcom/divmob/c/c;

    invoke-virtual {v0}, Lcom/divmob/c/c;->e()V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aj:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->destroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aj:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->pause()V

    invoke-super {p0}, Lcom/divmob/common/PortrailGame;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/divmob/common/PortrailGame;->onResume()V

    iget-object v0, p0, Lcom/divmob/doodlebubble/GameActivity;->aj:Lcom/google/android/gms/ads/AdView;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdView;->resume()V

    return-void
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/divmob/doodlebubble/GameActivity;->Y:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x12c

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/divmob/doodlebubble/GameActivity;->U:Z

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/divmob/doodlebubble/GameActivity;->a(FF)V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->c:Lcom/divmob/maegame/f/a/b;

    invoke-virtual {v2}, Lcom/divmob/maegame/f/a/b;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/divmob/doodlebubble/GameActivity;->c:Lcom/divmob/maegame/f/a/b;

    invoke-virtual {v3}, Lcom/divmob/maegame/f/a/b;->getHeight()F

    move-result v3

    add-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getX()F

    move-result v1

    sget v2, Lcom/divmob/maegame/a/a;->g:I

    int-to-float v2, v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x41c0

    sget v3, Lcom/divmob/maegame/a/a;->h:I

    int-to-float v3, v3

    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float v3, v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/divmob/doodlebubble/GameActivity;->V:Lcom/divmob/doodlebubble/b/a;

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    double-to-float v1, v3

    invoke-static {v1}, Lorg/anddev/andengine/util/MathUtils;->radToDeg(F)F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v2, v1}, Lcom/divmob/doodlebubble/b/a;->setRotation(F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
