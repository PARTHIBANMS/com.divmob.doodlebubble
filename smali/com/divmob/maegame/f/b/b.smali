.class public Lcom/divmob/maegame/f/b/b;
.super Lorg/anddev/andengine/entity/primitive/Rectangle;


# instance fields
.field public a:[Lorg/anddev/andengine/entity/sprite/Sprite;

.field private b:[Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

.field private c:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private d:I

.field private e:Lcom/divmob/maegame/game/MBaseGameActivity;

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/divmob/maegame/game/MBaseGameActivity;Lorg/anddev/andengine/entity/scene/Scene;ILjava/lang/String;)V
    .locals 7

    const/16 v6, 0x200

    const/4 v1, 0x0

    const/high16 v5, 0x4120

    const v2, 0x3dcccccd

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v2, v2}, Lorg/anddev/andengine/entity/primitive/Rectangle;-><init>(FFFF)V

    iput-object p1, p0, Lcom/divmob/maegame/f/b/b;->e:Lcom/divmob/maegame/game/MBaseGameActivity;

    iput p3, p0, Lcom/divmob/maegame/f/b/b;->d:I

    new-array v0, p3, [Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    iput-object v0, p0, Lcom/divmob/maegame/f/b/b;->b:[Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/divmob/maegame/f/b/b;->b:[Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    const/16 v0, 0x302

    const/16 v2, 0x303

    invoke-virtual {p0, v0, v2}, Lcom/divmob/maegame/f/b/b;->setBlendFunction(II)V

    iget-object v0, p0, Lcom/divmob/maegame/f/b/b;->b:[Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    array-length v0, v0

    new-array v0, v0, [Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iput-object v0, p0, Lcom/divmob/maegame/f/b/b;->c:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v0, p0, Lcom/divmob/maegame/f/b/b;->c:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    array-length v0, v0

    new-array v0, v0, [Lorg/anddev/andengine/entity/sprite/Sprite;

    iput-object v0, p0, Lcom/divmob/maegame/f/b/b;->a:[Lorg/anddev/andengine/entity/sprite/Sprite;

    :goto_1
    iget-object v0, p0, Lcom/divmob/maegame/f/b/b;->b:[Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    array-length v0, v0

    if-lt v1, v0, :cond_1

    invoke-virtual {p2, p0}, Lorg/anddev/andengine/entity/scene/Scene;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/divmob/maegame/f/b/b;->b:[Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    new-instance v3, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    sget-object v4, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-direct {v3, v6, v6, v4}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;-><init>(IILorg/anddev/andengine/opengl/texture/TextureOptions;)V

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/divmob/maegame/f/b/b;->b:[Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Lcom/divmob/maegame/game/MBaseGameActivity;->a(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/divmob/maegame/f/b/b;->c:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    iget-object v2, p0, Lcom/divmob/maegame/f/b/b;->b:[Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aget-object v2, v2, v1

    invoke-virtual {p1, p4, v2}, Lcom/divmob/maegame/game/MBaseGameActivity;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/divmob/maegame/f/b/b;->a:[Lorg/anddev/andengine/entity/sprite/Sprite;

    new-instance v2, Lorg/anddev/andengine/entity/sprite/Sprite;

    iget-object v3, p0, Lcom/divmob/maegame/f/b/b;->c:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    aget-object v3, v3, v1

    invoke-direct {v2, v5, v5, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/divmob/maegame/f/b/b;->a:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v0, v0, v1

    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-virtual {v0, v2, v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->setBlendFunction(II)V

    iget-object v0, p0, Lcom/divmob/maegame/f/b/b;->a:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/divmob/maegame/f/b/b;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/divmob/maegame/f/b/b;->g:I

    return v0
.end method

.method public a(FFI)V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/divmob/maegame/f/b/b;->g:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/divmob/maegame/f/b/b;->f:I

    if-lt v0, v1, :cond_1

    :goto_1
    iget v0, p0, Lcom/divmob/maegame/f/b/b;->g:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/divmob/maegame/f/b/b;->g:I

    iget v1, p0, Lcom/divmob/maegame/f/b/b;->d:I

    mul-int/2addr v1, p3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/divmob/maegame/f/b/b;->g:I

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/divmob/maegame/f/b/b;->a:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lorg/anddev/andengine/entity/sprite/Sprite;->contains(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v0, p0, Lcom/divmob/maegame/f/b/b;->g:I

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(IIFFFF)V
    .locals 8

    const/high16 v5, 0x3f00

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/divmob/maegame/f/b/b;->e:Lcom/divmob/maegame/game/MBaseGameActivity;

    iget v1, v1, Lcom/divmob/maegame/game/MBaseGameActivity;->s:I

    int-to-float v1, v1

    sub-float/2addr v1, p5

    sub-float/2addr v1, p6

    iget-object v2, p0, Lcom/divmob/maegame/f/b/b;->e:Lcom/divmob/maegame/game/MBaseGameActivity;

    iget v2, v2, Lcom/divmob/maegame/game/MBaseGameActivity;->t:I

    int-to-float v2, v2

    sub-float/2addr v2, p3

    sub-float/2addr v2, p4

    int-to-float v3, p2

    div-float/2addr v1, v3

    int-to-float v3, p1

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/divmob/maegame/f/b/b;->a:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/anddev/andengine/entity/sprite/Sprite;->getWidth()F

    move-result v3

    sub-float v3, v1, v3

    mul-float/2addr v3, v5

    iget-object v4, p0, Lcom/divmob/maegame/f/b/b;->a:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lorg/anddev/andengine/entity/sprite/Sprite;->getHeight()F

    move-result v4

    sub-float v4, v2, v4

    mul-float/2addr v4, v5

    :goto_0
    iget-object v5, p0, Lcom/divmob/maegame/f/b/b;->a:[Lorg/anddev/andengine/entity/sprite/Sprite;

    array-length v5, v5

    if-lt v0, v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/divmob/maegame/f/b/b;->a:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v5, v5, v0

    rem-int v6, v0, p2

    int-to-float v6, v6

    mul-float/2addr v6, v1

    add-float/2addr v6, p5

    add-float/2addr v6, v3

    div-int v7, v0, p2

    int-to-float v7, v7

    mul-float/2addr v7, v2

    add-float/2addr v7, p3

    add-float/2addr v7, v4

    invoke-virtual {v5, v6, v7}, Lorg/anddev/andengine/entity/sprite/Sprite;->setPosition(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(II[Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    iget v0, p0, Lcom/divmob/maegame/f/b/b;->d:I

    mul-int/2addr v0, p1

    sub-int v0, p2, v0

    iget v2, p0, Lcom/divmob/maegame/f/b/b;->d:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/divmob/maegame/f/b/b;->f:I

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/divmob/maegame/f/b/b;->f:I

    if-lt v0, v2, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/divmob/maegame/f/b/b;->a:[Lorg/anddev/andengine/entity/sprite/Sprite;

    array-length v0, v0

    if-lt v1, v0, :cond_1

    return-void

    :cond_0
    iget-object v2, p0, Lcom/divmob/maegame/f/b/b;->b:[Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;->clearTextureAtlasSources()V

    iget-object v2, p0, Lcom/divmob/maegame/f/b/b;->e:Lcom/divmob/maegame/game/MBaseGameActivity;

    iget v3, p0, Lcom/divmob/maegame/f/b/b;->d:I

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    aget-object v3, p3, v3

    iget-object v4, p0, Lcom/divmob/maegame/f/b/b;->b:[Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    aget-object v4, v4, v0

    invoke-virtual {v2, v3, v4}, Lcom/divmob/maegame/game/MBaseGameActivity;->a(Ljava/lang/String;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/divmob/maegame/f/b/b;->f:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/divmob/maegame/f/b/b;->a:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/divmob/maegame/g/e;->d(Lorg/anddev/andengine/entity/Entity;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/divmob/maegame/f/b/b;->a:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/divmob/maegame/g/e;->e(Lorg/anddev/andengine/entity/Entity;)V

    goto :goto_2
.end method

.method public setAlpha(F)V
    .locals 2

    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setAlpha(F)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/divmob/maegame/f/b/b;->a:[Lorg/anddev/andengine/entity/sprite/Sprite;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/divmob/maegame/f/b/b;->a:[Lorg/anddev/andengine/entity/sprite/Sprite;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
