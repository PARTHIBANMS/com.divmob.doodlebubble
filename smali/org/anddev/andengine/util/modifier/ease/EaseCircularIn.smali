.class public Lorg/anddev/andengine/util/modifier/ease/EaseCircularIn;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseCircularIn;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/anddev/andengine/util/modifier/ease/EaseCircularIn;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseCircularIn;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseCircularIn;

    if-nez v0, :cond_0

    new-instance v0, Lorg/anddev/andengine/util/modifier/ease/EaseCircularIn;

    invoke-direct {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseCircularIn;-><init>()V

    sput-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseCircularIn;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseCircularIn;

    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseCircularIn;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseCircularIn;

    return-object v0
.end method

.method public static getValue(F)F
    .locals 2

    const/high16 v1, 0x3f80

    mul-float v0, p0, p0

    sub-float v0, v1, v0

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    sub-float/2addr v0, v1

    neg-float v0, v0

    return v0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 1

    div-float v0, p1, p2

    invoke-static {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseCircularIn;->getValue(F)F

    move-result v0

    return v0
.end method
