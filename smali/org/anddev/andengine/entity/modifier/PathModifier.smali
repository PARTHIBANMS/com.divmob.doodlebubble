.class public Lorg/anddev/andengine/entity/modifier/PathModifier;
.super Lorg/anddev/andengine/entity/modifier/EntityModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;,
        Lorg/anddev/andengine/entity/modifier/PathModifier$Path;
    }
.end annotation


# instance fields
.field private final mPath:Lorg/anddev/andengine/entity/modifier/PathModifier$Path;

.field private mPathModifierListener:Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;

.field private final mSequenceModifier:Lorg/anddev/andengine/util/modifier/SequenceModifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/modifier/SequenceModifier",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;)V
    .locals 6

    const/4 v3, 0x0

    sget-object v5, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/PathModifier;-><init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 6

    const/4 v4, 0x0

    sget-object v5, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/PathModifier;-><init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v5, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/PathModifier;-><init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lorg/anddev/andengine/entity/modifier/EntityModifier;-><init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V

    invoke-virtual/range {p2 .. p2}, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->getSize()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Path needs at least 2 waypoints!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object/from16 v0, p2

    iput-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mPath:Lorg/anddev/andengine/entity/modifier/PathModifier$Path;

    move-object/from16 v0, p4

    iput-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mPathModifierListener:Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;

    add-int/lit8 v1, v1, -0x1

    new-array v10, v1, [Lorg/anddev/andengine/entity/modifier/MoveModifier;

    invoke-virtual/range {p2 .. p2}, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->getCoordinatesX()[F

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->getCoordinatesY()[F

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->getLength()F

    move-result v1

    div-float v13, v1, p1

    array-length v14, v10

    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-lt v9, v14, :cond_1

    new-instance v1, Lorg/anddev/andengine/util/modifier/SequenceModifier;

    new-instance v2, Lorg/anddev/andengine/entity/modifier/PathModifier$1;

    invoke-direct {v2, p0}, Lorg/anddev/andengine/entity/modifier/PathModifier$1;-><init>(Lorg/anddev/andengine/entity/modifier/PathModifier;)V

    new-instance v3, Lorg/anddev/andengine/entity/modifier/PathModifier$2;

    invoke-direct {v3, p0}, Lorg/anddev/andengine/entity/modifier/PathModifier$2;-><init>(Lorg/anddev/andengine/entity/modifier/PathModifier;)V

    invoke-direct {v1, v2, v3, v10}, Lorg/anddev/andengine/util/modifier/SequenceModifier;-><init>(Lorg/anddev/andengine/util/modifier/SequenceModifier$ISubSequenceModifierListener;Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;[Lorg/anddev/andengine/util/modifier/IModifier;)V

    iput-object v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/anddev/andengine/util/modifier/SequenceModifier;

    return-void

    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->getSegmentLength(I)F

    move-result v1

    div-float v2, v1, v13

    new-instance v1, Lorg/anddev/andengine/entity/modifier/MoveModifier;

    aget v3, v11, v9

    add-int/lit8 v4, v9, 0x1

    aget v4, v11, v4

    aget v5, v12, v9

    add-int/lit8 v6, v9, 0x1

    aget v6, v12, v6

    const/4 v7, 0x0

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v8}, Lorg/anddev/andengine/entity/modifier/MoveModifier;-><init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    aput-object v1, v10, v9

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_0
.end method

.method public constructor <init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/PathModifier;-><init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;)V
    .locals 6

    const/4 v3, 0x0

    sget-object v5, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/PathModifier;-><init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/PathModifier;-><init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/PathModifier;-><init>(FLorg/anddev/andengine/entity/modifier/PathModifier$Path;Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/PathModifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/anddev/andengine/entity/modifier/EntityModifier;-><init>()V

    iget-object v0, p1, Lorg/anddev/andengine/entity/modifier/PathModifier;->mPath:Lorg/anddev/andengine/entity/modifier/PathModifier$Path;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->deepCopy()Lorg/anddev/andengine/entity/modifier/PathModifier$Path;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mPath:Lorg/anddev/andengine/entity/modifier/PathModifier$Path;

    iget-object v0, p1, Lorg/anddev/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/anddev/andengine/util/modifier/SequenceModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/modifier/SequenceModifier;->deepCopy()Lorg/anddev/andengine/util/modifier/SequenceModifier;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/anddev/andengine/util/modifier/SequenceModifier;

    return-void
.end method

.method static synthetic access$3(Lorg/anddev/andengine/entity/modifier/PathModifier;)Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mPathModifierListener:Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;

    return-object v0
.end method

.method static synthetic access$4(Lorg/anddev/andengine/entity/modifier/PathModifier;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/modifier/PathModifier;->onModifierStarted(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5(Lorg/anddev/andengine/entity/modifier/PathModifier;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/modifier/PathModifier;->onModifierFinished(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/PathModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/PathModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/entity/modifier/PathModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    new-instance v0, Lorg/anddev/andengine/entity/modifier/PathModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/modifier/PathModifier;-><init>(Lorg/anddev/andengine/entity/modifier/PathModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/util/modifier/IModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/PathModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/PathModifier;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/anddev/andengine/util/modifier/SequenceModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/modifier/SequenceModifier;->getDuration()F

    move-result v0

    return v0
.end method

.method public getPath()Lorg/anddev/andengine/entity/modifier/PathModifier$Path;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mPath:Lorg/anddev/andengine/entity/modifier/PathModifier$Path;

    return-object v0
.end method

.method public getPathModifierListener()Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mPathModifierListener:Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;

    return-object v0
.end method

.method public getSecondsElapsed()F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/anddev/andengine/util/modifier/SequenceModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/modifier/SequenceModifier;->getSecondsElapsed()F

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/anddev/andengine/util/modifier/SequenceModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/modifier/SequenceModifier;->isFinished()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onUpdate(FLjava/lang/Object;)F
    .locals 1

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/entity/modifier/PathModifier;->onUpdate(FLorg/anddev/andengine/entity/IEntity;)F

    move-result v0

    return v0
.end method

.method public onUpdate(FLorg/anddev/andengine/entity/IEntity;)F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/anddev/andengine/util/modifier/SequenceModifier;

    invoke-virtual {v0, p1, p2}, Lorg/anddev/andengine/util/modifier/SequenceModifier;->onUpdate(FLjava/lang/Object;)F

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mSequenceModifier:Lorg/anddev/andengine/util/modifier/SequenceModifier;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/modifier/SequenceModifier;->reset()V

    return-void
.end method

.method public setPathModifierListener(Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier;->mPathModifierListener:Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;

    return-void
.end method
