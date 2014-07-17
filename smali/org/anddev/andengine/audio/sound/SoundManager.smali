.class public Lorg/anddev/andengine/audio/sound/SoundManager;
.super Lorg/anddev/andengine/audio/BaseAudioManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/audio/BaseAudioManager",
        "<",
        "Lorg/anddev/andengine/audio/sound/Sound;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_SIMULTANEOUS_STREAMS_DEFAULT:I = 0x5


# instance fields
.field private final mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/anddev/andengine/audio/sound/SoundManager;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Lorg/anddev/andengine/audio/BaseAudioManager;-><init>()V

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lorg/anddev/andengine/audio/sound/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    return-void
.end method


# virtual methods
.method getSoundPool()Landroid/media/SoundPool;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/audio/sound/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method public releaseAll()V
    .locals 1

    invoke-super {p0}, Lorg/anddev/andengine/audio/BaseAudioManager;->releaseAll()V

    iget-object v0, p0, Lorg/anddev/andengine/audio/sound/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    return-void
.end method
