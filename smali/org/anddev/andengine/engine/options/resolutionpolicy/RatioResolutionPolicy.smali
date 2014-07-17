.class public Lorg/anddev/andengine/engine/options/resolutionpolicy/RatioResolutionPolicy;
.super Lorg/anddev/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;


# instance fields
.field private final mRatio:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;-><init>()V

    iput p1, p0, Lorg/anddev/andengine/engine/options/resolutionpolicy/RatioResolutionPolicy;->mRatio:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    invoke-direct {p0}, Lorg/anddev/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;-><init>()V

    div-float v0, p1, p2

    iput v0, p0, Lorg/anddev/andengine/engine/options/resolutionpolicy/RatioResolutionPolicy;->mRatio:F

    return-void
.end method


# virtual methods
.method public onMeasure(Lorg/anddev/andengine/opengl/view/RenderSurfaceView;II)V
    .locals 5

    invoke-static {p2, p3}, Lorg/anddev/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;->throwOnNotMeasureSpecEXACTLY(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v2, p0, Lorg/anddev/andengine/engine/options/resolutionpolicy/RatioResolutionPolicy;->mRatio:F

    int-to-float v3, v1

    int-to-float v4, v0

    div-float/2addr v3, v4

    cmpg-float v3, v3, v2

    if-gez v3, :cond_0

    int-to-float v0, v1

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    invoke-virtual {p1, v1, v0}, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;->setMeasuredDimensionProxy(II)V

    return-void

    :cond_0
    int-to-float v1, v0

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0
.end method
