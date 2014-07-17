.class public final enum Lorg/anddev/andengine/util/HorizontalAlign;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/anddev/andengine/util/HorizontalAlign;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CENTER:Lorg/anddev/andengine/util/HorizontalAlign;

.field private static final synthetic ENUM$VALUES:[Lorg/anddev/andengine/util/HorizontalAlign;

.field public static final enum LEFT:Lorg/anddev/andengine/util/HorizontalAlign;

.field public static final enum RIGHT:Lorg/anddev/andengine/util/HorizontalAlign;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/anddev/andengine/util/HorizontalAlign;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v2}, Lorg/anddev/andengine/util/HorizontalAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/anddev/andengine/util/HorizontalAlign;->LEFT:Lorg/anddev/andengine/util/HorizontalAlign;

    new-instance v0, Lorg/anddev/andengine/util/HorizontalAlign;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v3}, Lorg/anddev/andengine/util/HorizontalAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/anddev/andengine/util/HorizontalAlign;->CENTER:Lorg/anddev/andengine/util/HorizontalAlign;

    new-instance v0, Lorg/anddev/andengine/util/HorizontalAlign;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lorg/anddev/andengine/util/HorizontalAlign;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/anddev/andengine/util/HorizontalAlign;->RIGHT:Lorg/anddev/andengine/util/HorizontalAlign;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/anddev/andengine/util/HorizontalAlign;

    sget-object v1, Lorg/anddev/andengine/util/HorizontalAlign;->LEFT:Lorg/anddev/andengine/util/HorizontalAlign;

    aput-object v1, v0, v2

    sget-object v1, Lorg/anddev/andengine/util/HorizontalAlign;->CENTER:Lorg/anddev/andengine/util/HorizontalAlign;

    aput-object v1, v0, v3

    sget-object v1, Lorg/anddev/andengine/util/HorizontalAlign;->RIGHT:Lorg/anddev/andengine/util/HorizontalAlign;

    aput-object v1, v0, v4

    sput-object v0, Lorg/anddev/andengine/util/HorizontalAlign;->ENUM$VALUES:[Lorg/anddev/andengine/util/HorizontalAlign;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/anddev/andengine/util/HorizontalAlign;
    .locals 1

    const-class v0, Lorg/anddev/andengine/util/HorizontalAlign;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/util/HorizontalAlign;

    return-object v0
.end method

.method public static values()[Lorg/anddev/andengine/util/HorizontalAlign;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/anddev/andengine/util/HorizontalAlign;->ENUM$VALUES:[Lorg/anddev/andengine/util/HorizontalAlign;

    array-length v1, v0

    new-array v2, v1, [Lorg/anddev/andengine/util/HorizontalAlign;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
