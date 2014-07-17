.class public Lorg/anddev/andengine/engine/options/resolutionpolicy/RelativeResolutionPolicy;
.super Lorg/anddev/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;


# instance fields
.field private final mHeightScale:F

.field private final mWidthScale:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0, p1, p1}, Lorg/anddev/andengine/engine/options/resolutionpolicy/RelativeResolutionPolicy;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;-><init>()V

    iput p1, p0, Lorg/anddev/andengine/engine/options/resolutionpolicy/RelativeResolutionPolicy;->mWidthScale:F

    iput p2, p0, Lorg/anddev/andengine/engine/options/resolutionpolicy/RelativeResolutionPolicy;->mHeightScale:F

    return-void
.end method


# virtual methods
.method public onMeasure(Lorg/anddev/andengine/opengl/view/RenderSurfaceView;II)V
    .locals 3

    invoke-static {p2, p3}, Lorg/anddev/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;->throwOnNotMeasureSpecEXACTLY(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/anddev/andengine/engine/options/resolutionpolicy/RelativeResolutionPolicy;->mWidthScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/anddev/andengine/engine/options/resolutionpolicy/RelativeResolutionPolicy;->mHeightScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;->setMeasuredDimensionProxy(II)V

    return-void
.end method
