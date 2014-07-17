.class public Lorg/anddev/andengine/entity/util/FrameCountCrasher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/engine/handler/IUpdateHandler;
.implements Lorg/anddev/andengine/util/constants/TimeConstants;


# instance fields
.field private final mFrameLengths:[F

.field private mFramesLeft:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/anddev/andengine/entity/util/FrameCountCrasher;->mFramesLeft:I

    new-array v0, p1, [F

    iput-object v0, p0, Lorg/anddev/andengine/entity/util/FrameCountCrasher;->mFrameLengths:[F

    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 4

    iget v0, p0, Lorg/anddev/andengine/entity/util/FrameCountCrasher;->mFramesLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/anddev/andengine/entity/util/FrameCountCrasher;->mFramesLeft:I

    iget-object v1, p0, Lorg/anddev/andengine/entity/util/FrameCountCrasher;->mFrameLengths:[F

    iget v0, p0, Lorg/anddev/andengine/entity/util/FrameCountCrasher;->mFramesLeft:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/anddev/andengine/entity/util/FrameCountCrasher;->mFramesLeft:I

    aput p1, v1, v0

    return-void

    :cond_0
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Elapsed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/anddev/andengine/util/Debug;->d(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
