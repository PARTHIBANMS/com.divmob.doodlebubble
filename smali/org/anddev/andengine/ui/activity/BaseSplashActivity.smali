.class public abstract Lorg/anddev/andengine/ui/activity/BaseSplashActivity;
.super Lorg/anddev/andengine/ui/activity/BaseGameActivity;


# instance fields
.field private mCamera:Lorg/anddev/andengine/engine/camera/Camera;

.field private mLoadingScreenTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private mSplashTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getFollowUpActivity()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getScreenOrientation()Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;
.end method

.method protected getSplashCamera(II)Lorg/anddev/andengine/engine/camera/Camera;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lorg/anddev/andengine/engine/camera/Camera;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v3, v3, v1, v2}, Lorg/anddev/andengine/engine/camera/Camera;-><init>(FFFF)V

    return-object v0
.end method

.method protected abstract getSplashDuration()F
.end method

.method protected getSplashResolutionPolicy(II)Lorg/anddev/andengine/engine/options/resolutionpolicy/IResolutionPolicy;
    .locals 3

    new-instance v0, Lorg/anddev/andengine/engine/options/resolutionpolicy/RatioResolutionPolicy;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v1, v2}, Lorg/anddev/andengine/engine/options/resolutionpolicy/RatioResolutionPolicy;-><init>(FF)V

    return-object v0
.end method

.method protected getSplashScaleFrom()F
    .locals 1

    const/high16 v0, 0x3f80

    return v0
.end method

.method protected getSplashScaleTo()F
    .locals 1

    const/high16 v0, 0x3f80

    return v0
.end method

.method protected abstract onGetSplashTextureAtlasSource()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;
.end method

.method public onLoadComplete()V
    .locals 0

    return-void
.end method

.method public onLoadEngine()Lorg/anddev/andengine/engine/Engine;
    .locals 6

    invoke-virtual {p0}, Lorg/anddev/andengine/ui/activity/BaseSplashActivity;->onGetSplashTextureAtlasSource()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseSplashActivity;->mSplashTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseSplashActivity;->mSplashTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/anddev/andengine/ui/activity/BaseSplashActivity;->mSplashTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

    invoke-interface {v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/ui/activity/BaseSplashActivity;->getSplashCamera(II)Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v2

    iput-object v2, p0, Lorg/anddev/andengine/ui/activity/BaseSplashActivity;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    new-instance v2, Lorg/anddev/andengine/engine/Engine;

    new-instance v3, Lorg/anddev/andengine/engine/options/EngineOptions;

    const/4 v4, 0x1

    invoke-virtual {p0}, Lorg/anddev/andengine/ui/activity/BaseSplashActivity;->getScreenOrientation()Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;

    move-result-object v5

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/ui/activity/BaseSplashActivity;->getSplashResolutionPolicy(II)Lorg/anddev/andengine/engine/options/resolutionpolicy/IResolutionPolicy;

    move-result-object v0

    iget-object v1, p0, Lorg/anddev/andengine/ui/activity/BaseSplashActivity;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    invoke-direct {v3, v4, v5, v0, v1}, Lorg/anddev/andengine/engine/options/EngineOptions;-><init>(ZLorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;Lorg/anddev/andengine/engine/options/resolutionpolicy/IResolutionPolicy;Lorg/anddev/andengine/engine/camera/Camera;)V

    invoke-direct {v2, v3}, Lorg/anddev/andengine/engine/Engine;-><init>(Lorg/anddev/andengine/engine/options/EngineOptions;)V

    return-object v2
.end method

.method public onLoadResources()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    iget-object v1, p0, Lorg/anddev/andengine/ui/activity/BaseSplashActivity;->mSplashTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

    sget-object v2, Lorg/anddev/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/anddev/andengine/opengl/texture/TextureOptions;

    invoke-static {v0, v1, v2}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasFactory;->createForTextureAtlasSourceSize(Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;Lorg/anddev/andengine/opengl/texture/TextureOptions;)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;

    move-result-object v0

    iget-object v1, p0, Lorg/anddev/andengine/ui/activity/BaseSplashActivity;->mSplashTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;

    invoke-static {v0, v1, v3, v3}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->createFromSource(Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlas;Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/IBitmapTextureAtlasSource;II)Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    move-result-object v1

    iput-object v1, p0, Lorg/anddev/andengine/ui/activity/BaseSplashActivity;->mLoadingScreenTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-virtual {p0}, Lorg/anddev/andengine/ui/activity/BaseSplashActivity;->getEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v1

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/Engine;->getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/opengl/texture/TextureManager;->loadTexture(Lorg/anddev/andengine/opengl/texture/ITexture;)Z

    return-void
.end method

.method public onLoadScene()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 6

    invoke-virtual {p0}, Lorg/anddev/andengine/ui/activity/BaseSplashActivity;->getSplashDuration()F

    move-result v3

    new-instance v0, Lorg/anddev/andengine/entity/scene/SplashScene;

    iget-object v1, p0, Lorg/anddev/andengine/ui/activity/BaseSplashActivity;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    iget-object v2, p0, Lorg/anddev/andengine/ui/activity/BaseSplashActivity;->mLoadingScreenTextureRegion:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-virtual {p0}, Lorg/anddev/andengine/ui/activity/BaseSplashActivity;->getSplashScaleFrom()F

    move-result v4

    invoke-virtual {p0}, Lorg/anddev/andengine/ui/activity/BaseSplashActivity;->getSplashScaleTo()F

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/scene/SplashScene;-><init>(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/opengl/texture/region/TextureRegion;FFF)V

    new-instance v1, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;

    new-instance v2, Lorg/anddev/andengine/ui/activity/BaseSplashActivity$1;

    invoke-direct {v2, p0}, Lorg/anddev/andengine/ui/activity/BaseSplashActivity$1;-><init>(Lorg/anddev/andengine/ui/activity/BaseSplashActivity;)V

    invoke-direct {v1, v3, v2}, Lorg/anddev/andengine/engine/handler/timer/TimerHandler;-><init>(FLorg/anddev/andengine/engine/handler/timer/ITimerCallback;)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/scene/SplashScene;->registerUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)V

    return-object v0
.end method
