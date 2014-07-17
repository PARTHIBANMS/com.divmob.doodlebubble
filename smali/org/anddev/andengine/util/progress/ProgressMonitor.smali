.class public Lorg/anddev/andengine/util/progress/ProgressMonitor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/progress/IProgressListener;


# instance fields
.field private final mListener:Lorg/anddev/andengine/util/progress/IProgressListener;

.field private final mParentProgressMonitor:Lorg/anddev/andengine/util/progress/ProgressMonitor;

.field private mProgress:I

.field private mSubMonitorRangeFrom:I

.field private mSubMonitorRangeTo:I


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/util/progress/IProgressListener;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mSubMonitorRangeFrom:I

    const/16 v0, 0x64

    iput v0, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mSubMonitorRangeTo:I

    iput v1, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mProgress:I

    iput-object p1, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mListener:Lorg/anddev/andengine/util/progress/IProgressListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mParentProgressMonitor:Lorg/anddev/andengine/util/progress/ProgressMonitor;

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/util/progress/ProgressMonitor;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mSubMonitorRangeFrom:I

    const/16 v0, 0x64

    iput v0, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mSubMonitorRangeTo:I

    iput v1, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mProgress:I

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mListener:Lorg/anddev/andengine/util/progress/IProgressListener;

    iput-object p1, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mParentProgressMonitor:Lorg/anddev/andengine/util/progress/ProgressMonitor;

    return-void
.end method

.method private onSubProgressChanged(I)V
    .locals 3

    iget v0, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mSubMonitorRangeTo:I

    iget v1, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mSubMonitorRangeFrom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mSubMonitorRangeFrom:I

    mul-int/2addr v0, p1

    int-to-float v0, v0

    const/high16 v2, 0x42c8

    div-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mParentProgressMonitor:Lorg/anddev/andengine/util/progress/ProgressMonitor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mParentProgressMonitor:Lorg/anddev/andengine/util/progress/ProgressMonitor;

    invoke-direct {v1, v0}, Lorg/anddev/andengine/util/progress/ProgressMonitor;->onSubProgressChanged(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mListener:Lorg/anddev/andengine/util/progress/IProgressListener;

    invoke-interface {v1, v0}, Lorg/anddev/andengine/util/progress/IProgressListener;->onProgressChanged(I)V

    goto :goto_0
.end method


# virtual methods
.method public getParentProgressMonitor()Lorg/anddev/andengine/util/progress/ProgressMonitor;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mParentProgressMonitor:Lorg/anddev/andengine/util/progress/ProgressMonitor;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mProgress:I

    return v0
.end method

.method public onProgressChanged(I)V
    .locals 1

    iput p1, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mProgress:I

    iget-object v0, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mParentProgressMonitor:Lorg/anddev/andengine/util/progress/ProgressMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mParentProgressMonitor:Lorg/anddev/andengine/util/progress/ProgressMonitor;

    invoke-direct {v0, p1}, Lorg/anddev/andengine/util/progress/ProgressMonitor;->onSubProgressChanged(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mListener:Lorg/anddev/andengine/util/progress/IProgressListener;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/util/progress/IProgressListener;->onProgressChanged(I)V

    goto :goto_0
.end method

.method public setSubMonitorRange(II)V
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mSubMonitorRangeFrom:I

    iput p2, p0, Lorg/anddev/andengine/util/progress/ProgressMonitor;->mSubMonitorRangeTo:I

    return-void
.end method
