.class public Lorg/anddev/andengine/util/modifier/ease/EaseBackIn;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseBackIn; = null

.field private static final OVERSHOOT_CONSTANT:F = 1.70158f


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/anddev/andengine/util/modifier/ease/EaseBackIn;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseBackIn;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseBackIn;

    if-nez v0, :cond_0

    new-instance v0, Lorg/anddev/andengine/util/modifier/ease/EaseBackIn;

    invoke-direct {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseBackIn;-><init>()V

    sput-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseBackIn;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseBackIn;

    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseBackIn;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseBackIn;

    return-object v0
.end method

.method public static getValue(F)F
    .locals 3

    mul-float v0, p0, p0

    const v1, 0x402ce6b0

    mul-float/2addr v1, p0

    const v2, 0x3fd9cd60

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 1

    div-float v0, p1, p2

    invoke-static {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseBackIn;->getValue(F)F

    move-result v0

    return v0
.end method
