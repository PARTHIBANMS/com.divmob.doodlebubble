.class public Lorg/anddev/andengine/audio/music/Music;
.super Lorg/anddev/andengine/audio/BaseAudioEntity;


# instance fields
.field private final mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method constructor <init>(Lorg/anddev/andengine/audio/music/MusicManager;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/audio/BaseAudioEntity;-><init>(Lorg/anddev/andengine/audio/IAudioManager;)V

    iput-object p2, p0, Lorg/anddev/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method protected bridge synthetic getAudioManager()Lorg/anddev/andengine/audio/IAudioManager;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/audio/music/Music;->getAudioManager()Lorg/anddev/andengine/audio/music/MusicManager;

    move-result-object v0

    return-object v0
.end method

.method protected getAudioManager()Lorg/anddev/andengine/audio/music/MusicManager;
    .locals 1

    invoke-super {p0}, Lorg/anddev/andengine/audio/BaseAudioEntity;->getAudioManager()Lorg/anddev/andengine/audio/IAudioManager;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/audio/music/MusicManager;

    return-object v0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public isPlaying()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public onMasterVolumeChanged(F)V
    .locals 2

    iget v0, p0, Lorg/anddev/andengine/audio/music/Music;->mLeftVolume:F

    iget v1, p0, Lorg/anddev/andengine/audio/music/Music;->mRightVolume:F

    invoke-virtual {p0, v0, v1}, Lorg/anddev/andengine/audio/music/Music;->setVolume(FF)V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public resume()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public setLooping(Z)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method public setVolume(FF)V
    .locals 3

    invoke-super {p0, p1, p2}, Lorg/anddev/andengine/audio/BaseAudioEntity;->setVolume(FF)V

    invoke-virtual {p0}, Lorg/anddev/andengine/audio/music/Music;->getAudioManager()Lorg/anddev/andengine/audio/music/MusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/music/MusicManager;->getMasterVolume()F

    move-result v0

    mul-float v1, p1, v0

    mul-float/2addr v0, p2

    iget-object v2, p0, Lorg/anddev/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/audio/music/Music;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method
