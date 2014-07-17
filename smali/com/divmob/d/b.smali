.class Lcom/divmob/d/b;
.super Lorg/anddev/andengine/entity/sprite/Sprite;


# instance fields
.field final synthetic a:Lcom/divmob/d/a;


# direct methods
.method constructor <init>(Lcom/divmob/d/a;FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/d/b;->a:Lcom/divmob/d/a;

    invoke-direct {p0, p2, p3, p4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    return-void
.end method


# virtual methods
.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/divmob/d/b;->a:Lcom/divmob/d/a;

    invoke-static {v1}, Lcom/divmob/d/a;->a(Lcom/divmob/d/a;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionUp()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/divmob/d/b;->a:Lcom/divmob/d/a;

    invoke-virtual {v1}, Lcom/divmob/d/a;->onPlayClicked()V

    goto :goto_0
.end method
