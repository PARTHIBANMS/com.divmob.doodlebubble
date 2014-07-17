.class public Lorg/anddev/andengine/util/modifier/ease/EaseSineInOut;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseSineInOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/anddev/andengine/util/modifier/ease/EaseSineInOut;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseSineInOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseSineInOut;

    if-nez v0, :cond_0

    new-instance v0, Lorg/anddev/andengine/util/modifier/ease/EaseSineInOut;

    invoke-direct {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseSineInOut;-><init>()V

    sput-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseSineInOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseSineInOut;

    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseSineInOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseSineInOut;

    return-object v0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 3

    div-float v0, p1, p2

    const/high16 v1, -0x4100

    const v2, 0x40490fdb

    mul-float/2addr v0, v2

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    const/high16 v2, 0x3f80

    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    return v0
.end method
