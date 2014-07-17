.class public Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;
.super Ljava/lang/Object;


# instance fields
.field mGlobalTileID:I

.field mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private final mTileColumn:I

.field private final mTileHeight:I

.field private final mTileRow:I

.field private final mTileWidth:I


# direct methods
.method public constructor <init>(IIIIILorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;->mGlobalTileID:I

    iput p3, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;->mTileRow:I

    iput p2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;->mTileColumn:I

    iput p4, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;->mTileWidth:I

    iput p5, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;->mTileHeight:I

    iput-object p6, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    return-void
.end method


# virtual methods
.method public getGlobalTileID()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;->mGlobalTileID:I

    return v0
.end method

.method public getTMXTileProperties(Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;)Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;",
            ")",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties",
            "<",
            "Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTileProperty;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;->mGlobalTileID:I

    invoke-virtual {p1, v0}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->getTMXTileProperties(I)Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXProperties;

    move-result-object v0

    return-object v0
.end method

.method public getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/TextureRegion;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    return-object v0
.end method

.method public getTileColumn()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;->mTileColumn:I

    return v0
.end method

.method public getTileHeight()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;->mTileHeight:I

    return v0
.end method

.method public getTileRow()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;->mTileRow:I

    return v0
.end method

.method public getTileWidth()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;->mTileWidth:I

    return v0
.end method

.method public getTileX()I
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;->mTileColumn:I

    iget v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;->mTileWidth:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getTileY()I
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;->mTileRow:I

    iget v1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;->mTileHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public setGlobalTileID(Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;I)V
    .locals 1

    iput p2, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;->mGlobalTileID:I

    invoke-virtual {p1, p2}, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTiledMap;->getTextureRegionFromGlobalTileID(I)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    return-void
.end method

.method public setTextureRegion(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/entity/layer/tiled/tmx/TMXTile;->mTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    return-void
.end method
