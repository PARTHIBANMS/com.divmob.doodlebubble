.class public Lorg/anddev/andengine/util/modifier/ease/EaseLinear;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;


# static fields
.field private static INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseLinear;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/anddev/andengine/util/modifier/ease/EaseLinear;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseLinear;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseLinear;

    if-nez v0, :cond_0

    new-instance v0, Lorg/anddev/andengine/util/modifier/ease/EaseLinear;

    invoke-direct {v0}, Lorg/anddev/andengine/util/modifier/ease/EaseLinear;-><init>()V

    sput-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseLinear;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseLinear;

    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/modifier/ease/EaseLinear;->INSTANCE:Lorg/anddev/andengine/util/modifier/ease/EaseLinear;

    return-object v0
.end method


# virtual methods
.method public getPercentage(FF)F
    .locals 1

    div-float v0, p1, p2

    return v0
.end method
