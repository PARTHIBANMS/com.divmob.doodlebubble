.class Lcom/divmob/common/d;
.super Lorg/anddev/andengine/entity/sprite/AnimatedSprite;


# instance fields
.field final synthetic a:Lcom/divmob/common/ClassicMenu;


# direct methods
.method constructor <init>(Lcom/divmob/common/ClassicMenu;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/common/d;->a:Lcom/divmob/common/ClassicMenu;

    invoke-direct {p0, p2, p3, p4}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    return-void
.end method


# virtual methods
.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionDown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/common/d;->a:Lcom/divmob/common/ClassicMenu;

    invoke-static {v0}, Lcom/divmob/common/ClassicMenu;->a(Lcom/divmob/common/ClassicMenu;)V

    iget-object v0, p0, Lcom/divmob/common/d;->a:Lcom/divmob/common/ClassicMenu;

    invoke-static {v0}, Lcom/divmob/common/ClassicMenu;->b(Lcom/divmob/common/ClassicMenu;)Lcom/divmob/maegame/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/divmob/maegame/d/b;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/divmob/common/d;->a:Lcom/divmob/common/ClassicMenu;

    iget-object v0, v0, Lcom/divmob/common/ClassicMenu;->o:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/divmob/common/d;->a:Lcom/divmob/common/ClassicMenu;

    iget-object v0, v0, Lcom/divmob/common/ClassicMenu;->o:Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    invoke-virtual {v0, v2}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    goto :goto_0
.end method
