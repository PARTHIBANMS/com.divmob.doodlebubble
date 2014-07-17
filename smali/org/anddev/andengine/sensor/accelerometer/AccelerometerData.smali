.class public Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;
.super Lorg/anddev/andengine/sensor/BaseSensorData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData$IAxisSwap;
    }
.end annotation


# static fields
.field private static final AXISSWAPS:[Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData$IAxisSwap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData$IAxisSwap;

    sput-object v0, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;->AXISSWAPS:[Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData$IAxisSwap;

    sget-object v0, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;->AXISSWAPS:[Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData$IAxisSwap;

    const/4 v1, 0x0

    new-instance v2, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData$1;

    invoke-direct {v2}, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData$1;-><init>()V

    aput-object v2, v0, v1

    sget-object v0, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;->AXISSWAPS:[Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData$IAxisSwap;

    const/4 v1, 0x1

    new-instance v2, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData$2;

    invoke-direct {v2}, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData$2;-><init>()V

    aput-object v2, v0, v1

    sget-object v0, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;->AXISSWAPS:[Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData$IAxisSwap;

    const/4 v1, 0x2

    new-instance v2, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData$3;

    invoke-direct {v2}, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData$3;-><init>()V

    aput-object v2, v0, v1

    sget-object v0, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;->AXISSWAPS:[Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData$IAxisSwap;

    const/4 v1, 0x3

    new-instance v2, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData$4;

    invoke-direct {v2}, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData$4;-><init>()V

    aput-object v2, v0, v1

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lorg/anddev/andengine/sensor/BaseSensorData;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getX()F
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;->mValues:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getY()F
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;->mValues:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getZ()F
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;->mValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public setValues([F)V
    .locals 2

    invoke-super {p0, p1}, Lorg/anddev/andengine/sensor/BaseSensorData;->setValues([F)V

    sget-object v0, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;->AXISSWAPS:[Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData$IAxisSwap;

    iget v1, p0, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;->mDisplayRotation:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;->mValues:[F

    invoke-interface {v0, v1}, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData$IAxisSwap;->swapAxis([F)V

    return-void
.end method

.method public setX(F)V
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;->mValues:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public setY(F)V
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;->mValues:[F

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method public setZ(F)V
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;->mValues:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Accelerometer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/anddev/andengine/sensor/accelerometer/AccelerometerData;->mValues:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
