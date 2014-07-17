.class public final enum Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/opengl/texture/Texture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PixelFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AI_88:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

.field public static final enum A_8:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

.field private static final synthetic ENUM$VALUES:[Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

.field public static final enum I_8:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

.field public static final enum RGBA_4444:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

.field public static final enum RGBA_5551:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

.field public static final enum RGBA_8888:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

.field public static final enum RGB_565:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

.field public static final enum UNDEFINED:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;


# instance fields
.field private final mBitsPerPixel:I

.field private final mGLFormat:I

.field private final mGLType:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0x1908

    const/16 v8, 0x8

    const/4 v3, -0x1

    const/16 v7, 0x1401

    const/16 v6, 0x10

    new-instance v0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->UNDEFINED:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    new-instance v0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    const-string v1, "RGBA_4444"

    const/4 v2, 0x1

    const v4, 0x8033

    move v3, v9

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGBA_4444:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    new-instance v0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    const-string v1, "RGBA_5551"

    const/4 v2, 0x2

    const v4, 0x8034

    move v3, v9

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGBA_5551:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    new-instance v0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    const-string v1, "RGBA_8888"

    const/4 v2, 0x3

    const/16 v5, 0x20

    move v3, v9

    move v4, v7

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    new-instance v0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    const-string v1, "RGB_565"

    const/4 v2, 0x4

    const/16 v3, 0x1907

    const v4, 0x8363

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGB_565:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    new-instance v0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    const-string v1, "A_8"

    const/4 v2, 0x5

    const/16 v3, 0x1906

    move v4, v7

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->A_8:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    new-instance v0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    const-string v1, "I_8"

    const/4 v2, 0x6

    const/16 v3, 0x1909

    move v4, v7

    move v5, v8

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->I_8:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    new-instance v0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    const-string v1, "AI_88"

    const/4 v2, 0x7

    const/16 v3, 0x190a

    move v4, v7

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->AI_88:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    new-array v0, v8, [Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    const/4 v1, 0x0

    sget-object v2, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->UNDEFINED:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGBA_4444:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGBA_5551:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGB_565:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->A_8:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->I_8:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->AI_88:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    aput-object v2, v0, v1

    sput-object v0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ENUM$VALUES:[Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->mGLFormat:I

    iput p4, p0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->mGLType:I

    iput p5, p0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->mBitsPerPixel:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;
    .locals 1

    const-class v0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    return-object v0
.end method

.method public static values()[Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ENUM$VALUES:[Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    array-length v1, v0

    new-array v2, v1, [Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getBitsPerPixel()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->mBitsPerPixel:I

    return v0
.end method

.method public getGLFormat()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->mGLFormat:I

    return v0
.end method

.method public getGLType()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->mGLType:I

    return v0
.end method
