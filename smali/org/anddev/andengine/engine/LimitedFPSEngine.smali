.class public Lorg/anddev/andengine/engine/LimitedFPSEngine;
.super Lorg/anddev/andengine/engine/Engine;


# instance fields
.field private final mPreferredFrameLengthNanoseconds:J


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/engine/options/EngineOptions;I)V
    .locals 4

    invoke-direct {p0, p1}, Lorg/anddev/andengine/engine/Engine;-><init>(Lorg/anddev/andengine/engine/options/EngineOptions;)V

    const-wide/32 v0, 0x3b9aca00

    int-to-long v2, p2

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/anddev/andengine/engine/LimitedFPSEngine;->mPreferredFrameLengthNanoseconds:J

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

    iget-wide v0, p0, Lorg/anddev/andengine/engine/LimitedFPSEngine;->mPreferredFrameLengthNanoseconds:J

    sub-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/engine/Engine;->onUpdate(J)V

    :goto_0
    return-void

    :cond_0
    const-wide/32 v2, 0xf4240

    div-long v2, v0, v2

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    add-long/2addr v0, p1

    invoke-super {p0, v0, v1}, Lorg/anddev/andengine/engine/Engine;->onUpdate(J)V

    goto :goto_0
.end method
