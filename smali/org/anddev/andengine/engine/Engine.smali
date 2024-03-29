.class public Lorg/anddev/andengine/engine/Engine;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/location/LocationListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lorg/anddev/andengine/input/touch/controller/ITouchController$ITouchEventCallback;
.implements Lorg/anddev/andengine/util/constants/TimeConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/engine/Engine$State;,
        Lorg/anddev/andengine/engine/Engine$UpdateThread;
    }
.end annotation


# static fields
.field private static final SENSORDELAY_DEFAULT:Lorg/anddev/andengine/sensor/SensorDelay; = null

.field private static final UPDATEHANDLERS_CAPACITY_DEFAULT:I = 0x20


# instance fields
.field private mAccelerometerData:Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;

.field private mAccelerometerListener:Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;

.field private final mBufferObjectManager:Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

.field protected final mCamera:Lorg/anddev/andengine/engine/camera/Camera;

.field private final mEngineOptions:Lorg/anddev/andengine/engine/options/EngineOptions;

.field private final mFontManager:Lorg/anddev/andengine/opengl/font/FontManager;

.field private mIsMethodTracing:Z

.field private mLastTick:J

.field private mLocation:Landroid/location/Location;

.field private mLocationListener:Lorg/anddev/andengine/sensor/location/ILocationListener;

.field private mMusicManager:Lorg/anddev/andengine/audio/music/MusicManager;

.field private mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

.field private mOrientationListener:Lorg/anddev/andengine/sensor/orientation/IOrientationListener;

.field private mRunning:Z

.field protected mScene:Lorg/anddev/andengine/entity/scene/Scene;

.field private mSecondsElapsedTotal:F

.field private mSoundManager:Lorg/anddev/andengine/audio/sound/SoundManager;

.field protected mSurfaceHeight:I

.field protected mSurfaceWidth:I

.field private final mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

.field private final mThreadLocker:Lorg/anddev/andengine/engine/Engine$State;

.field private mTouchController:Lorg/anddev/andengine/input/touch/controller/ITouchController;

.field private final mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

.field private final mUpdateThread:Lorg/anddev/andengine/engine/Engine$UpdateThread;

.field private final mUpdateThreadRunnableHandler:Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/anddev/andengine/sensor/SensorDelay;->GAME:Lorg/anddev/andengine/sensor/SensorDelay;

    sput-object v0, Lorg/anddev/andengine/engine/Engine;->SENSORDELAY_DEFAULT:Lorg/anddev/andengine/sensor/SensorDelay;

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/engine/options/EngineOptions;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mRunning:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/anddev/andengine/engine/Engine;->mLastTick:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/engine/Engine;->mSecondsElapsedTotal:F

    new-instance v0, Lorg/anddev/andengine/engine/Engine$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/anddev/andengine/engine/Engine$State;-><init>(Lorg/anddev/andengine/engine/Engine$State;)V

    iput-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mThreadLocker:Lorg/anddev/andengine/engine/Engine$State;

    new-instance v0, Lorg/anddev/andengine/engine/Engine$UpdateThread;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/engine/Engine$UpdateThread;-><init>(Lorg/anddev/andengine/engine/Engine;)V

    iput-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mUpdateThread:Lorg/anddev/andengine/engine/Engine$UpdateThread;

    new-instance v0, Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

    invoke-direct {v0}, Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mUpdateThreadRunnableHandler:Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

    new-instance v0, Lorg/anddev/andengine/opengl/texture/TextureManager;

    invoke-direct {v0}, Lorg/anddev/andengine/opengl/texture/TextureManager;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

    new-instance v0, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    invoke-direct {v0}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mBufferObjectManager:Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    new-instance v0, Lorg/anddev/andengine/opengl/font/FontManager;

    invoke-direct {v0}, Lorg/anddev/andengine/opengl/font/FontManager;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mFontManager:Lorg/anddev/andengine/opengl/font/FontManager;

    new-instance v0, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;-><init>(I)V

    iput-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    iput v2, p0, Lorg/anddev/andengine/engine/Engine;->mSurfaceWidth:I

    iput v2, p0, Lorg/anddev/andengine/engine/Engine;->mSurfaceHeight:I

    invoke-static {}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/BitmapTextureAtlasTextureRegionFactory;->reset()V

    invoke-static {}, Lorg/anddev/andengine/audio/sound/SoundFactory;->reset()V

    invoke-static {}, Lorg/anddev/andengine/audio/music/MusicFactory;->reset()V

    invoke-static {}, Lorg/anddev/andengine/opengl/font/FontFactory;->reset()V

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mBufferObjectManager:Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    invoke-static {v0}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->setActiveInstance(Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;)V

    iput-object p1, p0, Lorg/anddev/andengine/engine/Engine;->mEngineOptions:Lorg/anddev/andengine/engine/options/EngineOptions;

    new-instance v0, Lorg/anddev/andengine/input/touch/controller/SingleTouchControler;

    invoke-direct {v0}, Lorg/anddev/andengine/input/touch/controller/SingleTouchControler;-><init>()V

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/Engine;->setTouchController(Lorg/anddev/andengine/input/touch/controller/ITouchController;)V

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/options/EngineOptions;->getCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mEngineOptions:Lorg/anddev/andengine/engine/options/EngineOptions;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/options/EngineOptions;->needsSound()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/anddev/andengine/audio/sound/SoundManager;

    invoke-direct {v0}, Lorg/anddev/andengine/audio/sound/SoundManager;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mSoundManager:Lorg/anddev/andengine/audio/sound/SoundManager;

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mEngineOptions:Lorg/anddev/andengine/engine/options/EngineOptions;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/options/EngineOptions;->needsMusic()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/anddev/andengine/audio/music/MusicManager;

    invoke-direct {v0}, Lorg/anddev/andengine/audio/music/MusicManager;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mMusicManager:Lorg/anddev/andengine/audio/music/MusicManager;

    :cond_1
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mUpdateThread:Lorg/anddev/andengine/engine/Engine$UpdateThread;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine$UpdateThread;->start()V

    return-void
