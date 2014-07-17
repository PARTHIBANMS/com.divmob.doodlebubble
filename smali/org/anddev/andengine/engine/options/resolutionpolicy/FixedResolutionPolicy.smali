.class public Lorg/anddev/andengine/engine/options/resolutionpolicy/FixedResolutionPolicy;
.super Lorg/anddev/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;


# instance fields
.field private final mHeight:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/engine/options/resolutionpolicy/BaseResolutionPolicy;-><init>()V

    iput p1, p0, Lorg/anddev/andengine/engine/options/resolutionpolicy/FixedResolutionPolicy;->mWidth:I

    iput p2, p0, Lorg/anddev/andengine/engine/options/resolutionpolicy/FixedResolutionPolicy;->mHeight:I

    return-void
.end method


# virtual methods
.method public onMeasure(Lorg/anddev/andengine/opengl/view/RenderSurfaceView;II)V
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/engine/options/resolutionpolicy/FixedResolutionPolicy;->mWidth:I

    iget v1, p0, Lorg/anddev/andengine/engine/options/resolutionpolicy/FixedResolutionPolicy;->mHeight:I

    invoke-virtual {p1, v0, v1}, Lorg/anddev/andengine/opengl/view/RenderSurfaceView;->setMeasuredDimensionProxy(II)V

    return-void
.end method
