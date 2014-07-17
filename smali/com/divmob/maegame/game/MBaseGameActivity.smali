.class public abstract Lcom/divmob/maegame/game/MBaseGameActivity;
.super Lorg/anddev/andengine/ui/activity/BaseGameActivity;

# interfaces
.implements Lcom/divmob/maegame/game/a;


# instance fields
.field public A:F

.field protected B:Lorg/anddev/andengine/entity/util/FPSCounter;

.field public s:I

.field public t:I

.field protected u:Lorg/anddev/andengine/entity/scene/Scene;

.field protected v:Lcom/divmob/maegame/d/b;

.field protected w:Z

.field public x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/divmob/maegame/f/a/a;",
            ">;"
        }
    .end annotation
.end field

.field protected y:Lcom/divmob/maegame/d/a;

.field protected z:Lcom/divmob/maegame/e/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;-><init>()V

    return-void
.end method

.method private a(Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;)Lorg/anddev/andengine/engine/Engine;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lorg/anddev/andengine/engine/options/EngineOptions;

    new-instance v1, Lorg/anddev/andengine/engine/options/resolutionpolicy/FillResolutionPolicy;

    invoke-direct {v1}, Lorg/anddev/andengine/engine/options/resolutionpolicy/FillResolutionPolicy;-><init>()V

    invoke-virtual {p0}, Lcom/divmob/maegame/game/MBaseGameActivity;->a()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v2

    invoke-direct {v0, v3, p1, v1, v2}, Lorg/anddev/andengine/engine/options/EngineOptions;-><init>(ZLorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;Lorg/anddev/andengine/engine/options/resolutionpolicy/IResolutionPolicy;Lorg/anddev/andengine/engine/camera/Camera;)V

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/engine/options/EngineOptions;->setNeedsSound(Z)Lorg/anddev/andengine/engine/options/EngineOptions;

    invoke-virtual {v0, v3}, Lorg/anddev/andengine/engine/options/EngineOptions;->setNeedsMusic(Z)Lorg/anddev/andengine/engine/options/EngineOptions;

    new-instance v1, Lorg/anddev/andengine/engine/Engine;

    invoke-direct {v1, v0}, Lorg/anddev/andengine/engine/Engine;-><init>(Lorg/anddev/andengine/engine/options/EngineOptions;)V

    return-object v1
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/divmob/maegame/game/MBaseGameActivity;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/anddev/andengine/audio/sound/SoundFactory;->createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;I)Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;
    .locals 4

    const/16 v2, 0x2d0

    const/16 v1, 0x1e0

    sget-object v0, Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;->LANDSCAPE:Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;

    if-ne p1, v0, :cond_0

    sput v2, Lcom/divmob/maegame/a/a;->g:I

    sput v1, Lcom/divmob/maegame/a/a;->h:I

    iput v2, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->s:I

    iput v1, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->t:I

    :goto_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/divmob/maegame/game/MBaseGameActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p0}, Lcom/divmob/maegame/game/MBaseGameActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    const/4 v3, 0x0

    mul-float/2addr v3, v1

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    int-to-float v3, p2

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v1, v2

    iget v2, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->s:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->t:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    div-float v0, v1, v0

    iput v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->A:F

    return-object p1

    :cond_0
    sput v1, Lcom/divmob/maegame/a/a;->g:I

    sput v2, Lcom/divmob/maegame/a/a;->h:I

    iput v1, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->s:I

    iput v2, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->t:I

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;I)Lorg/anddev/andengine/opengl/font/Font;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-virtual {p0, p1, p2, v0}, Lcom/divmob/maegame/game/MBaseGameActivity;->a(Ljava/lang/String;ILorg/anddev/andengine/opengl/texture/TextureOptions;)Lorg/anddev/andengine/opengl/font/Font;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;IIILorg/anddev/andengine/opengl/texture/TextureOptions;)Lorg/anddev/andengine/opengl/font/Font;
    .locals 6

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-direct {v0, p3, p3, p5}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    int-to-float v3, p2

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lorg/anddev/andengine/opengl/font/FontFactory;->createFromAsset(Lorg/anddev/andengine/opengl/texture/ITexture;Landroid/content/Context;Ljava/lang/String;FZI)Lorg/anddev/andengine/opengl/font/Font;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/divmob/maegame/game/MBaseGameActivity;->a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;)V

    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getFontManager()Lorg/anddev/andengine/opengl/font/FontManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/font/FontManager;->loadFont(Lorg/anddev/andengine/opengl/font/Font;)V

    return-object v1
