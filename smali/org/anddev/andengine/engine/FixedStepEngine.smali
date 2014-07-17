.class public Lorg/anddev/andengine/engine/FixedStepEngine;
.super Lorg/anddev/andengine/engine/Engine;


# instance fields
.field private mSecondsElapsedAccumulator:J

.field private final mStepLength:J


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/engine/options/EngineOptions;I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/anddev/andengine/engine/Engine;-><init>(Lorg/anddev/andengine/engine/options/EngineOptions;)V

    const-wide/32 v0, 0x3b9aca00

    int-to-long v2, p2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/anddev/andengine/engine/FixedStepEngine;->mStepLength:J

    return-void
.end method


# virtual methods
.method public onUpdate(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/anddev/andengine/engine/FixedStepEngine;->mSecondsElapsedAccumulator:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/anddev/andengine/engine/FixedStepEngine;->mSecondsElapsedAccumulator:J

    iget-wide v0, p0, Lorg/anddev/andengine/engine/FixedStepEngine;->mStepLength:J

    :goto_0
    iget-wide v2, p0, Lorg/anddev/andengine/engine/FixedStepEngine;->mSecondsElapsedAccumulator:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    return-void

    :cond_0
    invoke-super {p0, v0, v1}, Lorg/anddev/andengine/engine/Engine;->onUpdate(J)V

    iget-wide v2, p0, Lorg/anddev/andengine/engine/FixedStepEngine;->mSecondsElapsedAccumulator:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lorg/anddev/andengine/engine/FixedStepEngine;->mSecondsElapsedAccumulator:J

    goto :goto_0
.end method
