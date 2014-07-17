.class public Lorg/anddev/andengine/util/modifier/ease/EaseBackOut;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseBackOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/anddev/andengine/util/modifier/ease/EaseBackOut;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseBackOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseBackOut;

    if-nez v0, :cond_0

    new-instance v0, Lorg/anddev/andengine/util/modifier/ease/EaseBackOut;

    invoke-direct {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseBackOut;-><init>()V

    sput-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseBackOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseBackOut;

    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseBackOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseBackOut;

    return-object v0
.end method

.method public static getValue(F)F
    .locals 4

    const/high16 v3, 0x3f80

    sub-float v0, p0, v3

    mul-float v1, v0, v0

    const v2, 0x402ce6b0

    mul-float/2addr v0, v2

    const v2, 0x3fd9cd60

    add-float/2addr v0, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    return v0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 1

    div-float v0, p1, p2

    invoke-static {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseBackOut;->getValue(F)F

    move-result v0

    return v0
.end method
