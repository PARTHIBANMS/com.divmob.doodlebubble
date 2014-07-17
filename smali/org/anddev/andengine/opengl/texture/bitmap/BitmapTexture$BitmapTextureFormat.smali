.class public final enum Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BitmapTextureFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$anddev$andengine$opengl$texture$Texture$PixelFormat:[I

.field public static final enum A_8:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

.field private static final synthetic ENUM$VALUES:[Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

.field public static final enum RGBA_4444:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

.field public static final enum RGBA_8888:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

.field public static final enum RGB_565:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;


# instance fields
.field private final mBitmapConfig:Landroid/graphics/Bitmap$Config;

.field private final mPixelFormat:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;


# direct methods
.method static synthetic $SWITCH_TABLE$org$anddev$andengine$opengl$texture$Texture$PixelFormat()[I
    .locals 3

    sget-object v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->$SWITCH_TABLE$org$anddev$andengine$opengl$texture$Texture$PixelFormat:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->values()[Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->AI_88:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->A_8:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->I_8:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGBA_4444:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGBA_5551:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGB_565:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->UNDEFINED:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v1}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->$SWITCH_TABLE$org$anddev$andengine$opengl$texture$Texture$PixelFormat:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    const-string v1, "RGBA_8888"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sget-object v3, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap$Config;Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;)V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    new-instance v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    const-string v1, "RGB_565"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sget-object v3, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGB_565:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap$Config;Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;)V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGB_565:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    new-instance v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    const-string v1, "RGBA_4444"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    sget-object v3, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->RGBA_4444:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap$Config;Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;)V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_4444:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    new-instance v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    const-string v1, "A_8"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    sget-object v3, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->A_8:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap$Config;Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;)V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->A_8:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    sget-object v1, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    aput-object v1, v0, v4

    sget-object v1, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGB_565:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    aput-object v1, v0, v5

    sget-object v1, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_4444:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    aput-object v1, v0, v6

    sget-object v1, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->A_8:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    aput-object v1, v0, v7

    sput-object v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->ENUM$VALUES:[Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/graphics/Bitmap$Config;Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    iput-object p4, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->mPixelFormat:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    return-void
.end method

.method public static fromPixelFormat(Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;)Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;
    .locals 3

    invoke-static {}, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->$SWITCH_TABLE$org$anddev$andengine$opengl$texture$Texture$PixelFormat()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_8888:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    :goto_0
    return-object v0

    :pswitch_2
    sget-object v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGBA_4444:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->RGB_565:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->A_8:Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;
    .locals 1

    const-class v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    return-object v0
.end method

.method public static values()[Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->ENUM$VALUES:[Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    array-length v1, v0

    new-array v2, v1, [Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->mBitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getPixelFormat()Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/bitmap/BitmapTexture$BitmapTextureFormat;->mPixelFormat:Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;

    return-object v0
.end method
