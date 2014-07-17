.class public Lorg/anddev/andengine/sensor/BaseSensorData;
.super Ljava/lang/Object;


# instance fields
.field protected mAccuracy:I

.field protected mDisplayRotation:I

.field protected final mValues:[F


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [F

    iput-object v0, p0, Lorg/anddev/andengine/sensor/BaseSensorData;->mValues:[F

    iput p2, p0, Lorg/anddev/andengine/sensor/BaseSensorData;->mDisplayRotation:I

    return-void
.end method


# virtual methods
.method public getAccuracy()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/sensor/BaseSensorData;->mAccuracy:I

    return v0
.end method

.method public getValues()[F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/sensor/BaseSensorData;->mValues:[F

    return-object v0
.end method

.method public setAccuracy(I)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/sensor/BaseSensorData;->mAccuracy:I

    return-void
.end method

.method public setValues([F)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/anddev/andengine/sensor/BaseSensorData;->mValues:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Values: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/anddev/andengine/sensor/BaseSensorData;->mValues:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
