.class public Lorg/anddev/andengine/util/DataUtils;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/constants/DataConstants;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unsignedByteToInt(B)I
    .locals 1

    and-int/lit16 v0, p0, 0xff

    return v0
.end method
