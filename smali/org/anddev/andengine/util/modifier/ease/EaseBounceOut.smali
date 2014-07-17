.class public Lorg/anddev/andengine/util/modifier/ease/EaseBounceOut;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseBounceOut;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/anddev/andengine/util/modifier/ease/EaseBounceOut;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseBounceOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseBounceOut;

    if-nez v0, :cond_0

    new-instance v0, Lorg/anddev/andengine/util/modifier/ease/EaseBounceOut;

    invoke-direct {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseBounceOut;-><init>()V

    sput-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseBounceOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseBounceOut;

    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseBounceOut;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseBounceOut;

    return-object v0
.end method

.method public static getValue(F)F
    .locals 2

    const/high16 v1, 0x40f2

    const v0, 0x3eba2e8c

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    mul-float v0, v1, p0

    mul-float/2addr v0, p0

    :goto_0
    return v0

    :cond_0
    const v0, 0x3f3a2e8c

    cmpg-float v0, p0, v0

    if-gez v0, :cond_1

    const v0, 0x3f0ba2e9

    sub-float v0, p0, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f40

    add-float/2addr v0, v1

    goto :goto_0

    :cond_1
    const v0, 0x3f68ba2f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_2

    const v0, 0x3f51745d

    sub-float v0, p0, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f70

    add-float/2addr v0, v1

    goto :goto_0

    :cond_2
    const v0, 0x3f745d17

    sub-float v0, p0, v0

    mul-float/2addr v1, v0

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f7c

    add-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 1

    div-float v0, p1, p2

    invoke-static {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseBounceOut;->getValue(F)F

    move-result v0

    return v0
.end method
