.class public Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;
.super Lorg/anddev/andengine/entity/sprite/batch/DynamicSpriteBatch;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/ITexture;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/anddev/andengine/entity/sprite/batch/DynamicSpriteBatch;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;->setChildrenVisible(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/ITexture;ILorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/sprite/batch/DynamicSpriteBatch;-><init>(Lorg/anddev/andengine/opengl/texture/ITexture;ILorg/anddev/andengine/opengl/vertex/SpriteBatchVertexBuffer;Lorg/anddev/andengine/opengl/texture/region/buffer/SpriteBatchTextureRegionBuffer;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;->setChildrenVisible(Z)V

    return-void
.end method

.method private assertCapacity()V
    .locals 3

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;->mCapacity:I

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This SpriteGroup has already reached its capacity ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;->mCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public attachChild(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    instance-of v0, p1, Lorg/anddev/andengine/entity/sprite/BaseSprite;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;->attachChild(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A SpriteGroup can only handle children of type BaseSprite or subclasses of BaseSprite, like Sprite, TiledSprite or AnimatedSprite."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attachChild(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V
    .locals 1

    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;->assertCapacity()V

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;->assertTexture(Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/sprite/batch/DynamicSpriteBatch;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public attachChildren(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lorg/anddev/andengine/entity/sprite/BaseSprite;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;->attachChild(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method protected onUpdateSpriteBatch()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/anddev/andengine/entity/sprite/batch/SpriteGroup;->mChildren:Lorg/anddev/andengine/util/SmartList;

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v2}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v3

    move v1, v0

    :goto_1
    if-lt v1, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/entity/sprite/BaseSprite;

    invoke-super {p0, v0}, Lorg/anddev/andengine/entity/sprite/batch/DynamicSpriteBatch;->drawWithoutChecks(Lorg/anddev/andengine/entity/sprite/BaseSprite;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
