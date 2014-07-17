.class public Lorg/anddev/andengine/util/modifier/ease/EaseBounceIn;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseBounceIn;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/anddev/andengine/util/modifier/ease/EaseBounceIn;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseBounceIn;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseBounceIn;

    if-nez v0, :cond_0

    new-instance v0, Lorg/anddev/andengine/util/modifier/ease/EaseBounceIn;

    invoke-direct {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseBounceIn;-><init>()V

    sput-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseBounceIn;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseBounceIn;

    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseBounceIn;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseBounceIn;

    return-object v0
.end method

.method public static getValue(F)F
    .locals 2

    const/high16 v1, 0x3f80

    sub-float v0, v1, p0

    invoke-static {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseBounceOut;->getValue(F)F

    move-result v0

    sub-float v0, v1, v0

    return v0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 1

    div-float v0, p1, p2

    invoke-static {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseBounceIn;->getValue(F)F

    move-result v0

    return v0
.end method
