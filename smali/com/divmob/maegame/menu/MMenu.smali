.class public abstract Lcom/divmob/maegame/menu/MMenu;
.super Lcom/divmob/maegame/game/MBaseGameActivity;

# interfaces
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/divmob/maegame/game/MBaseGameActivity;-><init>()V

    return-void
.end method

.method private c()V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/divmob/maegame/menu/MMenu;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/divmob/maegame/menu/MMenu;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/maegame/f/a/a;

    invoke-virtual {v0}, Lcom/divmob/maegame/f/a/a;->b()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public onLoadScene()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 1

    invoke-super {p0}, Lcom/divmob/maegame/game/MBaseGameActivity;->onLoadScene()Lorg/anddev/andengine/entity/scene/Scene;

    iget-object v0, p0, Lcom/divmob/maegame/menu/MMenu;->u:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/entity/scene/Scene;->setOnSceneTouchListener(Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;)V

    iget-object v0, p0, Lcom/divmob/maegame/menu/MMenu;->u:Lorg/anddev/andengine/entity/scene/Scene;

    return-object v0
.end method

.method public onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p2}, Lorg/anddev/andengine/input/touch/TouchEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v3

    :pswitch_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/divmob/maegame/menu/MMenu;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    invoke-direct {p0}, Lcom/divmob/maegame/menu/MMenu;->c()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/divmob/maegame/menu/MMenu;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/maegame/f/a/a;

    invoke-virtual {v0}, Lcom/divmob/maegame/f/a/a;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/divmob/maegame/f/a/a;->a()V

    invoke-direct {p0}, Lcom/divmob/maegame/menu/MMenu;->c()V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
