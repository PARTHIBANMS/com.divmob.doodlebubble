.class public Lorg/anddev/andengine/util/modifier/ease/EaseCubicInOut;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseCubicInOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/anddev/andengine/util/modifier/ease/EaseCubicInOut;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseCubicInOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseCubicInOut;

    if-nez v0, :cond_0

    new-instance v0, Lorg/anddev/andengine/util/modifier/ease/EaseCubicInOut;

    invoke-direct {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseCubicInOut;-><init>()V

    sput-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseCubicInOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseCubicInOut;

    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseCubicInOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseCubicInOut;

    return-object v0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 4

    const/high16 v3, 0x4000

    const/high16 v2, 0x3f00

    div-float v0, p1, p2

    cmpg-float v1, v0, v2

    if-gez v1, :cond_0

    mul-float/2addr v0, v3

    invoke-static {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseCubicIn;->getValue(F)F

    move-result v0

    mul-float/2addr v0, v2

    :goto_0
    return v0

    :cond_0
    mul-float/2addr v0, v3

    const/high16 v1, 0x3f80

    sub-float/2addr v0, v1

    invoke-static {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseCubicOut;->getValue(F)F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v2

    goto :goto_0
.end method
