.class public abstract Lorg/anddev/andengine/ui/activity/LayoutGameActivity;
.super Lorg/anddev/andengine/ui/activity/BaseGameActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getLayoutID()I
.end method

.method protected abstract getRenderSurfaceViewID()I
.end method

.method protected onSetContentView()V
    .locals 2

    invoke-virtual {p0}, Lorg/anddev/andengine/ui/activity/LayoutGameActivity;->getLayoutID()I

    move-result v0

    invoke-super {p0, v0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->setContentView(I)V

    invoke-virtual {p0}, Lorg/anddev/andengine/ui/activity/LayoutGameActivity;->getRenderSurfaceViewID()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/ui/activity/LayoutGameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

    iput-object v0, p0, Lorg/anddev/andengine/ui/activity/LayoutGameActivity;->mRenderSurfaceView:Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/LayoutGameActivity;->mRenderSurfaceView:Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;->setEGLConfigChooser(Z)V

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/LayoutGameActivity;->mRenderSurfaceView:Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

    iget-object v1, p0, Lorg/anddev/andengine/ui/activity/LayoutGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;->setRenderer(Lorg/anddev/andengine/engine/Engine;)V

    return-void
.end method
