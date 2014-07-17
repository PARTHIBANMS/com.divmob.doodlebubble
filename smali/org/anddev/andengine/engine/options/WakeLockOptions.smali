.class public final enum Lorg/anddev/andengine/engine/options/WakeLockOptions;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/anddev/andengine/engine/options/WakeLockOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BRIGHT:Lorg/anddev/andengine/engine/options/WakeLockOptions;

.field private static final synthetic ENUM$VALUES:[Lorg/anddev/andengine/engine/options/WakeLockOptions;

.field public static final enum SCREEN_BRIGHT:Lorg/anddev/andengine/engine/options/WakeLockOptions;

.field public static final enum SCREEN_DIM:Lorg/anddev/andengine/engine/options/WakeLockOptions;

.field public static final enum SCREEN_ON:Lorg/anddev/andengine/engine/options/WakeLockOptions;


# instance fields
.field private final mFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/anddev/andengine/engine/options/WakeLockOptions;

    const-string v1, "BRIGHT"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v3, v2}, Lorg/anddev/andengine/engine/options/WakeLockOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/anddev/andengine/engine/options/WakeLockOptions;->BRIGHT:Lorg/anddev/andengine/engine/options/WakeLockOptions;

    new-instance v0, Lorg/anddev/andengine/engine/options/WakeLockOptions;

    const-string v1, "SCREEN_BRIGHT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v4, v2}, Lorg/anddev/andengine/engine/options/WakeLockOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/anddev/andengine/engine/options/WakeLockOptions;->SCREEN_BRIGHT:Lorg/anddev/andengine/engine/options/WakeLockOptions;

    new-instance v0, Lorg/anddev/andengine/engine/options/WakeLockOptions;

    const-string v1, "SCREEN_DIM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lorg/anddev/andengine/engine/options/WakeLockOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/anddev/andengine/engine/options/WakeLockOptions;->SCREEN_DIM:Lorg/anddev/andengine/engine/options/WakeLockOptions;

    new-instance v0, Lorg/anddev/andengine/engine/options/WakeLockOptions;

    const-string v1, "SCREEN_ON"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v6, v2}, Lorg/anddev/andengine/engine/options/WakeLockOptions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/anddev/andengine/engine/options/WakeLockOptions;->SCREEN_ON:Lorg/anddev/andengine/engine/options/WakeLockOptions;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/anddev/andengine/engine/options/WakeLockOptions;

    sget-object v1, Lorg/anddev/andengine/engine/options/WakeLockOptions;->BRIGHT:Lorg/anddev/andengine/engine/options/WakeLockOptions;

    aput-object v1, v0, v3

    sget-object v1, Lorg/anddev/andengine/engine/options/WakeLockOptions;->SCREEN_BRIGHT:Lorg/anddev/andengine/engine/options/WakeLockOptions;

    aput-object v1, v0, v4

    sget-object v1, Lorg/anddev/andengine/engine/options/WakeLockOptions;->SCREEN_DIM:Lorg/anddev/andengine/engine/options/WakeLockOptions;

    aput-object v1, v0, v5

    sget-object v1, Lorg/anddev/andengine/engine/options/WakeLockOptions;->SCREEN_ON:Lorg/anddev/andengine/engine/options/WakeLockOptions;

    aput-object v1, v0, v6

    sput-object v0, Lorg/anddev/andengine/engine/options/WakeLockOptions;->ENUM$VALUES:[Lorg/anddev/andengine/engine/options/WakeLockOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/anddev/andengine/engine/options/WakeLockOptions;->mFlag:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/anddev/andengine/engine/options/WakeLockOptions;
    .locals 1

    const-class v0, Lorg/anddev/andengine/engine/options/WakeLockOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/engine/options/WakeLockOptions;

    return-object v0
.end method

.method public static values()[Lorg/anddev/andengine/engine/options/WakeLockOptions;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/anddev/andengine/engine/options/WakeLockOptions;->ENUM$VALUES:[Lorg/anddev/andengine/engine/options/WakeLockOptions;

    array-length v1, v0

    new-array v2, v1, [Lorg/anddev/andengine/engine/options/WakeLockOptions;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getFlag()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/engine/options/WakeLockOptions;->mFlag:I

    return v0
.end method
