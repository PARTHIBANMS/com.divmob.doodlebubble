.class public Lorg/anddev/andengine/util/modifier/ease/EaseStrongIn;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseStrongIn;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/anddev/andengine/util/modifier/ease/EaseStrongIn;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseStrongIn;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseStrongIn;

    if-nez v0, :cond_0

    new-instance v0, Lorg/anddev/andengine/util/modifier/ease/EaseStrongIn;

    invoke-direct {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseStrongIn;-><init>()V

    sput-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseStrongIn;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseStrongIn;

    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseStrongIn;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseStrongIn;

    return-object v0
.end method

.method public static getValue(F)F
    .locals 1

    mul-float v0, p0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 1

    div-float v0, p1, p2

    invoke-static {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseStrongIn;->getValue(F)F

    move-result v0

    return v0
.end method
