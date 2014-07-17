.class public Lcom/divmob/maegame/g/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/divmob/maegame/g/e;->a:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0xfft
        0x0t 0x0t 0xfft 0xfft
        0xfft 0x0t 0xfft 0xfft
        0x0t 0xfft 0x0t 0xfft
        0xfft 0x0t 0x0t 0xfft
        0x0t 0x0t 0x80t 0xfft
        0x80t 0x0t 0x80t 0xfft
        0x0t 0x80t 0x0t 0xfft
        0x0t 0x80t 0x80t 0xfft
        0x80t 0x0t 0x0t 0xfft
        0x80t 0x80t 0x0t 0xfft
        0x0t 0x66t 0xfft 0xfft
        0x0t 0x33t 0xfft 0xfft
        0x66t 0x0t 0xfft 0xfft
        0x0t 0x99t 0xfft 0xfft
        0x33t 0x99t 0x0t 0xfft
        0xc0t 0xc0t 0xc0t 0xfft
        0x80t 0x80t 0x80t 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FLorg/anddev/andengine/entity/sprite/BaseSprite;F)V
    .locals 2

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v0

    sub-float v0, p2, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    add-float/2addr v0, p0

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setPosition(FF)V

    return-void
.end method

.method public static a(FLorg/anddev/andengine/entity/text/Text;F)V
    .locals 2

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/text/Text;->getWidth()F

    move-result v0

    sub-float v0, p2, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    add-float/2addr v0, p0

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/text/Text;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/anddev/andengine/entity/text/Text;->setPosition(FF)V

    return-void
.end method

.method public static a(Lorg/anddev/andengine/entity/Entity;)V
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/divmob/maegame/g/e;->a:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v0

    sget-object v1, Lcom/divmob/maegame/g/e;->a:[I

    aget v0, v1, v0

    invoke-static {p0, v0}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/Entity;I)V

    return-void
.end method

.method public static a(Lorg/anddev/andengine/entity/Entity;I)V
    .locals 4

    const/high16 v3, 0x437f

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lorg/anddev/andengine/entity/Entity;->setColor(FFF)V

    return-void
.end method

.method public static a(Lorg/anddev/andengine/entity/primitive/Rectangle;II)V
    .locals 4

    const/high16 v3, 0x4000

    int-to-float v0, p1

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/primitive/Rectangle;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    int-to-float v1, p2

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/primitive/Rectangle;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/entity/primitive/Rectangle;->setPosition(FF)V

    return-void
.end method

.method public static a(Lorg/anddev/andengine/entity/sprite/BaseSprite;F)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/divmob/maegame/g/e;->a(FLorg/anddev/andengine/entity/sprite/BaseSprite;F)V

    return-void
.end method

.method public static a(Lorg/anddev/andengine/entity/sprite/BaseSprite;II)V
    .locals 4

    const/high16 v3, 0x4000

    int-to-float v0, p1

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getWidth()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    int-to-float v1, p2

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->getHeight()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/entity/sprite/BaseSprite;->setPosition(FF)V

    return-void
.end method

.method public static a(Lorg/anddev/andengine/entity/text/Text;F)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/divmob/maegame/g/e;->a(FLorg/anddev/andengine/entity/text/Text;F)V

    return-void
.end method

.method public static b(Lorg/anddev/andengine/entity/Entity;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/Entity;->setVisible(Z)V

    return-void
.end method

.method public static b(Lorg/anddev/andengine/entity/Entity;I)V
    .locals 4

    const/high16 v3, 0x437f

    sget-object v0, Lcom/divmob/maegame/g/e;->a:[I

    aget v0, v0, p1

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    invoke-virtual {p0, v1, v2, v0}, Lorg/anddev/andengine/entity/Entity;->setColor(FFF)V

    return-void
.end method

.method public static c(Lorg/anddev/andengine/entity/Entity;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/Entity;->setVisible(Z)V

    return-void
.end method

.method public static d(Lorg/anddev/andengine/entity/Entity;)V
    .locals 1

    invoke-static {p0}, Lcom/divmob/maegame/g/e;->b(Lorg/anddev/andengine/entity/Entity;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/Entity;->setIgnoreUpdate(Z)V

    return-void
.end method

.method public static e(Lorg/anddev/andengine/entity/Entity;)V
    .locals 1

    invoke-static {p0}, Lcom/divmob/maegame/g/e;->c(Lorg/anddev/andengine/entity/Entity;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/Entity;->setIgnoreUpdate(Z)V

    return-void
.end method
