.class Lcom/divmob/doodlebubble/q;
.super Lorg/anddev/andengine/entity/sprite/AnimatedSprite;


# instance fields
.field final synthetic a:Lcom/divmob/doodlebubble/MenuActivity;


# direct methods
.method constructor <init>(Lcom/divmob/doodlebubble/MenuActivity;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/doodlebubble/q;->a:Lcom/divmob/doodlebubble/MenuActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    return-void
.end method


# virtual methods
.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionDown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/divmob/doodlebubble/q;->clearEntityModifiers()V

    iget-object v0, p0, Lcom/divmob/doodlebubble/q;->a:Lcom/divmob/doodlebubble/MenuActivity;

    iget-object v1, p0, Lcom/divmob/doodlebubble/q;->a:Lcom/divmob/doodlebubble/MenuActivity;

    invoke-static {v1}, Lcom/divmob/doodlebubble/MenuActivity;->d(Lcom/divmob/doodlebubble/MenuActivity;)Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/divmob/doodlebubble/MenuActivity;->a(Lorg/anddev/andengine/entity/scene/Scene;ZZ)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
