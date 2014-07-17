.class public Lcom/divmob/maegame/g/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field private static final c:I = 0x5

.field private static final d:I = 0x3


# instance fields
.field private e:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private f:[I

.field private g:F

.field private h:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

.field private i:I


# direct methods
.method public constructor <init>(Lcom/divmob/maegame/game/MBaseGameActivity;Ljava/lang/String;I)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Lcom/divmob/maegame/game/MBaseGameActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gfx/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v3, "UTF-8"

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x4

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/divmob/maegame/g/d;->f:[I

    :goto_0
    iget-object v2, p0, Lcom/divmob/maegame/g/d;->f:[I

    array-length v2, v2

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v4, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v3, v0, v2, v4}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    iput-object v3, p0, Lcom/divmob/maegame/g/d;->e:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/divmob/maegame/g/d;->e:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/divmob/maegame/game/MBaseGameActivity;->a(Ljava/lang/String;IILorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/maegame/g/d;->h:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    iget-object v0, p0, Lcom/divmob/maegame/g/d;->e:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    invoke-virtual {p1, v0}, Lcom/divmob/maegame/game/MBaseGameActivity;->a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/divmob/maegame/g/d;->g:F

    iput p3, p0, Lcom/divmob/maegame/g/d;->i:I

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/divmob/maegame/g/d;->f:[I

    add-int/lit8 v3, v0, 0x4

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private b(Lorg/anddev/andengine/entity/sprite/AnimatedSprite;I)V
    .locals 3

    const/16 v2, 0x1a

    const/16 v0, 0x61

    if-lt p2, v0, :cond_0

    add-int/lit8 p2, p2, -0x20

    :cond_0
    const/16 v0, 0x21

    if-ne p2, v0, :cond_1

    invoke-virtual {p1, v2}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    iget v0, p0, Lcom/divmob/maegame/g/d;->g:F

    iget-object v1, p0, Lcom/divmob/maegame/g/d;->f:[I

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/divmob/maegame/g/d;->g:F

    :goto_0
    return-void

    :cond_1
    add-int/lit8 v0, p2, -0x41

    invoke-virtual {p1, v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    iget v0, p0, Lcom/divmob/maegame/g/d;->g:F

    iget-object v1, p0, Lcom/divmob/maegame/g/d;->f:[I

    add-int/lit8 v2, p2, -0x41

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/divmob/maegame/g/d;->g:F

    goto :goto_0
.end method

.method private c(Lorg/anddev/andengine/entity/sprite/AnimatedSprite;I)V
    .locals 3

    add-int/lit8 v0, p2, -0x21

    invoke-virtual {p1, v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    :try_start_0
    iget v0, p0, Lcom/divmob/maegame/g/d;->g:F

    iget-object v1, p0, Lcom/divmob/maegame/g/d;->f:[I

    add-int/lit8 v2, p2, -0x21

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/divmob/maegame/g/d;->g:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget v0, p0, Lcom/divmob/maegame/g/d;->g:F

    iget-object v1, p0, Lcom/divmob/maegame/g/d;->f:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/divmob/maegame/g/d;->g:F

    goto :goto_0
.end method


# virtual methods
.method public a()Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    iget-object v1, p0, Lcom/divmob/maegame/g/d;->h:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->deepCopy()Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v1

    invoke-direct {v0, v2, v2, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    return-object v0
.end method

.method public a(Lorg/anddev/andengine/entity/sprite/AnimatedSprite;I)V
    .locals 2

    const/16 v0, 0x20

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/divmob/maegame/g/d;->g:F

    const/high16 v1, 0x40a0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/divmob/maegame/g/d;->g:F

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/divmob/maegame/g/d;->g:F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setPosition(FF)V

    iget v0, p0, Lcom/divmob/maegame/g/d;->i:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/divmob/maegame/g/d;->c(Lorg/anddev/andengine/entity/sprite/AnimatedSprite;I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/divmob/maegame/g/d;->b(Lorg/anddev/andengine/entity/sprite/AnimatedSprite;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/divmob/maegame/g/d;->g:F

    return-void
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/divmob/maegame/g/d;->g:F

    return v0
.end method
