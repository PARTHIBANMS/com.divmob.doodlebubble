.class public abstract Lorg/anddev/andengine/audio/BaseAudioManager;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/audio/IAudioManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/anddev/andengine/audio/IAudioEntity;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/anddev/andengine/audio/IAudioManager",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final mAudioEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected mMasterVolume:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/audio/BaseAudioManager;->mAudioEntities:Ljava/util/ArrayList;

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/anddev/andengine/audio/BaseAudioManager;->mMasterVolume:F

    return-void
.end method


# virtual methods
.method public add(Lorg/anddev/andengine/audio/IAudioEntity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/audio/BaseAudioManager;->mAudioEntities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getMasterVolume()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/audio/BaseAudioManager;->mMasterVolume:F

    return v0
.end method

.method public releaseAll()V
    .locals 3

    iget-object v2, p0, Lorg/anddev/andengine/audio/BaseAudioManager;->mAudioEntities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/audio/IAudioEntity;

    invoke-interface {v0}, Lorg/anddev/andengine/audio/IAudioEntity;->stop()V

    invoke-interface {v0}, Lorg/anddev/andengine/audio/IAudioEntity;->release()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public setMasterVolume(F)V
    .locals 3

    iput p1, p0, Lorg/anddev/andengine/audio/BaseAudioManager;->mMasterVolume:F

    iget-object v2, p0, Lorg/anddev/andengine/audio/BaseAudioManager;->mAudioEntities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/audio/IAudioEntity;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/audio/IAudioEntity;->onMasterVolumeChanged(F)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method
