.class public Lorg/anddev/andengine/engine/camera/CameraFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPixelPerfectCamera(Landroid/content/Context;FF)Lorg/anddev/andengine/engine/camera/Camera;
    .locals 5

    const/high16 v4, 0x3f00

    invoke-static {p0}, Lorg/anddev/andengine/engine/camera/CameraFactory;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    new-instance v2, Lorg/anddev/andengine/engine/camera/Camera;

    mul-float v3, v1, v4

    sub-float v3, p1, v3

    mul-float/2addr v4, v0

    sub-float v4, p2, v4

    invoke-direct {v2, v3, v4, v1, v0}, Lorg/anddev/andengine/engine/camera/Camera;-><init>(FFFF)V

    return-object v2
.end method

.method private static getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method
