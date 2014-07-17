.class public Lorg/anddev/andengine/sensor/orientation/OrientationData;
.super Lorg/anddev/andengine/sensor/BaseSensorData;


# instance fields
.field private final mAccelerometerValues:[F

.field private mMagneticFieldAccuracy:I

.field private final mMagneticFieldValues:[F

.field private final mRotationMatrix:[F


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lorg/anddev/andengine/sensor/BaseSensorData;-><init>(II)V

    new-array v0, v1, [F

    iput-object v0, p0, Lorg/anddev/andengine/sensor/orientation/OrientationData;->mAccelerometerValues:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lorg/anddev/andengine/sensor/orientation/OrientationData;->mMagneticFieldValues:[F

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/anddev/andengine/sensor/orientation/OrientationData;->mRotationMatrix:[F

    return-void
.end method

.method private updateOrientation()V
    .locals 4

    iget-object v0, p0, Lorg/anddev/andengine/sensor/orientation/OrientationData;->mRotationMatrix:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/anddev/andengine/sensor/orientation/OrientationData;->mAccelerometerValues:[F

    iget-object v3, p0, Lorg/anddev/andengine/sensor/orientation/OrientationData;->mMagneticFieldValues:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    iget v0, p0, Lorg/anddev/andengine/sensor/orientation/OrientationData;->mDisplayRotation:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v1, p0, Lorg/anddev/andengine/sensor/orientation/OrientationData;->mValues:[F

    iget-object v0, p0, Lorg/anddev/andengine/sensor/orientation/OrientationData;->mRotationMatrix:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-gez v0, :cond_0

    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/anddev/andengine/sensor/orientation/OrientationData;->mRotationMatrix:[F

    const/4 v1, 0x2

    const/16 v2, 0x81

    iget-object v3, p0, Lorg/anddev/andengine/sensor/orientation/OrientationData;->mRotationMatrix:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    :cond_0
    aget v2, v1, v0

    const v3, 0x42652ee0

    mul-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getAccelerometerAccuracy()I
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/sensor/orientation/OrientationData;->getAccuracy()I

    move-result v0

    return v0
.end method

.method public getMagneticFieldAccuracy()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/sensor/orientation/OrientationData;->mMagneticFieldAccuracy:I

    return v0
.end method

.method public getPitch()F
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/sensor/BaseSensorData;->mValues:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getRoll()F
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/sensor/BaseSensorData;->mValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getYaw()F
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/sensor/BaseSensorData;->mValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public setAccelerometerAccuracy(I)V
    .locals 0

    invoke-super {p0, p1}, Lorg/anddev/andengine/sensor/BaseSensorData;->setAccuracy(I)V

    return-void
.end method

.method public setAccelerometerValues([F)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/anddev/andengine/sensor/orientation/OrientationData;->mAccelerometerValues:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lorg/anddev/andengine/sensor/orientation/OrientationData;->updateOrientation()V

    return-void
.end method

.method public setAccuracy(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lorg/anddev/andengine/sensor/BaseSensorData;->setAccuracy(I)V

    return-void
.end method

.method public setMagneticFieldAccuracy(I)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/sensor/orientation/OrientationData;->mMagneticFieldAccuracy:I

    return-void
.end method

.method public setMagneticFieldValues([F)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/anddev/andengine/sensor/orientation/OrientationData;->mMagneticFieldValues:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lorg/anddev/andengine/sensor/orientation/OrientationData;->updateOrientation()V

    return-void
.end method

.method public setValues([F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lorg/anddev/andengine/sensor/BaseSensorData;->setValues([F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Orientation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/anddev/andengine/sensor/orientation/OrientationData;->mValues:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
