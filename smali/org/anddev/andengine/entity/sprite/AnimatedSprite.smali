.class public Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
.super Lorg/anddev/andengine/entity/sprite/TiledSprite;

# interfaces
.implements Lorg/anddev/andengine/util/constants/TimeConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;
    }
.end annotation


# static fields
.field private static final LOOP_CONTINUOUS:I = -0x1


# instance fields
.field private mAnimationDuration:J

.field private mAnimationListener:Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

.field private mAnimationProgress:J

.field private mAnimationRunning:Z

.field private mFirstTileIndex:I

.field private mFrameCount:I

.field private mFrameEndsInNanoseconds:[J

.field private mFrames:[I

.field private mInitialLoopCount:I

.field private mLoopCount:I


# direct methods
.method public constructor <init>(FFFFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/anddev/andengine/entity/sprite/TiledSprite;-><init>(FFFFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    return-void
.end method

.method public constructor <init>(FFFFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/anddev/andengine/entity/sprite/TiledSprite;-><init>(FFFFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V

    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/entity/sprite/TiledSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;)V

    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/sprite/TiledSprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V

    return-void
.end method

.method private calculateCurrentFrameIndex()I
    .locals 7

    iget-wide v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    iget-object v3, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrameEndsInNanoseconds:[J

    iget v4, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrameCount:I

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_1

    add-int/lit8 v0, v4, -0x1

    :cond_0
    return v0

    :cond_1
    aget-wide v5, v3, v0

    cmp-long v5, v5, v1

    if-gtz v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private init([JI[IIILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 3

    iput p2, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrameCount:I

    iput-object p6, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationListener:Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    iput p5, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mInitialLoopCount:I

    iput p5, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mLoopCount:I

    iput-object p3, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrames:[I

    iput p4, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFirstTileIndex:I

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrameEndsInNanoseconds:[J

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrameCount:I

    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrameEndsInNanoseconds:[J

    array-length v1, v1

    if-le v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrameCount:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrameEndsInNanoseconds:[J

    :cond_1
    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrameEndsInNanoseconds:[J

    const-wide/32 v1, 0xf4240

    invoke-static {p1, v0, v1, v2}, Lorg/anddev/andengine/util/MathUtils;->arraySumInto([J[JJ)V

    iget v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrameCount:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationDuration:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationRunning:Z

    return-object p0
.end method


# virtual methods
.method public animate(J)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate(JZ)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0
.end method

.method public animate(JI)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate(JILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0
.end method

.method public animate(JILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTileCount()I

    move-result v0

    new-array v0, v0, [J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    invoke-virtual {p0, v0, p3, p4}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate([JILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0
.end method

.method public animate(JZ)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 2

    if-eqz p3, :cond_0

    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate(JILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public animate(JZLorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 1

    if-eqz p3, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate(JILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public animate([J)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate([JZ)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0
.end method

.method public animate([JI)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate([JILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0
.end method

.method public animate([JIII)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate([JIIILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0
.end method

.method public animate([JIIILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 7

    sub-int v0, p3, p2

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An animation needs at least two tiles to animate between."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sub-int v0, p3, p2

    add-int/lit8 v2, v0, 0x1

    array-length v0, p1

    if-eq v0, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pFrameDurations must have the same length as pFirstTileIndex to pLastTileIndex."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->init([JI[IIILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0
.end method

.method public animate([JIIZ)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 6

    if-eqz p4, :cond_0

    const/4 v4, -0x1

    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate([JIIILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public animate([JILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->getTextureRegion()Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->getTileCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate([JIIILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0
.end method

.method public animate([JZ)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate([JILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public animate([JZLorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate([JILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public animate([J[II)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->animate([J[IILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0
.end method

.method public animate([J[IILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;
    .locals 7

    array-length v2, p2

    array-length v0, p1

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pFrameDurations must have the same length as pFrames."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->init([JI[IIILorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;)Lorg/anddev/andengine/entity/sprite/AnimatedSprite;

    move-result-object v0

    return-object v0
.end method

.method public isAnimationRunning()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationRunning:Z

    return v0
.end method

.method protected onManagedUpdate(F)V
    .locals 5

    const/4 v4, -0x1

    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/sprite/TiledSprite;->onManagedUpdate(F)V

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationRunning:Z

    if-eqz v0, :cond_2

    const v0, 0x4e6e6b28

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iget-wide v2, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    iget-wide v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    iget-wide v2, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationDuration:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    iget-wide v2, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationDuration:J

    rem-long/2addr v0, v2

    iput-wide v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationProgress:J

    iget v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mInitialLoopCount:I

    if-eq v0, v4, :cond_0

    iget v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mLoopCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mLoopCount:I

    :cond_0
    iget v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mInitialLoopCount:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mLoopCount:I

    if-ltz v0, :cond_4

    :cond_1
    invoke-direct {p0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->calculateCurrentFrameIndex()I

    move-result v0

    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrames:[I

    if-nez v1, :cond_3

    iget v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFirstTileIndex:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mFrames:[I

    aget v0, v1, v0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationRunning:Z

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationListener:Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationListener:Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;

    invoke-interface {v0, p0}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite$IAnimationListener;->onAnimationEnd(Lorg/anddev/andengine/entity/sprite/AnimatedSprite;)V

    goto :goto_0
.end method

.method public stopAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationRunning:Z

    return-void
.end method

.method public stopAnimation(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->mAnimationRunning:Z

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/sprite/AnimatedSprite;->setCurrentTileIndex(I)V

    return-void
.end method
