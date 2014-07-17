.class public Lorg/anddev/andengine/audio/sound/Sound;
.super Lorg/anddev/andengine/audio/BaseAudioEntity;


# instance fields
.field private mLoopCount:I

.field private mRate:F

.field private final mSoundID:I

.field private mStreamID:I


# direct methods
.method constructor <init>(Lorg/anddev/andengine/audio/sound/SoundManager;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/audio/BaseAudioEntity;-><init>(Lorg/anddev/andengine/audio/IAudioManager;)V

    iput v0, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    iput v0, p0, Lorg/anddev/andengine/audio/sound/Sound;->mLoopCount:I

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/anddev/andengine/audio/sound/Sound;->mRate:F

    iput p2, p0, Lorg/anddev/andengine/audio/sound/Sound;->mSoundID:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic getAudioManager()Lorg/anddev/andengine/audio/IAudioManager;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/Sound;->getAudioManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v0

    return-object v0
.end method

.method protected getAudioManager()Lorg/anddev/andengine/audio/sound/SoundManager;
    .locals 1

    invoke-super {p0}, Lorg/anddev/andengine/audio/BaseAudioEntity;->getAudioManager()Lorg/anddev/andengine/audio/IAudioManager;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/audio/sound/SoundManager;

    return-object v0
.end method

.method public onMasterVolumeChanged(F)V
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/audio/sound/Sound;->mLeftVolume:F

    iget v1, p0, Lorg/anddev/andengine/audio/sound/Sound;->mRightVolume:F

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/audio/sound/Sound;->setVolume(FF)V

    return-void
.end method

.method public pause()V
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/Sound;->getAudioManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->pause(I)V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 7

    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/Sound;->getMasterVolume()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/audio/sound/Sound;->mLeftVolume:F

    mul-float v2, v1, v0

    iget v1, p0, Lorg/anddev/andengine/audio/sound/Sound;->mRightVolume:F

    mul-float v3, v1, v0

    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/Sound;->getAudioManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/audio/sound/Sound;->mSoundID:I

    const/4 v4, 0x1

    iget v5, p0, Lorg/anddev/andengine/audio/sound/Sound;->mLoopCount:I

    iget v6, p0, Lorg/anddev/andengine/audio/sound/Sound;->mRate:F

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/Sound;->getAudioManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->resume(I)V

    :cond_0
    return-void
.end method

.method public setLoopCount(I)V
    .locals 2

    iput p1, p0, Lorg/anddev/andengine/audio/sound/Sound;->mLoopCount:I

    iget v0, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/Sound;->getAudioManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    invoke-virtual {v0, v1, p1}, Landroid/media/SoundPool;->setLoop(II)V

    :cond_0
    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/audio/sound/Sound;->setLoopCount(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRate(F)V
    .locals 2

    iput p1, p0, Lorg/anddev/andengine/audio/sound/Sound;->mRate:F

    iget v0, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/Sound;->getAudioManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    invoke-virtual {v0, v1, p1}, Landroid/media/SoundPool;->setRate(IF)V

    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 4

    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/audio/BaseAudioEntity;->setVolume(FF)V

    iget v0, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/Sound;->getMasterVolume()F

    move-result v0

    iget v1, p0, Lorg/anddev/andengine/audio/sound/Sound;->mLeftVolume:F

    mul-float/2addr v1, v0

    iget v2, p0, Lorg/anddev/andengine/audio/sound/Sound;->mRightVolume:F

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/Sound;->getAudioManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/anddev/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v2

    iget v3, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    invoke-virtual {v2, v3, v1, v0}, Landroid/media/SoundPool;->setVolume(IFF)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/Sound;->getAudioManager()Lorg/anddev/andengine/audio/sound/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/audio/sound/Sound;->mStreamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    :cond_0
    return-void
.end method
