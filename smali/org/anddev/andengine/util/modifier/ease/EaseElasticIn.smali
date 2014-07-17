.class public Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/constants/MathConstants;
.implements Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;

    if-nez v0, :cond_0

    new-instance v0, Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;

    invoke-direct {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;-><init>()V

    sput-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;

    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;

    return-object v0
.end method

.method public static getValue(FFF)F
    .locals 7

    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    cmpl-float v2, p0, v0

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    cmpl-float v0, p0, p1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const v0, 0x3e99999a

    mul-float/2addr v0, p1

    const/high16 v2, 0x4080

    div-float v2, v0, v2

    sub-float v1, p2, v1

    const-wide/high16 v3, 0x4000

    const/high16 v5, 0x4120

    mul-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    neg-float v3, v3

    mul-float/2addr v1, p1

    sub-float/2addr v1, v2

    const v2, 0x40c90fdb

    mul-float/2addr v1, v2

    div-float v0, v1, v0

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    move-result v0

    mul-float/2addr v0, v3

    goto :goto_0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 1

    div-float v0, p1, p2

    invoke-static {p1, p2, v0}, Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;->getValue(FFF)F

    move-result v0

    return v0
.end method
