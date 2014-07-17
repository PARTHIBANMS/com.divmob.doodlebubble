.class public Lorg/anddev/andengine/util/modifier/ease/EaseQuintOut;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseQuintOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/anddev/andengine/util/modifier/ease/EaseQuintOut;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseQuintOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseQuintOut;

    if-nez v0, :cond_0

    new-instance v0, Lorg/anddev/andengine/util/modifier/ease/EaseQuintOut;

    invoke-direct {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseQuintOut;-><init>()V

    sput-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseQuintOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseQuintOut;

    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseQuintOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseQuintOut;

    return-object v0
.end method

.method public static getValue(F)F
    .locals 3

    const/high16 v2, 0x3f80

    sub-float v0, p0, v2

    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 1

    div-float v0, p1, p2

    invoke-static {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseQuintOut;->getValue(F)F

    move-result v0

    return v0
.end method
