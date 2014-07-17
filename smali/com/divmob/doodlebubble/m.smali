.class Lcom/divmob/doodlebubble/m;
.super Lorg/anddev/andengine/entity/sprite/AnimatedSprite;


# instance fields
.field final synthetic a:Lcom/divmob/doodlebubble/MenuActivity;


# direct methods
.method constructor <init>(Lcom/divmob/doodlebubble/MenuActivity;FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/doodlebubble/m;->a:Lcom/divmob/doodlebubble/MenuActivity;

    invoke-direct {p0, p2, p3, p4}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    return-void
.end method

.method static synthetic a(Lcom/divmob/doodlebubble/m;)Lcom/divmob/doodlebubble/MenuActivity;
    .locals 1

    iget-object v0, p0, Lcom/divmob/doodlebubble/m;->a:Lcom/divmob/doodlebubble/MenuActivity;

    return-object v0
.end method


# virtual methods
.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lorg/anddev/andengine/input/touch/TouchEvent;->isActionDown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/divmob/doodlebubble/m;->clearEntityModifiers()V

    invoke-virtual {p0, v3}, Lcom/divmob/doodlebubble/m;->setCurrentTileIndex(I)V

    new-instance v0, Lorg/anddev/andengine/entity/modifier/DelayModifier;

    const/high16 v1, 0x3f00

    new-instance v2, Lcom/divmob/doodlebubble/n;

    invoke-direct {v2, p0}, Lcom/divmob/doodlebubble/n;-><init>(Lcom/divmob/doodlebubble/m;)V

    invoke-direct {v0, v1, v2}, Lorg/anddev/andengine/entity/modifier/DelayModifier;-><init>(FLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/m;->registerEntityModifier(Lorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    :cond_0
    return v3
.end method
