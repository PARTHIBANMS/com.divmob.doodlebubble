.class public Lcom/divmob/splashscreen/Splash;
.super Lorg/anddev/andengine/ui/activity/BaseGameActivity;


# static fields
.field private static final a:I = 0x1e0

.field private static final b:I = 0x2d0


# instance fields
.field private c:Lorg/anddev/andengine/engine/camera/Camera;

.field private d:Lorg/anddev/andengine/entity/scene/Scene;

.field private e:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private f:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

.field private h:J

.field private i:[F

.field private j:[F

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lcom/divmob/splashscreen/Splash;->k:I

    return-void
.end method

.method static synthetic a(Lcom/divmob/splashscreen/Splash;)I
    .locals 1

    iget v0, p0, Lcom/divmob/splashscreen/Splash;->l:I

    return v0
.end method

.method private a(Ljava/lang/String;)Lorg/anddev/andengine/entity/primitive/Rectangle;
    .locals 6

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x3

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    return-object v1
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/divmob/splashscreen/Splash;->i:[F

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/divmob/splashscreen/Splash;->i:[F

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/divmob/splashscreen/Splash;->i:[F

    iget-object v2, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->getX()F

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(I)V
    .locals 7

    const/16 v6, 0x12

    const/4 v1, 0x0

    const/16 v0, 0x53

    if-gez p1, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    aget-object v0, v0, v1

    int-to-float v2, p1

    iget v3, p0, Lcom/divmob/splashscreen/Splash;->k:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    aget v1, v4, v1

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    add-int v2, p1, v6

    int-to-float v3, v2

    iget v4, p0, Lcom/divmob/splashscreen/Splash;->k:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    aget v1, v5, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    int-to-float v3, v2

    iget v4, p0, Lcom/divmob/splashscreen/Splash;->k:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    aget v1, v5, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    add-int/2addr v2, v6

    int-to-float v3, v2

    iget v4, p0, Lcom/divmob/splashscreen/Splash;->k:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    aget v1, v5, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    add-int/lit8 v2, v2, 0x17

    int-to-float v3, v2

    iget v4, p0, Lcom/divmob/splashscreen/Splash;->k:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    aget v1, v5, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    int-to-float v3, v2

    iget v4, p0, Lcom/divmob/splashscreen/Splash;->k:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    aget v1, v5, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    add-int/lit8 v2, v2, 0x17

    int-to-float v3, v2

    iget v4, p0, Lcom/divmob/splashscreen/Splash;->k:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    aget v1, v5, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    add-int/2addr v2, v6

    int-to-float v3, v2

    iget v4, p0, Lcom/divmob/splashscreen/Splash;->k:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    aget v1, v5, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    add-int/2addr v2, v6

    int-to-float v3, v2

    iget v4, p0, Lcom/divmob/splashscreen/Splash;->k:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    aget v1, v5, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    add-int/lit8 v2, v2, 0x17

    int-to-float v3, v2

    iget v4, p0, Lcom/divmob/splashscreen/Splash;->k:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    aget v1, v5, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    add-int/2addr v2, v6

    int-to-float v3, v2

    iget v4, p0, Lcom/divmob/splashscreen/Splash;->k:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    aget v1, v5, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    add-int/2addr v2, v6

    int-to-float v3, v2

    iget v4, p0, Lcom/divmob/splashscreen/Splash;->k:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    aget v1, v5, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    add-int/lit8 v2, v2, 0x17

    int-to-float v3, v2

    iget v4, p0, Lcom/divmob/splashscreen/Splash;->k:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    aget v1, v5, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    add-int/2addr v2, v6

    int-to-float v3, v2

    iget v4, p0, Lcom/divmob/splashscreen/Splash;->k:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    aget v1, v5, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/16 v1, 0xe

    aget-object v0, v0, v1

    int-to-float v3, v2

    iget v4, p0, Lcom/divmob/splashscreen/Splash;->k:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    aget v1, v5, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/16 v1, 0xf

    aget-object v0, v0, v1

    add-int/2addr v2, v6

    int-to-float v3, v2

    iget v4, p0, Lcom/divmob/splashscreen/Splash;->k:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    aget v1, v5, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/16 v1, 0x10

    aget-object v0, v0, v1

    add-int/lit8 v2, v2, 0x17

    int-to-float v3, v2

    iget v4, p0, Lcom/divmob/splashscreen/Splash;->k:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    aget v1, v5, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    add-int/2addr v2, v6

    int-to-float v3, v2

    iget v4, p0, Lcom/divmob/splashscreen/Splash;->k:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    aget v1, v5, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    aget-object v0, v0, v6

    int-to-float v1, v2

    iget v3, p0, Lcom/divmob/splashscreen/Splash;->k:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    aget v4, v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    int-to-float v3, v2

    iget v4, p0, Lcom/divmob/splashscreen/Splash;->k:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    aget v1, v5, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    add-int/2addr v2, v6

    int-to-float v3, v2

    iget v4, p0, Lcom/divmob/splashscreen/Splash;->k:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    aget v1, v5, v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    const/16 v1, 0x15

    aget-object v0, v0, v1

    int-to-float v2, v2

    iget v3, p0, Lcom/divmob/splashscreen/Splash;->k:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    aget v1, v4, v1

    add-float/2addr v1, v3

    invoke-virtual {v0, v2, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    return-void

    :cond_0
    move p1, v0

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/divmob/splashscreen/Splash;I)V
    .locals 0

    iput p1, p0, Lcom/divmob/splashscreen/Splash;->l:I

    return-void
.end method

.method static synthetic a(Lcom/divmob/splashscreen/Splash;J)V
    .locals 0

    iput-wide p1, p0, Lcom/divmob/splashscreen/Splash;->h:J

    return-void
.end method

.method static synthetic b(Lcom/divmob/splashscreen/Splash;)J
    .locals 2

    iget-wide v0, p0, Lcom/divmob/splashscreen/Splash;->h:J

    return-wide v0
.end method

.method private b()V
    .locals 12

    const/4 v1, 0x0

    const/16 v0, -0x3e8

    invoke-direct {p0, v0}, Lcom/divmob/splashscreen/Splash;->a(I)V

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/anddev/andengine/entity/primitive/Rectangle;->clearEntityModifiers()V

    iget-object v2, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    aget-object v2, v2, v0

    new-instance v3, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;

    new-instance v4, Lcom/divmob/splashscreen/b;

    invoke-direct {v4, p0}, Lcom/divmob/splashscreen/b;-><init>(Lcom/divmob/splashscreen/Splash;)V

    const/4 v5, 0x2

    new-array v5, v5, [Lorg/anddev/andengine/entity/modifier/IEntityModifier;

    new-instance v6, Lorg/anddev/andengine/entity/modifier/DelayModifier;

    int-to-float v7, v0

    const v8, 0x3e4ccccd

    mul-float/2addr v7, v8

    invoke-direct {v6, v7}, Lorg/anddev/andengine/entity/modifier/DelayModifier;-><init>(F)V

    aput-object v6, v5, v1

    const/4 v6, 0x1

    new-instance v7, Lorg/anddev/andengine/entity/modifier/MoveXModifier;

    const/high16 v8, 0x3f40

    const/high16 v9, 0x43f5

    iget-object v10, p0, Lcom/divmob/splashscreen/Splash;->i:[F

    aget v10, v10, v0

    invoke-static {}, Lorg/anddev/andengine/util/modifier/ease/EaseQuintInOut;->getInstance()Lorg/anddev/andengine/util/modifier/ease/EaseQuintInOut;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/anddev/andengine/entity/modifier/MoveXModifier;-><init>(FFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    aput-object v7, v5, v6

    invoke-direct {v3, v4, v5}, Lorg/anddev/andengine/entity/modifier/SequenceEntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;[Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/primitive/Rectangle;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onLoadComplete()V
    .locals 0

    invoke-direct {p0}, Lcom/divmob/splashscreen/Splash;->b()V

    return-void
.end method

.method public onLoadEngine()Lorg/anddev/andengine/engine/Engine;
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Lorg/anddev/andengine/engine/camera/Camera;

    const/high16 v1, 0x43f0

    const/high16 v2, 0x4434

    invoke-direct {v0, v3, v3, v1, v2}, Lorg/anddev/andengine/engine/camera/Camera;-><init>(FFFF)V

    iput-object v0, p0, Lcom/divmob/splashscreen/Splash;->c:Lorg/anddev/andengine/engine/camera/Camera;

    new-instance v0, Lorg/anddev/andengine/engine/Engine;

    new-instance v1, Lorg/anddev/andengine/engine/options/EngineOptions;

    const/4 v2, 0x1

    sget-object v3, Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;->PORTRAIT:Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;

    new-instance v4, Lorg/anddev/andengine/engine/options/resolutionpolicy/FillResolutionPolicy;

    invoke-direct {v4}, Lorg/anddev/andengine/engine/options/resolutionpolicy/FillResolutionPolicy;-><init>()V

    iget-object v5, p0, Lcom/divmob/splashscreen/Splash;->c:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/anddev/andengine/engine/options/EngineOptions;-><init>(ZLorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;Lorg/anddev/andengine/engine/options/resolutionpolicy/IResolutionPolicy;Lorg/anddev/andengine/engine/camera/Camera;)V

    invoke-direct {v0, v1}, Lorg/anddev/andengine/engine/Engine;-><init>(Lorg/anddev/andengine/engine/options/EngineOptions;)V

    return-object v0
.end method

.method public onLoadResources()V
    .locals 4

    const/16 v3, 0x10

    const/4 v2, 0x0

    const-string v0, "gfx/splash/"

    invoke-static {v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->setAssetBasePath(Ljava/lang/String;)V

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v0, v3, v3, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v0, p0, Lcom/divmob/splashscreen/Splash;->e:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->e:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const-string v1, "triangle.png"

    invoke-static {v0, p0, v1, v2, v2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromAsset(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Landroid/content/Context;Ljava/lang/String;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/splashscreen/Splash;->f:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;

    move-result-object v0

    iget-object v1, p0, Lcom/divmob/splashscreen/Splash;->e:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/texture/TextureManager;->loadTexture(Lorg/anddev/andengine/opengl/texture/ITexture;)Z

    return-void
.end method

.method public onLoadScene()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/high16 v3, 0x3f80

    const/16 v5, 0xa

    new-instance v1, Lorg/anddev/andengine/entity/scene/Scene;

    invoke-direct {v1}, Lorg/anddev/andengine/entity/scene/Scene;-><init>()V

    iput-object v1, p0, Lcom/divmob/splashscreen/Splash;->d:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v1, p0, Lcom/divmob/splashscreen/Splash;->d:Lorg/anddev/andengine/entity/scene/Scene;

    new-instance v2, Lorg/anddev/andengine/entity/scene/background/ColorBackground;

    invoke-direct {v2, v3, v3, v3}, Lorg/anddev/andengine/entity/scene/background/ColorBackground;-><init>(FFF)V

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/entity/scene/Scene;->setBackground(Lorg/anddev/andengine/entity/scene/background/IBackground;)V

    iput v0, p0, Lcom/divmob/splashscreen/Splash;->l:I

    invoke-virtual {p0}, Lcom/divmob/splashscreen/Splash;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [Lorg/anddev/andengine/entity/primitive/Rectangle;

    iput-object v2, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    array-length v2, v1

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    :goto_0
    iget-object v2, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/divmob/splashscreen/Splash;->a(I)V

    invoke-direct {p0}, Lcom/divmob/splashscreen/Splash;->a()V

    const/16 v0, -0x3e8

    invoke-direct {p0, v0}, Lcom/divmob/splashscreen/Splash;->a(I)V

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->d:Lorg/anddev/andengine/entity/scene/Scene;

    new-instance v1, Lcom/divmob/splashscreen/a;

    invoke-direct {v1, p0}, Lcom/divmob/splashscreen/a;-><init>(Lcom/divmob/splashscreen/Splash;)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/Scene;->registerUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)V

    iget-object v0, p0, Lcom/divmob/splashscreen/Splash;->d:Lorg/anddev/andengine/entity/scene/Scene;

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lcom/divmob/splashscreen/Splash;->a(Ljava/lang/String;)Lorg/anddev/andengine/entity/primitive/Rectangle;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/divmob/splashscreen/Splash;->j:[F

    iget-object v3, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/primitive/Rectangle;->getY()F

    move-result v3

    aput v3, v2, v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    aget-object v2, v2, v0

    const v3, -0x1df5ea

    invoke-static {v2, v3}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/Entity;I)V

    :cond_1
    :goto_1
    if-ne v0, v5, :cond_2

    iget-object v2, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    aget-object v2, v2, v0

    new-instance v3, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v4, p0, Lcom/divmob/splashscreen/Splash;->f:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v3, v6, v6, v4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/primitive/Rectangle;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    :cond_2
    iget-object v2, p0, Lcom/divmob/splashscreen/Splash;->d:Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v3, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x6

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    aget-object v2, v2, v0

    const v3, -0x99ff67

    invoke-static {v2, v3}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/Entity;I)V

    goto :goto_1

    :cond_4
    const/16 v2, 0x9

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    aget-object v2, v2, v0

    const v3, -0xff7a39

    invoke-static {v2, v3}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/Entity;I)V

    goto :goto_1

    :cond_5
    const/16 v2, 0xc

    if-ge v0, v2, :cond_6

    if-eq v0, v5, :cond_6

    iget-object v2, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    aget-object v2, v2, v0

    const v3, -0x9154dd

    invoke-static {v2, v3}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/Entity;I)V

    goto :goto_1

    :cond_6
    const/16 v2, 0x10

    if-ge v0, v2, :cond_7

    if-eq v0, v5, :cond_7

    iget-object v2, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    aget-object v2, v2, v0

    const v3, -0x38deb

    invoke-static {v2, v3}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/Entity;I)V

    goto :goto_1

    :cond_7
    if-eq v0, v5, :cond_1

    iget-object v2, p0, Lcom/divmob/splashscreen/Splash;->g:[Lorg/anddev/andengine/entity/primitive/Rectangle;

    aget-object v2, v2, v0

    const v3, -0x1feea4

    invoke-static {v2, v3}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/Entity;I)V

    goto :goto_1
.end method

.method protected onSetContentView()V
    .locals 4

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v2, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

    invoke-direct {v2, p0}, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/divmob/splashscreen/Splash;->mRenderSurfaceView:Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

    iget-object v2, p0, Lcom/divmob/splashscreen/Splash;->mRenderSurfaceView:Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;->setEGLConfigChooser(Z)V

    iget-object v2, p0, Lcom/divmob/splashscreen/Splash;->mRenderSurfaceView:Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

    iget-object v3, p0, Lcom/divmob/splashscreen/Splash;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v2, v3}, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;->setRenderer(Lorg/anddev/andengine/engine/Engine;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-super {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->createSurfaceViewLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/divmob/splashscreen/Splash;->mRenderSurfaceView:Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0, v1}, Lcom/divmob/splashscreen/Splash;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
