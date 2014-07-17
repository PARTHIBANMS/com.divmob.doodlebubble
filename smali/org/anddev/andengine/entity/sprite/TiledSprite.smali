.class public Lorg/anddev/andengine/entity/sprite/TiledSprite;
.super Lorg/anddev/andengine/entity/sprite/BaseSprite;


# direct methods
.method public constructor <init>(FFFFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/anddev/andengine/entity/sprite/BaseSprite;-><init>(FFFFLorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    return-void
.end method

.method public constructor <init>(FFFFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/anddev/andengine/entity/sprite/BaseSprite;-><init>(FFFFLorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V

    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V
    .locals 6

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTileWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTileHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/sprite/BaseSprite;-><init>(FFFFLorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;)V

    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V
    .locals 7

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTileWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p3}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTileHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/entity/sprite/BaseSprite;-><init>(FFFFLorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V

    return-void
.end method


# virtual methods
.method public getCurrentTileIndex()I
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/sprite/TiledSprite;->getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getCurrentTileIndex()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/sprite/TiledSprite;->getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 1

    invoke-super {p0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/BaseTextureRegion;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    return-object v0
.end method

.method public nextTile()V
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/sprite/TiledSprite;->getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->nextTile()V

    return-void
.end method

.method public setCurrentTileIndex(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/sprite/TiledSprite;->getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->setCurrentTileIndex(I)V

    return-void
.end method

.method public setCurrentTileIndex(II)V
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/sprite/TiledSprite;->getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->setCurrentTileIndex(II)V

    return-void
.end method
