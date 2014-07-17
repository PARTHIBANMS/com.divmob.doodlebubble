.class public final enum Lorg/anddev/andengine/util/path/Direction;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/anddev/andengine/util/path/Direction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DOWN:Lorg/anddev/andengine/util/path/Direction;

.field private static final synthetic ENUM$VALUES:[Lorg/anddev/andengine/util/path/Direction;

.field public static final enum LEFT:Lorg/anddev/andengine/util/path/Direction;

.field public static final enum RIGHT:Lorg/anddev/andengine/util/path/Direction;

.field public static final enum UP:Lorg/anddev/andengine/util/path/Direction;


# instance fields
.field private final mDeltaX:I

.field private final mDeltaY:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/anddev/andengine/util/path/Direction;

    const-string v1, "UP"

    invoke-direct {v0, v1, v2, v2, v4}, Lorg/anddev/andengine/util/path/Direction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/anddev/andengine/util/path/Direction;->UP:Lorg/anddev/andengine/util/path/Direction;

    new-instance v0, Lorg/anddev/andengine/util/path/Direction;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3, v2, v3}, Lorg/anddev/andengine/util/path/Direction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/anddev/andengine/util/path/Direction;->DOWN:Lorg/anddev/andengine/util/path/Direction;

    new-instance v0, Lorg/anddev/andengine/util/path/Direction;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v5, v4, v2}, Lorg/anddev/andengine/util/path/Direction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/anddev/andengine/util/path/Direction;->LEFT:Lorg/anddev/andengine/util/path/Direction;

    new-instance v0, Lorg/anddev/andengine/util/path/Direction;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v6, v3, v2}, Lorg/anddev/andengine/util/path/Direction;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lorg/anddev/andengine/util/path/Direction;->RIGHT:Lorg/anddev/andengine/util/path/Direction;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/anddev/andengine/util/path/Direction;

    sget-object v1, Lorg/anddev/andengine/util/path/Direction;->UP:Lorg/anddev/andengine/util/path/Direction;

    aput-object v1, v0, v2

    sget-object v1, Lorg/anddev/andengine/util/path/Direction;->DOWN:Lorg/anddev/andengine/util/path/Direction;

    aput-object v1, v0, v3

    sget-object v1, Lorg/anddev/andengine/util/path/Direction;->LEFT:Lorg/anddev/andengine/util/path/Direction;

    aput-object v1, v0, v5

    sget-object v1, Lorg/anddev/andengine/util/path/Direction;->RIGHT:Lorg/anddev/andengine/util/path/Direction;

    aput-object v1, v0, v6

    sput-object v0, Lorg/anddev/andengine/util/path/Direction;->ENUM$VALUES:[Lorg/anddev/andengine/util/path/Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/anddev/andengine/util/path/Direction;->mDeltaX:I

    iput p4, p0, Lorg/anddev/andengine/util/path/Direction;->mDeltaY:I

    return-void
.end method

.method public static fromDelta(II)Lorg/anddev/andengine/util/path/Direction;
    .locals 2

    const/4 v1, 0x1

    const/4 v0, -0x1

    if-nez p0, :cond_1

    if-ne p1, v1, :cond_0

    sget-object v0, Lorg/anddev/andengine/util/path/Direction;->DOWN:Lorg/anddev/andengine/util/path/Direction;

    :goto_0
    return-object v0

    :cond_0
    if-ne p1, v0, :cond_3

    sget-object v0, Lorg/anddev/andengine/util/path/Direction;->UP:Lorg/anddev/andengine/util/path/Direction;

    goto :goto_0

    :cond_1
    if-nez p1, :cond_3

    if-ne p0, v1, :cond_2

    sget-object v0, Lorg/anddev/andengine/util/path/Direction;->RIGHT:Lorg/anddev/andengine/util/path/Direction;

    goto :goto_0

    :cond_2
    if-ne p0, v0, :cond_3

    sget-object v0, Lorg/anddev/andengine/util/path/Direction;->LEFT:Lorg/anddev/andengine/util/path/Direction;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/anddev/andengine/util/path/Direction;
    .locals 1

    const-class v0, Lorg/anddev/andengine/util/path/Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/util/path/Direction;

    return-object v0
.end method

.method public static values()[Lorg/anddev/andengine/util/path/Direction;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/anddev/andengine/util/path/Direction;->ENUM$VALUES:[Lorg/anddev/andengine/util/path/Direction;

    array-length v1, v0

    new-array v2, v1, [Lorg/anddev/andengine/util/path/Direction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getDeltaX()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/util/path/Direction;->mDeltaX:I

    return v0
.end method

.method public getDeltaY()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/util/path/Direction;->mDeltaY:I

    return v0
.end method
