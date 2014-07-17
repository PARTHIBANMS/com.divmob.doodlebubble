.class public abstract Lcom/divmob/maegame/game/XMLGame;
.super Lcom/divmob/maegame/game/MBaseGameActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/divmob/maegame/game/MBaseGameActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onSetContentView()V
    .locals 5

    invoke-virtual {p0}, Lcom/divmob/maegame/game/XMLGame;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "game_screen"

    const-string v2, "layout"

    invoke-virtual {p0}, Lcom/divmob/maegame/game/XMLGame;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/divmob/maegame/game/XMLGame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "game_id"

    const-string v3, "id"

    invoke-virtual {p0}, Lcom/divmob/maegame/game/XMLGame;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-super {p0, v0}, Lcom/divmob/maegame/game/MBaseGameActivity;->setContentView(I)V

    invoke-virtual {p0, v1}, Lcom/divmob/maegame/game/XMLGame;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

    invoke-direct {v1, p0}, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/divmob/maegame/game/XMLGame;->mRenderSurfaceView:Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

    iget-object v1, p0, Lcom/divmob/maegame/game/XMLGame;->mRenderSurfaceView:Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;->setEGLConfigChooser(Z)V

    iget-object v1, p0, Lcom/divmob/maegame/game/XMLGame;->mRenderSurfaceView:Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

    iget-object v2, p0, Lcom/divmob/maegame/game/XMLGame;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v1, v2}, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;->setRenderer(Lorg/anddev/andengine/engine/Engine;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-super {p0}, Lcom/divmob/maegame/game/MBaseGameActivity;->createSurfaceViewLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v2, p0, Lcom/divmob/maegame/game/XMLGame;->mRenderSurfaceView:Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
