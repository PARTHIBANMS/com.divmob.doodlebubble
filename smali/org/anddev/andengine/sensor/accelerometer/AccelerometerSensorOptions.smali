.class public Lorg/anddev/andengine/sensor/accelerometer/AccelerometerSensorOptions;
.super Ljava/lang/Object;


# instance fields
.field final mSensorDelay:Lorg/anddev/andengine/sensor/SensorDelay;


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/sensor/SensorDelay;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerSensorOptions;->mSensorDelay:Lorg/anddev/andengine/sensor/SensorDelay;

    return-void
.end method


# virtual methods
.method public getSensorDelay()Lorg/anddev/andengine/sensor/SensorDelay;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerSensorOptions;->mSensorDelay:Lorg/anddev/andengine/sensor/SensorDelay;

    return-object v0
.end method