.end method

.method protected a(Ljava/lang/String;ILorg/anddev/andengine/opengl/texture/TextureOptions;)Lorg/anddev/andengine/opengl/font/Font;
    .locals 6

    const/16 v3, 0x200

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/divmob/maegame/game/MBaseGameActivity;->a(Ljava/lang/String;IIILorg/anddev/andengine/opengl/texture/TextureOptions;)Lorg/anddev/andengine/opengl/font/Font;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 1

    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->z:Lcom/divmob/maegame/e/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/divmob/maegame/e/e;->a(Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move-object v0, p2

    move-object v1, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/divmob/maegame/e/d;->a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;III)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p2, p0, v0, v1}, Lcom/divmob/maegame/e/d;->a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;I)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/String;IIII)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 6

    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->z:Lcom/divmob/maegame/e/e;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/divmob/maegame/e/e;->a(Ljava/lang/String;IIII)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;IILorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 8

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x1

    move-object v0, p4

    move-object v1, p0

    move v4, v3

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v7}, Lcom/divmob/maegame/e/d;->a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;IIIII)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;IILorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    move-object v0, p4

    move-object v1, p0

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/divmob/maegame/e/d;->a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;III)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method protected a(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/divmob/maegame/game/MBaseGameActivity;->b(F)V

    return-void
.end method

.method protected a(FLorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/divmob/maegame/game/MBaseGameActivity;->b(F)V

    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/scene/Scene;->getChildScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    invoke-interface {p2}, Lorg/anddev/andengine/entity/modifier/IEntityModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    return-void
.end method

.method protected a(Lorg/anddev/andengine/entity/scene/Scene;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/divmob/maegame/game/MBaseGameActivity;->a(Lorg/anddev/andengine/entity/scene/Scene;ZZ)V

    return-void
.end method

.method protected a(Lorg/anddev/andengine/entity/scene/Scene;ZLorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/divmob/maegame/game/MBaseGameActivity;->a(Lorg/anddev/andengine/entity/scene/Scene;ZZLorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    return-void
.end method

.method protected a(Lorg/anddev/andengine/entity/scene/Scene;ZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/divmob/maegame/game/MBaseGameActivity;->b(Lorg/anddev/andengine/entity/scene/Scene;ZZ)V

    return-void
.end method

.method protected a(Lorg/anddev/andengine/entity/scene/Scene;ZZLorg/anddev/andengine/entity/modifier/IEntityModifier;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/divmob/maegame/game/MBaseGameActivity;->b(Lorg/anddev/andengine/entity/scene/Scene;ZZ)V

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/scene/Scene;->clearEntityModifiers()V

    invoke-virtual {p1, p4}, Lorg/anddev/andengine/entity/scene/Scene;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    return-void
.end method

.method protected a(Lorg/anddev/andengine/entity/sprite/Sprite;)V
    .locals 2

    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    new-instance v1, Lorg/anddev/andengine/entity/scene/background/SpriteBackground;

    invoke-direct {v1, p1}, Lorg/anddev/andengine/entity/scene/background/SpriteBackground;-><init>(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->setBackground(Lorg/anddev/andengine/entity/scene/background/IBackground;)V

    return-void
.end method

.method public a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;)V
    .locals 1

    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/TextureManager;->loadTexture(Lorg/anddev/andengine/opengl/texture/ITexture;)Z

    return-void
.end method

.method protected a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;->build(Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected a(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 3

    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    new-instance v1, Lorg/anddev/andengine/entity/scene/background/SpriteBackground;

    invoke-virtual {p0, p1}, Lcom/divmob/maegame/game/MBaseGameActivity;->b(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)Lorg/anddev/andengine/entity/sprite/Sprite;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/anddev/andengine/entity/scene/background/SpriteBackground;-><init>(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->setBackground(Lorg/anddev/andengine/entity/scene/background/IBackground;)V

    return-void
.end method

.method protected b(Ljava/lang/String;)Lorg/anddev/andengine/audio/music/Music;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/divmob/maegame/game/MBaseGameActivity;->getMusicManager()Lorg/anddev/andengine/audio/music/MusicManager;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/anddev/andengine/audio/music/MusicFactory;->createMusicFromAsset(Lorg/anddev/andengine/audio/music/MusicManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/music/Music;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)Lorg/anddev/andengine/entity/sprite/Sprite;
    .locals 7

    const/4 v2, 0x0

    new-instance v0, Lcom/divmob/maegame/game/b;

    iget v1, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->s:I

    int-to-float v4, v1

    iget v1, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->t:I

    int-to-float v5, v1

    move-object v1, p0

    move v3, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/divmob/maegame/game/b;-><init>(Lcom/divmob/maegame/game/MBaseGameActivity;FFFFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    return-object v0
.end method

.method protected b(F)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->w:Z

    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/scene/Scene;->getChildScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    new-instance v1, Lorg/anddev/andengine/entity/modifier/DelayModifier;

    new-instance v2, Lcom/divmob/maegame/game/c;

    invoke-direct {v2, p0}, Lcom/divmob/maegame/game/c;-><init>(Lcom/divmob/maegame/game/MBaseGameActivity;)V

    invoke-direct {v1, p1, v2}, Lorg/anddev/andengine/entity/modifier/DelayModifier;-><init>(FLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    return-void
.end method

.method protected b(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->z:Lcom/divmob/maegame/e/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/divmob/maegame/e/e;->a(Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/divmob/maegame/game/MBaseGameActivity;->a(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    return-void
.end method

.method protected b(Lorg/anddev/andengine/entity/scene/Scene;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/divmob/maegame/game/MBaseGameActivity;->b(Lorg/anddev/andengine/entity/scene/Scene;ZZ)V

    return-void
.end method

.method protected b(Lorg/anddev/andengine/entity/scene/Scene;ZZ)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-boolean p2, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->w:Z

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, p1, v1, v1, v2}, Lorg/anddev/andengine/entity/scene/Scene;->setChildScene(Lorg/anddev/andengine/entity/scene/Scene;ZZZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, p1, v1, v2, v2}, Lorg/anddev/andengine/entity/scene/Scene;->setChildScene(Lorg/anddev/andengine/entity/scene/Scene;ZZZ)V

    goto :goto_0
.end method

.method public b(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)V
    .locals 1

    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/TextureManager;->loadTexture(Lorg/anddev/andengine/opengl/texture/ITexture;)Z

    return-void
.end method

.method protected c(Ljava/lang/String;II)Lorg/anddev/andengine/entity/sprite/Sprite;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/divmob/maegame/game/MBaseGameActivity;->a(Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    new-instance v1, Lorg/anddev/andengine/entity/sprite/Sprite;

    invoke-direct {v1, v2, v2, v0}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    return-object v1
.end method

.method protected c(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/divmob/maegame/game/MBaseGameActivity;->a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BuildableBitmapTextureAtlas;)V

    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/TextureManager;->loadTexture(Lorg/anddev/andengine/opengl/texture/ITexture;)Z

    return-void
.end method

.method public l()Lcom/divmob/maegame/e/e;
    .locals 1

    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->z:Lcom/divmob/maegame/e/e;

    return-object v0
.end method

.method protected m()V
    .locals 2

    iget-object v1, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->y:Lcom/divmob/maegame/d/a;

    sget-boolean v0, Lcom/divmob/maegame/d/a;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/divmob/maegame/d/a;->a(Z)V

    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->v:Lcom/divmob/maegame/d/b;

    sget-boolean v1, Lcom/divmob/maegame/d/a;->a:Z

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/d/b;->a(Z)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected n()V
    .locals 2

    iget-object v1, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->y:Lcom/divmob/maegame/d/a;

    sget-boolean v0, Lcom/divmob/maegame/d/a;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/divmob/maegame/d/a;->b(Z)V

    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->v:Lcom/divmob/maegame/d/b;

    sget-boolean v1, Lcom/divmob/maegame/d/a;->b:Z

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/d/b;->b(Z)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onLoadEngine()Lorg/anddev/andengine/engine/Engine;
    .locals 1

    new-instance v0, Lcom/divmob/maegame/e/e;

    invoke-direct {v0, p0}, Lcom/divmob/maegame/e/e;-><init>(Lorg/anddev/andengine/ui/activity/BaseGameActivity;)V

    iput-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->z:Lcom/divmob/maegame/e/e;

    invoke-virtual {p0}, Lcom/divmob/maegame/game/MBaseGameActivity;->f()Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/divmob/maegame/game/MBaseGameActivity;->a(Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;)Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    return-object v0
.end method

.method public onLoadResources()V
    .locals 3

    const-string v0, "gfx/"

    invoke-static {v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->setAssetBasePath(Ljava/lang/String;)V

    const-string v0, "fonts/"

    invoke-static {v0}, Lorg/anddev/andengine/opengl/font/FontFactory;->setAssetBasePath(Ljava/lang/String;)V

    const-string v0, "mfx/"

    invoke-static {v0}, Lorg/anddev/andengine/audio/sound/SoundFactory;->setAssetBasePath(Ljava/lang/String;)V

    const-string v0, "mfx/"

    invoke-static {v0}, Lorg/anddev/andengine/audio/music/MusicFactory;->setAssetBasePath(Ljava/lang/String;)V

    new-instance v0, Lcom/divmob/maegame/d/b;

    invoke-direct {v0, p0}, Lcom/divmob/maegame/d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->v:Lcom/divmob/maegame/d/b;

    new-instance v0, Lcom/divmob/maegame/d/a;

    invoke-direct {v0}, Lcom/divmob/maegame/d/a;-><init>()V

    iput-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->y:Lcom/divmob/maegame/d/a;

    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->y:Lcom/divmob/maegame/d/a;

    iget-object v1, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->v:Lcom/divmob/maegame/d/b;

    invoke-virtual {v1}, Lcom/divmob/maegame/d/b;->a()Z

    move-result v1

    iget-object v2, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->v:Lcom/divmob/maegame/d/b;

    invoke-virtual {v2}, Lcom/divmob/maegame/d/b;->b()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/divmob/maegame/d/a;->a(ZZ)V

    invoke-virtual {p0}, Lcom/divmob/maegame/game/MBaseGameActivity;->g()V

    invoke-virtual {p0}, Lcom/divmob/maegame/game/MBaseGameActivity;->h()V

    invoke-virtual {p0}, Lcom/divmob/maegame/game/MBaseGameActivity;->i()V

    return-void
.end method

.method public onLoadScene()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 2

    new-instance v0, Lorg/anddev/andengine/entity/util/FPSCounter;

    invoke-direct {v0}, Lorg/anddev/andengine/entity/util/FPSCounter;-><init>()V

    iput-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->B:Lorg/anddev/andengine/entity/util/FPSCounter;

    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    iget-object v1, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->B:Lorg/anddev/andengine/entity/util/FPSCounter;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/engine/Engine;->registerUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)V

    new-instance v0, Lorg/anddev/andengine/entity/scene/Scene;

    invoke-direct {v0}, Lorg/anddev/andengine/entity/scene/Scene;-><init>()V

    iput-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->w:Z

    invoke-virtual {p0}, Lcom/divmob/maegame/game/MBaseGameActivity;->j()V

    invoke-virtual {p0}, Lcom/divmob/maegame/game/MBaseGameActivity;->b()V

    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->u:Lorg/anddev/andengine/entity/scene/Scene;

    return-object v0
.end method

.method public onPauseGame()V
    .locals 3

    invoke-super {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->onPauseGame()V

    :try_start_0
    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->v:Lcom/divmob/maegame/d/b;

    sget-boolean v1, Lcom/divmob/maegame/d/a;->a:Z

    sget-boolean v2, Lcom/divmob/maegame/d/a;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/divmob/maegame/d/b;->a(ZZ)Z

    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->y:Lcom/divmob/maegame/d/a;

    invoke-virtual {v0}, Lcom/divmob/maegame/d/a;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onResumeGame()V
    .locals 2

    invoke-super {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->onResumeGame()V

    :try_start_0
    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->v:Lcom/divmob/maegame/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->y:Lcom/divmob/maegame/d/a;

    iget-object v1, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->v:Lcom/divmob/maegame/d/b;

    invoke-virtual {v1}, Lcom/divmob/maegame/d/b;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/d/a;->b(Z)V

    :cond_0
    iget-object v0, p0, Lcom/divmob/maegame/game/MBaseGameActivity;->y:Lcom/divmob/maegame/d/a;

    invoke-virtual {v0}, Lcom/divmob/maegame/d/a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
