.class public Lorg/anddev/andengine/sensor/location/LocationSensorOptions;
.super Landroid/location/Criteria;


# static fields
.field private static final MINIMUMTRIGGERDISTANCE_DEFAULT:J = 0xaL

.field private static final MINIMUMTRIGGERTIME_DEFAULT:J = 0x3e8L


# instance fields
.field private mEnabledOnly:Z

.field private mMinimumTriggerDistance:J

.field private mMinimumTriggerTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/location/Criteria;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->mEnabledOnly:Z

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->mMinimumTriggerTime:J

    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->mMinimumTriggerDistance:J

    return-void
.end method

.method public constructor <init>(IZZZIZZJJ)V
    .locals 2

    invoke-direct {p0}, Landroid/location/Criteria;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->mEnabledOnly:Z

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->mMinimumTriggerTime:J

    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->mMinimumTriggerDistance:J

    iput-boolean p7, p0, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->mEnabledOnly:Z

    iput-wide p8, p0, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->mMinimumTriggerTime:J

    iput-wide p10, p0, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->mMinimumTriggerDistance:J

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->setAccuracy(I)V

    invoke-virtual {p0, p2}, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->setAltitudeRequired(Z)V

    invoke-virtual {p0, p3}, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->setBearingRequired(Z)V

    invoke-virtual {p0, p4}, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->setCostAllowed(Z)V

    invoke-virtual {p0, p5}, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->setPowerRequirement(I)V

    invoke-virtual {p0, p6}, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->setSpeedRequired(Z)V

    return-void
.end method


# virtual methods
.method public getMinimumTriggerDistance()J
    .locals 2

    iget-wide v0, p0, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->mMinimumTriggerDistance:J

    return-wide v0
.end method

.method public getMinimumTriggerTime()J
    .locals 2

    iget-wide v0, p0, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->mMinimumTriggerTime:J

    return-wide v0
.end method

.method public isEnabledOnly()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->mEnabledOnly:Z

    return v0
.end method

.method public setEnabledOnly(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->mEnabledOnly:Z

    return-void
.end method

.method public setMinimumTriggerDistance(J)V
    .locals 0

    iput-wide p1, p0, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->mMinimumTriggerDistance:J

    return-void
.end method

.method public setMinimumTriggerTime(J)V
    .locals 0

    iput-wide p1, p0, Lorg/anddev/andengine/sensor/location/LocationSensorOptions;->mMinimumTriggerTime:J

    return-void
.end method
