.class public Lcom/divmob/doodlebubble/i;
.super Lorg/anddev/andengine/entity/sprite/AnimatedSprite;


# instance fields
.field public a:Z

.field private b:Lcom/divmob/maegame/g/c;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;Lcom/divmob/maegame/g/d;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->deepCopy()Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    invoke-direct {p0, v2, v2, v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    new-instance v0, Lcom/divmob/maegame/g/c;

    const-string v1, ""

    invoke-direct {v0, v2, v2, v1, p2}, Lcom/divmob/maegame/g/c;-><init>(FFLjava/lang/String;Lcom/divmob/maegame/g/d;)V

    iput-object v0, p0, Lcom/divmob/doodlebubble/i;->b:Lcom/divmob/maegame/g/c;

    iget-object v0, p0, Lcom/divmob/doodlebubble/i;->b:Lcom/divmob/maegame/g/c;

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/i;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/divmob/doodlebubble/i;->a:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/i;->setCurrentTileIndex(I)V

    return-void
.end method

.method public a(I)V
    .locals 3

    iget-object v0, p0, Lcom/divmob/doodlebubble/i;->b:Lcom/divmob/maegame/g/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/divmob/maegame/g/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/i;->b:Lcom/divmob/maegame/g/c;

    iget v1, p0, Lcom/divmob/doodlebubble/i;->mWidth:F

    iget-object v2, p0, Lcom/divmob/doodlebubble/i;->b:Lcom/divmob/maegame/g/c;

    invoke-virtual {v2}, Lcom/divmob/maegame/g/c;->getWidth()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    const/high16 v2, 0x4254

    invoke-virtual {v0, v1, v2}, Lcom/divmob/maegame/g/c;->setPosition(FF)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/divmob/doodlebubble/i;->a:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/i;->setCurrentTileIndex(I)V

    return-void
.end method
