.class public final enum Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LinearGradientDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOMLEFT_TO_TOPRIGHT:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

.field public static final enum BOTTOMRIGHT_TO_TOPLEFT:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

.field public static final enum BOTTOM_TO_TOP:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

.field private static final synthetic ENUM$VALUES:[Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

.field public static final enum LEFT_TO_RIGHT:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

.field public static final enum RIGHT_TO_LEFT:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

.field public static final enum TOPLEFT_TO_BOTTOMRIGHT:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

.field public static final enum TOPRIGHT_TO_BOTTOMLEFT:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

.field public static final enum TOP_TO_BOTTOM:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;


# instance fields
.field private final mFromX:I

.field private final mFromY:I

.field private final mToX:I

.field private final mToY:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    const-string v1, "LEFT_TO_RIGHT"

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->LEFT_TO_RIGHT:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    new-instance v4, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    const-string v5, "RIGHT_TO_LEFT"

    move v6, v3

    move v7, v2

    move v8, v2

    move v9, v3

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;-><init>(Ljava/lang/String;IIIII)V

    sput-object v4, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->RIGHT_TO_LEFT:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    new-instance v4, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    const-string v5, "BOTTOM_TO_TOP"

    move v6, v11

    move v7, v2

    move v8, v3

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;-><init>(Ljava/lang/String;IIIII)V

    sput-object v4, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->BOTTOM_TO_TOP:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    new-instance v4, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    const-string v5, "TOP_TO_BOTTOM"

    move v6, v12

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v3

    invoke-direct/range {v4 .. v10}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;-><init>(Ljava/lang/String;IIIII)V

    sput-object v4, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->TOP_TO_BOTTOM:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    new-instance v4, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    const-string v5, "TOPLEFT_TO_BOTTOMRIGHT"

    move v6, v13

    move v7, v2

    move v8, v2

    move v9, v3

    move v10, v3

    invoke-direct/range {v4 .. v10}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;-><init>(Ljava/lang/String;IIIII)V

    sput-object v4, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->TOPLEFT_TO_BOTTOMRIGHT:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    new-instance v4, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    const-string v5, "BOTTOMRIGHT_TO_TOPLEFT"

    const/4 v6, 0x5

    move v7, v3

    move v8, v3

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;-><init>(Ljava/lang/String;IIIII)V

    sput-object v4, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->BOTTOMRIGHT_TO_TOPLEFT:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    new-instance v4, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    const-string v5, "TOPRIGHT_TO_BOTTOMLEFT"

    const/4 v6, 0x6

    move v7, v3

    move v8, v2

    move v9, v2

    move v10, v3

    invoke-direct/range {v4 .. v10}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;-><init>(Ljava/lang/String;IIIII)V

    sput-object v4, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->TOPRIGHT_TO_BOTTOMLEFT:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    new-instance v4, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    const-string v5, "BOTTOMLEFT_TO_TOPRIGHT"

    const/4 v6, 0x7

    move v7, v2

    move v8, v3

    move v9, v3

    move v10, v2

    invoke-direct/range {v4 .. v10}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;-><init>(Ljava/lang/String;IIIII)V

    sput-object v4, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->BOTTOMLEFT_TO_TOPRIGHT:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->LEFT_TO_RIGHT:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    aput-object v1, v0, v2

    sget-object v1, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->RIGHT_TO_LEFT:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    aput-object v1, v0, v3

    sget-object v1, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->BOTTOM_TO_TOP:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    aput-object v1, v0, v11

    sget-object v1, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->TOP_TO_BOTTOM:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    aput-object v1, v0, v12

    sget-object v1, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->TOPLEFT_TO_BOTTOMRIGHT:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    aput-object v1, v0, v13

    const/4 v1, 0x5

    sget-object v2, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->BOTTOMRIGHT_TO_TOPLEFT:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->TOPRIGHT_TO_BOTTOMLEFT:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->BOTTOMLEFT_TO_TOPRIGHT:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    aput-object v2, v0, v1

    sput-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->ENUM$VALUES:[Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->mFromX:I

    iput p4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->mFromY:I

    iput p5, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->mToX:I

    iput p6, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->mToY:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;
    .locals 1

    const-class v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    return-object v0
.end method

.method public static values()[Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->ENUM$VALUES:[Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    array-length v1, v0

    new-array v2, v1, [Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method final getFromX(I)I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->mFromX:I

    mul-int/2addr v0, p1

    return v0
.end method

.method final getFromY(I)I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->mFromY:I

    mul-int/2addr v0, p1

    return v0
.end method

.method final getToX(I)I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->mToX:I

    mul-int/2addr v0, p1

    return v0
.end method

.method final getToY(I)I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection;->mToY:I

    mul-int/2addr v0, p1

    return v0
.end method
