.class public Lorg/anddev/andengine/engine/options/resolutionpolicy/FillResolutionPolicy;
.super Lorg/anddev/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeasure(Lorg/anddev/andengine/opengl/view/RenderSurfaceView;II)V
    .locals 2

    invoke-static {p2, p3}, Lorg/anddev/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;->throwOnNotMeasureSpecEXACTLY(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;->setMeasuredDimensionProxy(II)V

    return-void
.end method
