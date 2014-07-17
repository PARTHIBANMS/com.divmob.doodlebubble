.class public Lcom/divmob/doodlebubble/a/b;
.super Lcom/divmob/doodlebubble/a/a;


# static fields
.field public static final f:F = 18.0f


# instance fields
.field private g:F

.field private h:F

.field private i:Z


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/divmob/doodlebubble/a/a;-><init>(Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/divmob/doodlebubble/a/b;->i:Z

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/divmob/doodlebubble/a/b;->i:Z

    invoke-virtual {p0, p1, p2}, Lcom/divmob/doodlebubble/a/b;->b(FF)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/divmob/doodlebubble/a/a;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    :goto_1
    return v2

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/a/a;

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/a/b;->a(Lorg/anddev/andengine/entity/sprite/AnimatedSprite;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(FF)V
    .locals 0

    iput p1, p0, Lcom/divmob/doodlebubble/a/b;->g:F

    iput p2, p0, Lcom/divmob/doodlebubble/a/b;->h:F

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/divmob/doodlebubble/a/b;->i:Z

    return v0
.end method

.method public h()V
    .locals 11

    const-wide/high16 v9, 0x4085

    const-wide/high16 v7, 0x407b

    const-wide/16 v5, 0x0

    const/high16 v4, -0x4080

    iget v0, p0, Lcom/divmob/doodlebubble/a/b;->mX:F

    iget v1, p0, Lcom/divmob/doodlebubble/a/b;->g:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/divmob/doodlebubble/a/b;->mX:F

    iget v0, p0, Lcom/divmob/doodlebubble/a/b;->mX:F

    float-to-double v0, v0

    cmpg-double v0, v0, v5

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/divmob/doodlebubble/a/b;->mX:F

    float-to-double v0, v0

    iget v2, p0, Lcom/divmob/doodlebubble/a/b;->mX:F

    float-to-double v2, v2

    sub-double v2, v5, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/divmob/doodlebubble/a/b;->mX:F

    iget v0, p0, Lcom/divmob/doodlebubble/a/b;->g:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/divmob/doodlebubble/a/b;->g:F

    :cond_0
    iget v0, p0, Lcom/divmob/doodlebubble/a/b;->mX:F

    float-to-double v0, v0

    cmpl-double v0, v0, v7

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/divmob/doodlebubble/a/b;->mX:F

    float-to-double v0, v0

    iget v2, p0, Lcom/divmob/doodlebubble/a/b;->mX:F

    float-to-double v2, v2

    sub-double v2, v7, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/divmob/doodlebubble/a/b;->mX:F

    iget v0, p0, Lcom/divmob/doodlebubble/a/b;->g:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/divmob/doodlebubble/a/b;->g:F

    :cond_1
    iget v0, p0, Lcom/divmob/doodlebubble/a/b;->mY:F

    iget v1, p0, Lcom/divmob/doodlebubble/a/b;->h:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/divmob/doodlebubble/a/b;->mY:F

    iget v0, p0, Lcom/divmob/doodlebubble/a/b;->mY:F

    float-to-double v0, v0

    cmpl-double v0, v0, v9

    if-lez v0, :cond_2

    iget v0, p0, Lcom/divmob/doodlebubble/a/b;->mY:F

    float-to-double v0, v0

    iget v2, p0, Lcom/divmob/doodlebubble/a/b;->mY:F

    float-to-double v2, v2

    sub-double v2, v9, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/divmob/doodlebubble/a/b;->mY:F

    iget v0, p0, Lcom/divmob/doodlebubble/a/b;->h:F

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/divmob/doodlebubble/a/b;->h:F

    :cond_2
    iget v0, p0, Lcom/divmob/doodlebubble/a/b;->mY:F

    sget v1, Lcom/divmob/doodlebubble/GameActivity;->h:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    sget v0, Lcom/divmob/doodlebubble/GameActivity;->h:F

    iput v0, p0, Lcom/divmob/doodlebubble/a/b;->mY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/divmob/doodlebubble/a/b;->h:F

    iput v0, p0, Lcom/divmob/doodlebubble/a/b;->g:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/divmob/doodlebubble/a/b;->i:Z

    :cond_3
    return-void
.end method
