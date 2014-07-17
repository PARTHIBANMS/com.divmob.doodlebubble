.class public abstract Lorg/anddev/andengine/ui/activity/BaseGameActivity;
.super Lorg/anddev/andengine/ui/activity/BaseActivity;

# interfaces
.implements Lorg/anddev/andengine/ui/IGameInterface;


# static fields
.field private static synthetic $SWITCH_TABLE$org$anddev$andengine$engine$options$EngineOptions$ScreenOrientation:[I


# instance fields
.field protected mEngine:Lorg/anddev/andengine/engine/Engine;

.field private mGameLoaded:Z

.field protected mHasWindowFocused:Z

.field private mPaused:Z

.field protected mRenderSurfaceView:Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic $SWITCH_TABLE$org$anddev$andengine$engine$options$EngineOptions$ScreenOrientation()[I
    .locals 3

    sget-object v0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->$SWITCH_TABLE$org$anddev$andengine$engine$options$EngineOptions$ScreenOrientation:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;->values()[Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;->LANDSCAPE:Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;->PORTRAIT:Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->$SWITCH_TABLE$org$anddev$andengine$engine$options$EngineOptions$ScreenOrientation:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/ui/activity/BaseActivity;-><init>()V

    return-void
.end method

.method private acquireWakeLock(Lorg/anddev/andengine/engine/options/WakeLockOptions;)V
    .locals 3

    sget-object v0, Lorg/anddev/andengine/engine/options/WakeLockOptions;->SCREEN_ON:Lorg/anddev/andengine/engine/options/WakeLockOptions;

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Lorg/anddev/andengine/util/ActivityUtils;->keepScreenOn(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/options/WakeLockOptions;->getFlag()I

    move-result v1

    const/high16 v2, 0x2000

    or-int/2addr v1, v2

    const-string v2, "AndEngine"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "You have to add\n\t<uses-permission android:name=\"android.permission.WAKE_LOCK\"/>\nto your AndroidManifest.xml !"

    invoke-static {v1, v0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private applyEngineOptions(Lorg/anddev/andengine/engine/options/EngineOptions;)V
    .locals 2

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/options/EngineOptions;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/anddev/andengine/util/ActivityUtils;->requestFullscreen(Landroid/app/Activity;)V

    :cond_0
    invoke-virtual {p1}, Lorg/anddev/andengine/engine/options/EngineOptions;->needsMusic()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/options/EngineOptions;->needsSound()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->setVolumeControlStream(I)V

    :cond_2
    invoke-static {}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->$SWITCH_TABLE$org$anddev$andengine$engine$options$EngineOptions$ScreenOrientation()[I

    move-result-object v0

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/options/EngineOptions;->getScreenOrientation()Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;

    move-result-object v1

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->setRequestedOrientation(I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->setRequestedOrientation(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mPaused:Z

    invoke-direct {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->releaseWakeLock()V

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->onPause()V

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->stop()V

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mRenderSurfaceView:Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;->onPause()V

    invoke-virtual {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->onPauseGame()V

    return-void
.end method

.method private doResume()V
    .locals 2

    iget-boolean v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mGameLoaded:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->onLoadResources()V

    invoke-virtual {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->onLoadScene()Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    iget-object v1, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/engine/Engine;->onLoadComplete(Lorg/anddev/andengine/entity/scene/Scene;)V

    invoke-virtual {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->onLoadComplete()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mGameLoaded:Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mPaused:Z

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getEngineOptions()Lorg/anddev/andengine/engine/options/EngineOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/options/EngineOptions;->getWakeLockOptions()Lorg/anddev/andengine/engine/options/WakeLockOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->acquireWakeLock(Lorg/anddev/andengine/engine/options/WakeLockOptions;)V

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->onResume()V

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mRenderSurfaceView:Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;->onResume()V

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->start()V

    invoke-virtual {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->onResumeGame()V

    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createSurfaceViewLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method protected disableAccelerometerSensor()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/engine/Engine;->disableAccelerometerSensor(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected disableLocationSensor()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/engine/Engine;->disableLocationSensor(Landroid/content/Context;)V

    return-void
.end method

.method protected disableOrientationSensor()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/engine/Engine;->disableOrientationSensor(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected enableAccelerometerSensor(Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0, p0, p1}, Lorg/anddev/andengine/engine/Engine;->enableAccelerometerSensor(Landroid/content/Context;Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;)Z

    move-result v0

    return v0
.end method

.method protected enableAccelerometerSensor(Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;Lorg/anddev/andengine/sensor/accelerometer/AccelerometerSensorOptions;)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0, p0, p1, p2}, Lorg/anddev/andengine/engine/Engine;->enableAccelerometerSensor(Landroid/content/Context;Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;Lorg/anddev/andengine/sensor/accelerometer/AccelerometerSensorOptions;)Z

    move-result v0

    return v0
.end method

.method protected enableLocationSensor(Lorg/anddev/andengine/sensor/location/ILocationListener;Lorg/anddev/andengine/sensor/location/LocationSensorOptions;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0, p0, p1, p2}, Lorg/anddev/andengine/engine/Engine;->enableLocationSensor(Landroid/content/Context;Lorg/anddev/andengine/sensor/location/ILocationListener;Lorg/anddev/andengine/sensor/location/LocationSensorOptions;)V

    return-void
.end method

.method protected enableOrientationSensor(Lorg/anddev/andengine/sensor/orientation/IOrientationListener;)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0, p0, p1}, Lorg/anddev/andengine/engine/Engine;->enableOrientationSensor(Landroid/content/Context;Lorg/anddev/andengine/sensor/orientation/IOrientationListener;)Z

    move-result v0

    return v0
.end method

.method protected enableOrientationSensor(Lorg/anddev/andengine/sensor/orientation/IOrientationListener;Lorg/anddev/andengine/sensor/orientation/OrientationSensorOptions;)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0, p0, p1, p2}, Lorg/anddev/andengine/engine/Engine;->enableOrientationSensor(Landroid/content/Context;Lorg/anddev/andengine/sensor/orientation/IOrientationListener;Lorg/anddev/andengine/sensor/orientation/OrientationSensorOptions;)Z

    move-result v0

    return v0
.end method

.method protected enableVibrator()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0, p0}, Lorg/anddev/andengine/engine/Engine;->enableVibrator(Landroid/content/Context;)Z

    return-void
.end method

.method public getEngine()Lorg/anddev/andengine/engine/Engine;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    return-object v0
.end method

.method public getFontManager()Lorg/anddev/andengine/opengl/font/FontManager;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->getFontManager()Lorg/anddev/andengine/opengl/font/FontManager;

    move-result-object v0

    return-object v0
.end method

.method public getMusicManager()Lorg/anddev/andengine/audio/music/MusicManager;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getMusicManager()Lorg/anddev/andengine/audio/music/MusicManager;

    move-result-object v0

    return-object v0
.end method

.method public getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v0

    return-object v0
.end method

.method public getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/anddev/andengine/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mPaused:Z

    invoke-virtual {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->onLoadEngine()Lorg/anddev/andengine/engine/Engine;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getEngineOptions()Lorg/anddev/andengine/engine/options/EngineOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->applyEngineOptions(Lorg/anddev/andengine/engine/options/EngineOptions;)V

    invoke-virtual {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->onSetContentView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lorg/anddev/andengine/ui/activity/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->interruptUpdateThread()V

    invoke-virtual {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->onUnloadResources()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lorg/anddev/andengine/ui/activity/BaseActivity;->onPause()V

    iget-boolean v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mPaused:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->doPause()V

    :cond_0
    return-void
.end method

.method public onPauseGame()V
    .locals 0

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lorg/anddev/andengine/ui/activity/BaseActivity;->onResume()V

    iget-boolean v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mPaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mHasWindowFocused:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->doResume()V

    :cond_0
    return-void
.end method

.method public onResumeGame()V
    .locals 0

    return-void
.end method

.method protected onSetContentView()V
    .locals 2

    new-instance v0, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mRenderSurfaceView:Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mRenderSurfaceView:Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;->setEGLConfigChooser(Z)V

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mRenderSurfaceView:Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

    iget-object v1, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;->setRenderer(Lorg/anddev/andengine/engine/Engine;)V

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mRenderSurfaceView:Lorg/anddev/andengine/opengl/view/RenderSurfaceView;

    invoke-virtual {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->createSurfaceViewLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onUnloadResources()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getEngineOptions()Lorg/anddev/andengine/engine/options/EngineOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/options/EngineOptions;->needsMusic()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->getMusicManager()Lorg/anddev/andengine/audio/music/MusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/music/MusicManager;->releaseAll()V

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine;->getEngineOptions()Lorg/anddev/andengine/engine/options/EngineOptions;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/options/EngineOptions;->needsSound()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/sound/SoundManager;->releaseAll()V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lorg/anddev/andengine/ui/activity/BaseActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mPaused:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->doResume()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mHasWindowFocused:Z

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mPaused:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->doPause()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mHasWindowFocused:Z

    goto :goto_0
.end method

.method public runOnUpdateThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->mEngine:Lorg/anddev/andengine/engine/Engine;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/Engine;->runOnUpdateThread(Ljava/lang/Runnable;)V

    return-void
.end method
