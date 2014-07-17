.class public Lorg/anddev/andengine/entity/scene/menu/item/AnimatedSpriteMenuItem;
.super Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

# interfaces
.implements Lorg/anddev/andengine/entity/scene/menu/item/IMenuItem;


# instance fields
.field private final mID:I


# direct methods
.method public constructor <init>(ILorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p2}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    iput p1, p0, Lorg/anddev/andengine/entity/scene/menu/item/AnimatedSpriteMenuItem;->mID:I

    return-void
.end method


# virtual methods
.method public getID()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/entity/scene/menu/item/AnimatedSpriteMenuItem;->mID:I

    return v0
.end method

.method public onSelected()V
    .locals 0

    return-void
.end method

.method public onUnselected()V
    .locals 0

    return-void
.end method