.end method

.method static synthetic access$0(Lorg/anddev/andengine/engine/Engine;)Lorg/anddev/andengine/engine/options/EngineOptions;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mEngineOptions:Lorg/anddev/andengine/engine/options/EngineOptions;

    return-object v0
.end method

.method private getNanosecondsElapsed()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/anddev/andengine/engine/Engine;->mLastTick:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/anddev/andengine/engine/Engine;->calculateNanosecondsElapsed(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private isSensorSupported(Landroid/hardware/SensorManager;I)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerSelfAsSensorListener(Landroid/hardware/SensorManager;ILorg/anddev/andengine/sensor/SensorDelay;)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {p3}, Lorg/anddev/andengine/sensor/SensorDelay;->getDelay()I

    move-result v1

    invoke-virtual {p1, p0, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method private unregisterSelfAsSensorListener(Landroid/hardware/SensorManager;I)V
    .locals 2

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {p1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method

.method private yieldDraw()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mThreadLocker:Lorg/anddev/andengine/engine/Engine$State;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine$State;->notifyCanDraw()V

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine$State;->waitUntilCanUpdate()V

    return-void
.end method


# virtual methods
.method protected calculateNanosecondsElapsed(JJ)J
    .locals 2

    sub-long v0, p1, p3

    return-wide v0
.end method

.method public clearUpdateHandlers()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->clear()V

    return-void
.end method

.method protected convertSurfaceToSceneTouchEvent(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/input/touch/TouchEvent;)V
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/engine/Engine;->mSurfaceWidth:I

    iget v1, p0, Lorg/anddev/andengine/engine/Engine;->mSurfaceHeight:I

    invoke-virtual {p1, p2, v0, v1}, Lorg/anddev/andengine/engine/camera/Camera;->convertSurfaceToSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;II)V

    return-void
.end method

.method public disableAccelerometerSensor(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-direct {p0, v0, v1}, Lorg/anddev/andengine/engine/Engine;->isSensorSupported(Landroid/hardware/SensorManager;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lorg/anddev/andengine/engine/Engine;->unregisterSelfAsSensorListener(Landroid/hardware/SensorManager;I)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disableLocationSensor(Landroid/content/Context;)V
    .locals 1

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method

.method public disableOrientationSensor(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-direct {p0, v0, v1}, Lorg/anddev/andengine/engine/Engine;->isSensorSupported(Landroid/hardware/SensorManager;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v3}, Lorg/anddev/andengine/engine/Engine;->isSensorSupported(Landroid/hardware/SensorManager;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lorg/anddev/andengine/engine/Engine;->unregisterSelfAsSensorListener(Landroid/hardware/SensorManager;I)V

    invoke-direct {p0, v0, v3}, Lorg/anddev/andengine/engine/Engine;->unregisterSelfAsSensorListener(Landroid/hardware/SensorManager;I)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableAccelerometerSensor(Landroid/content/Context;Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;)Z
    .locals 2

    new-instance v0, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerSensorOptions;

    sget-object v1, Lorg/anddev/andengine/engine/Engine;->SENSORDELAY_DEFAULT:Lorg/anddev/andengine/sensor/SensorDelay;

    invoke-direct {v0, v1}, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerSensorOptions;-><init>(Lorg/anddev/andengine/sensor/SensorDelay;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/anddev/andengine/engine/Engine;->enableAccelerometerSensor(Landroid/content/Context;Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;Lorg/anddev/andengine/sensor/accelerometer/AccelerometerSensorOptions;)Z

    move-result v0

    return v0
.end method

.method public enableAccelerometerSensor(Landroid/content/Context;Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;Lorg/anddev/andengine/sensor/accelerometer/AccelerometerSensorOptions;)Z
    .locals 4

    const/4 v2, 0x1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-direct {p0, v0, v2}, Lorg/anddev/andengine/engine/Engine;->isSensorSupported(Landroid/hardware/SensorManager;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p2, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerListener:Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;

    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerData:Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;

    if-nez v1, :cond_0

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    new-instance v3, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;

    invoke-direct {v3, v1}, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;-><init>(I)V

    iput-object v3, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerData:Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;

    :cond_0
    invoke-virtual {p3}, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerSensorOptions;->getSensorDelay()Lorg/anddev/andengine/sensor/SensorDelay;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lorg/anddev/andengine/engine/Engine;->registerSelfAsSensorListener(Landroid/hardware/SensorManager;ILorg/anddev/andengine/sensor/SensorDelay;)V

    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableLocationSensor(Landroid/content/Context;Lorg/anddev/andengine/sensor/location/ILocationListener;Lorg/anddev/andengine/sensor/location/LocationSensorOptions;)V
    .locals 6

    iput-object p2, p0, Lorg/anddev/andengine/engine/Engine;->mLocationListener:Lorg/anddev/andengine/sensor/location/ILocationListener;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    invoke-virtual {p3}, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->isEnabledOnly()Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->getMinimumTriggerTime()J

    move-result-wide v2

    invoke-virtual {p3}, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->getMinimumTriggerDistance()J

    move-result-wide v4

    long-to-float v4, v4

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/Engine;->onLocationChanged(Landroid/location/Location;)V

    return-void
.end method

.method public enableOrientationSensor(Landroid/content/Context;Lorg/anddev/andengine/sensor/orientation/IOrientationListener;)Z
    .locals 2

    new-instance v0, Lorg/anddev/andengine/sensor/orientation/OrientationSensorOptions;

    sget-object v1, Lorg/anddev/andengine/engine/Engine;->SENSORDELAY_DEFAULT:Lorg/anddev/andengine/sensor/SensorDelay;

    invoke-direct {v0, v1}, Lorg/anddev/andengine/sensor/orientation/OrientationSensorOptions;-><init>(Lorg/anddev/andengine/sensor/SensorDelay;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/anddev/andengine/engine/Engine;->enableOrientationSensor(Landroid/content/Context;Lorg/anddev/andengine/sensor/orientation/IOrientationListener;Lorg/anddev/andengine/sensor/orientation/OrientationSensorOptions;)Z

    move-result v0

    return v0
.end method

.method public enableOrientationSensor(Landroid/content/Context;Lorg/anddev/andengine/sensor/orientation/IOrientationListener;Lorg/anddev/andengine/sensor/orientation/OrientationSensorOptions;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x1

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-direct {p0, v0, v2}, Lorg/anddev/andengine/engine/Engine;->isSensorSupported(Landroid/hardware/SensorManager;I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, v4}, Lorg/anddev/andengine/engine/Engine;->isSensorSupported(Landroid/hardware/SensorManager;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p2, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationListener:Lorg/anddev/andengine/sensor/orientation/IOrientationListener;

    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    if-nez v1, :cond_0

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    new-instance v3, Lorg/anddev/andengine/sensor/orientation/OrientationData;

    invoke-direct {v3, v1}, Lorg/anddev/andengine/sensor/orientation/OrientationData;-><init>(I)V

    iput-object v3, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    :cond_0
    invoke-virtual {p3}, Lorg/anddev/andengine/sensor/orientation/OrientationSensorOptions;->getSensorDelay()Lorg/anddev/andengine/sensor/SensorDelay;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lorg/anddev/andengine/engine/Engine;->registerSelfAsSensorListener(Landroid/hardware/SensorManager;ILorg/anddev/andengine/sensor/SensorDelay;)V

    invoke-virtual {p3}, Lorg/anddev/andengine/sensor/orientation/OrientationSensorOptions;->getSensorDelay()Lorg/anddev/andengine/sensor/SensorDelay;

    move-result-object v1

    invoke-direct {p0, v0, v4, v1}, Lorg/anddev/andengine/engine/Engine;->registerSelfAsSensorListener(Landroid/hardware/SensorManager;ILorg/anddev/andengine/sensor/SensorDelay;)V

    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableVibrator(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mVibrator:Landroid/os/Vibrator;

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAccelerometerData()Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerData:Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;

    return-object v0
.end method

.method public getCamera()Lorg/anddev/andengine/engine/camera/Camera;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    return-object v0
.end method

.method protected getCameraFromSurfaceTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Lorg/anddev/andengine/engine/camera/Camera;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/Engine;->getCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getEngineOptions()Lorg/anddev/andengine/engine/options/EngineOptions;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mEngineOptions:Lorg/anddev/andengine/engine/options/EngineOptions;

    return-object v0
.end method

.method public getFontManager()Lorg/anddev/andengine/opengl/font/FontManager;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mFontManager:Lorg/anddev/andengine/opengl/font/FontManager;

    return-object v0
.end method

.method public getMusicManager()Lorg/anddev/andengine/audio/music/MusicManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mMusicManager:Lorg/anddev/andengine/audio/music/MusicManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mMusicManager:Lorg/anddev/andengine/audio/music/MusicManager;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "To enable the MusicManager, check the EngineOptions!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOrientationData()Lorg/anddev/andengine/sensor/orientation/OrientationData;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    return-object v0
.end method

.method public getScene()Lorg/anddev/andengine/entity/scene/Scene;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mScene:Lorg/anddev/andengine/entity/scene/Scene;

    return-object v0
.end method

.method protected getSceneFromSurfaceTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Lorg/anddev/andengine/entity/scene/Scene;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mScene:Lorg/anddev/andengine/entity/scene/Scene;

    return-object v0
.end method

.method public getSecondsElapsedTotal()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/Engine;->mSecondsElapsedTotal:F

    return v0
.end method

.method public getSoundManager()Lorg/anddev/andengine/audio/sound/SoundManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mSoundManager:Lorg/anddev/andengine/audio/sound/SoundManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mSoundManager:Lorg/anddev/andengine/audio/sound/SoundManager;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "To enable the SoundManager, check the EngineOptions!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/Engine;->mSurfaceHeight:I

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/Engine;->mSurfaceWidth:I

    return v0
.end method

.method public getTextureManager()Lorg/anddev/andengine/opengl/texture/TextureManager;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

    return-object v0
.end method

.method public getTouchController()Lorg/anddev/andengine/input/touch/controller/ITouchController;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mTouchController:Lorg/anddev/andengine/input/touch/controller/ITouchController;

    return-object v0
.end method

.method public interruptUpdateThread()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mUpdateThread:Lorg/anddev/andengine/engine/Engine$UpdateThread;

    invoke-virtual {v0}, Lorg/anddev/andengine/engine/Engine$UpdateThread;->interrupt()V

    return-void
.end method

.method public isMethodTracing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mIsMethodTracing:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mRunning:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2

    iget-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mRunning:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerData:Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerData:Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;

    invoke-virtual {v0, p2}, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;->setAccuracy(I)V

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerListener:Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;

    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerData:Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;->onAccelerometerChanged(Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    invoke-virtual {v0, p2}, Lorg/anddev/andengine/sensor/orientation/OrientationData;->setAccelerometerAccuracy(I)V

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationListener:Lorg/anddev/andengine/sensor/orientation/IOrientationListener;

    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/sensor/orientation/IOrientationListener;->onOrientationChanged(Lorg/anddev/andengine/sensor/orientation/OrientationData;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    invoke-virtual {v0, p2}, Lorg/anddev/andengine/sensor/orientation/OrientationData;->setMagneticFieldAccuracy(I)V

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationListener:Lorg/anddev/andengine/sensor/orientation/IOrientationListener;

    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/sensor/orientation/IOrientationListener;->onOrientationChanged(Lorg/anddev/andengine/sensor/orientation/OrientationData;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine;->mThreadLocker:Lorg/anddev/andengine/engine/Engine$State;

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/Engine$State;->waitUntilCanDraw()V

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/texture/TextureManager;->updateTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mFontManager:Lorg/anddev/andengine/opengl/font/FontManager;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/opengl/font/FontManager;->updateFonts(Ljavax/microedition/khronos/opengles/GL10;)V

    sget-boolean v0, Lorg/anddev/andengine/opengl/util/GLHelper;->EXTENSIONS_VERTEXBUFFEROBJECTS:Z

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/anddev/andengine/engine/Engine;->mBufferObjectManager:Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v2, v0}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->updateBufferObjects(Ljavax/microedition/khronos/opengles/GL11;)V

    :cond_0
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/engine/Engine;->onDrawScene(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/Engine$State;->notifyCanUpdate()V

    return-void
.end method

.method protected onDrawScene(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/Engine;->getCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v0

    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine;->mScene:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v1, p1, v0}, Lorg/anddev/andengine/entity/scene/Scene;->onDraw(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->onDrawHUD(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public onLoadComplete(Lorg/anddev/andengine/entity/scene/Scene;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/engine/Engine;->setScene(Lorg/anddev/andengine/entity/scene/Scene;)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/anddev/andengine/engine/Engine;->mLocation:Landroid/location/Location;

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mLocationListener:Lorg/anddev/andengine/sensor/location/ILocationListener;

    invoke-interface {v0}, Lorg/anddev/andengine/sensor/location/ILocationListener;->onLocationLost()V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lorg/anddev/andengine/engine/Engine;->mLocation:Landroid/location/Location;

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mLocationListener:Lorg/anddev/andengine/sensor/location/ILocationListener;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/sensor/location/ILocationListener;->onLocationChanged(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mLocationListener:Lorg/anddev/andengine/sensor/location/ILocationListener;

    invoke-interface {v0}, Lorg/anddev/andengine/sensor/location/ILocationListener;->onLocationProviderDisabled()V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mLocationListener:Lorg/anddev/andengine/sensor/location/ILocationListener;

    invoke-interface {v0}, Lorg/anddev/andengine/sensor/location/ILocationListener;->onLocationProviderEnabled()V

    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mTextureManager:Lorg/anddev/andengine/opengl/texture/TextureManager;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/TextureManager;->reloadTextures()V

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mFontManager:Lorg/anddev/andengine/opengl/font/FontManager;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/font/FontManager;->reloadFonts()V

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mBufferObjectManager:Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    invoke-static {v0}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->setActiveInstance(Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;)V

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mBufferObjectManager:Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->reloadBufferObjects()V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    iget-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerData:Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerData:Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;->setValues([F)V

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerListener:Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;

    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine;->mAccelerometerData:Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/sensor/accelerometer/IAccelerometerListener;->onAccelerometerChanged(Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/sensor/orientation/OrientationData;->setAccelerometerValues([F)V

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationListener:Lorg/anddev/andengine/sensor/orientation/IOrientationListener;

    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/sensor/orientation/IOrientationListener;->onOrientationChanged(Lorg/anddev/andengine/sensor/orientation/OrientationData;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/sensor/orientation/OrientationData;->setMagneticFieldValues([F)V

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationListener:Lorg/anddev/andengine/sensor/orientation/IOrientationListener;

    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine;->mOrientationData:Lorg/anddev/andengine/sensor/orientation/OrientationData;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/sensor/orientation/IOrientationListener;->onOrientationChanged(Lorg/anddev/andengine/sensor/orientation/OrientationData;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mLocationListener:Lorg/anddev/andengine/sensor/location/ILocationListener;

    sget-object v1, Lorg/anddev/andengine/sensor/location/LocationProviderStatus;->AVAILABLE:Lorg/anddev/andengine/sensor/location/LocationProviderStatus;

    invoke-interface {v0, v1, p3}, Lorg/anddev/andengine/sensor/location/ILocationListener;->onLocationProviderStatusChanged(Lorg/anddev/andengine/sensor/location/LocationProviderStatus;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mLocationListener:Lorg/anddev/andengine/sensor/location/ILocationListener;

    sget-object v1, Lorg/anddev/andengine/sensor/location/LocationProviderStatus;->OUT_OF_SERVICE:Lorg/anddev/andengine/sensor/location/LocationProviderStatus;

    invoke-interface {v0, v1, p3}, Lorg/anddev/andengine/sensor/location/ILocationListener;->onLocationProviderStatusChanged(Lorg/anddev/andengine/sensor/location/LocationProviderStatus;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mLocationListener:Lorg/anddev/andengine/sensor/location/ILocationListener;

    sget-object v1, Lorg/anddev/andengine/sensor/location/LocationProviderStatus;->TEMPORARILY_UNAVAILABLE:Lorg/anddev/andengine/sensor/location/LocationProviderStatus;

    invoke-interface {v0, v1, p3}, Lorg/anddev/andengine/sensor/location/ILocationListener;->onLocationProviderStatusChanged(Lorg/anddev/andengine/sensor/location/LocationProviderStatus;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method onTickUpdate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mRunning:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/anddev/andengine/engine/Engine;->getNanosecondsElapsed()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/engine/Engine;->onUpdate(J)V

    invoke-direct {p0}, Lorg/anddev/andengine/engine/Engine;->yieldDraw()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lorg/anddev/andengine/engine/Engine;->yieldDraw()V

    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mTouchController:Lorg/anddev/andengine/input/touch/controller/ITouchController;

    invoke-interface {v0, p2}, Lorg/anddev/andengine/input/touch/controller/ITouchController;->onHandleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const-wide/16 v1, 0x14

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/engine/Engine;->getSceneFromSurfaceTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Lorg/anddev/andengine/entity/scene/Scene;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/engine/Engine;->getCameraFromSurfaceTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/anddev/andengine/engine/Engine;->convertSurfaceToSceneTouchEvent(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/input/touch/TouchEvent;)V

    invoke-virtual {p0, v1, p1}, Lorg/anddev/andengine/engine/Engine;->onTouchHUD(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/anddev/andengine/engine/Engine;->onTouchScene(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onTouchHUD(Lorg/anddev/andengine/engine/camera/Camera;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/camera/Camera;->hasHUD()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/anddev/andengine/engine/camera/Camera;->getHUD()Lorg/anddev/andengine/engine/camera/hud/HUD;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/anddev/andengine/engine/camera/hud/HUD;->onSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onTouchScene(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lorg/anddev/andengine/entity/scene/Scene;->onSceneTouchEvent(Lorg/anddev/andengine/input/touch/TouchEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onUpdate(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    long-to-float v0, p1

    const v1, 0x4e6e6b28

    div-float/2addr v0, v1

    iget v1, p0, Lorg/anddev/andengine/engine/Engine;->mSecondsElapsedTotal:F

    add-float/2addr v1, v0

    iput v1, p0, Lorg/anddev/andengine/engine/Engine;->mSecondsElapsedTotal:F

    iget-wide v1, p0, Lorg/anddev/andengine/engine/Engine;->mLastTick:J

    add-long/2addr v1, p1

    iput-wide v1, p0, Lorg/anddev/andengine/engine/Engine;->mLastTick:J

    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine;->mTouchController:Lorg/anddev/andengine/input/touch/controller/ITouchController;

    invoke-interface {v1, v0}, Lorg/anddev/andengine/input/touch/controller/ITouchController;->onUpdate(F)V

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/Engine;->updateUpdateHandlers(F)V

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/Engine;->onUpdateScene(F)V

    return-void
.end method

.method protected onUpdateCameraSurface()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mCamera:Lorg/anddev/andengine/engine/camera/Camera;

    iget v1, p0, Lorg/anddev/andengine/engine/Engine;->mSurfaceWidth:I

    iget v2, p0, Lorg/anddev/andengine/engine/Engine;->mSurfaceHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/anddev/andengine/engine/camera/Camera;->setSurfaceSize(IIII)V

    return-void
.end method

.method protected onUpdateScene(F)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mScene:Lorg/anddev/andengine/entity/scene/Scene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mScene:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/scene/Scene;->onUpdate(F)V

    :cond_0
    return-void
.end method

.method public registerUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public runOnUpdateThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mUpdateThreadRunnableHandler:Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setScene(Lorg/anddev/andengine/entity/scene/Scene;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/engine/Engine;->mScene:Lorg/anddev/andengine/entity/scene/Scene;

    return-void
.end method

.method public setSurfaceSize(II)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/engine/Engine;->mSurfaceWidth:I

    iput p2, p0, Lorg/anddev/andengine/engine/Engine;->mSurfaceHeight:I

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/Engine;->onUpdateCameraSurface()V

    return-void
.end method

.method public setTouchController(Lorg/anddev/andengine/input/touch/controller/ITouchController;)V
    .locals 2

    iput-object p1, p0, Lorg/anddev/andengine/engine/Engine;->mTouchController:Lorg/anddev/andengine/input/touch/controller/ITouchController;

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mTouchController:Lorg/anddev/andengine/input/touch/controller/ITouchController;

    iget-object v1, p0, Lorg/anddev/andengine/engine/Engine;->mEngineOptions:Lorg/anddev/andengine/engine/options/EngineOptions;

    invoke-virtual {v1}, Lorg/anddev/andengine/engine/options/EngineOptions;->getTouchOptions()Lorg/anddev/andengine/engine/options/TouchOptions;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/anddev/andengine/input/touch/controller/ITouchController;->applyTouchOptions(Lorg/anddev/andengine/engine/options/TouchOptions;)V

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mTouchController:Lorg/anddev/andengine/input/touch/controller/ITouchController;

    invoke-interface {v0, p0}, Lorg/anddev/andengine/input/touch/controller/ITouchController;->setTouchEventCallback(Lorg/anddev/andengine/input/touch/controller/ITouchController$ITouchEventCallback;)V

    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mRunning:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/anddev/andengine/engine/Engine;->mLastTick:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startMethodTracing(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mIsMethodTracing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mIsMethodTracing:Z

    invoke-static {p1}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mRunning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopMethodTracing()V
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mIsMethodTracing:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/engine/Engine;->mIsMethodTracing:Z

    :cond_0
    return-void
.end method

.method public unregisterUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected updateUpdateHandlers(F)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mUpdateThreadRunnableHandler:Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/handler/runnable/RunnableHandler;->onUpdate(F)V

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mUpdateHandlers:Lorg/anddev/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/handler/UpdateHandlerList;->onUpdate(F)V

    invoke-virtual {p0}, Lorg/anddev/andengine/engine/Engine;->getCamera()Lorg/anddev/andengine/engine/camera/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/engine/camera/Camera;->onUpdate(F)V

    return-void
.end method

.method public vibrate(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to enable the Vibrator before you can use it!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public vibrate([JI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/engine/Engine;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate([JI)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to enable the Vibrator before you can use it!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
