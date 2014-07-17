.class public Lorg/anddev/andengine/util/modifier/ease/EaseElasticInOut;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/constants/MathConstants;
.implements Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseElasticInOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/anddev/andengine/util/modifier/ease/EaseElasticInOut;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseElasticInOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseElasticInOut;

    if-nez v0, :cond_0

    new-instance v0, Lorg/anddev/andengine/util/modifier/ease/EaseElasticInOut;

    invoke-direct {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseElasticInOut;-><init>()V

    sput-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseElasticInOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseElasticInOut;

    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseElasticInOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseElasticInOut;

    return-object v0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 4

    const/high16 v2, 0x4000

    const/high16 v3, 0x3f00

    div-float v0, p1, p2

    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    mul-float v1, v2, p1

    mul-float/2addr v0, v2

    invoke-static {v1, p2, v0}, Lorg/anddev/andengine/util/modifier/ease/EaseElasticIn;->getValue(FFF)F

    move-result v0

    mul-float/2addr v0, v3

    :goto_0
    return v0

    :cond_0
    mul-float v1, p1, v2

    sub-float/2addr v1, p2

    mul-float/2addr v0, v2

    const/high16 v2, 0x3f80

    sub-float/2addr v0, v2

    invoke-static {v1, p2, v0}, Lorg/anddev/andengine/util/modifier/ease/EaseElasticOut;->getValue(FFF)F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v3

    goto :goto_0
.end method
