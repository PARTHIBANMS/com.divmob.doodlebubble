.class public Lorg/anddev/andengine/audio/sound/SoundFactory;
.super Ljava/lang/Object;


# static fields
.field private static sAssetBasePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lorg/anddev/andengine/audio/sound/SoundFactory;->sAssetBasePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSoundFromAsset(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lorg/anddev/andengine/audio/sound/SoundFactory;->sAssetBasePath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v0

    new-instance v1, Lorg/anddev/andengine/audio/sound/Sound;

    invoke-direct {v1, p0, v0}, Lorg/anddev/andengine/audio/sound/Sound;-><init>(Lorg/anddev/andengine/audio/sound/SoundManager;I)V

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/audio/sound/SoundManager;->add(Lorg/anddev/andengine/audio/IAudioEntity;)V

    return-object v1
.end method

.method public static createSoundFromFileDescriptor(Lorg/anddev/andengine/audio/sound/SoundManager;Ljava/io/FileDescriptor;JJ)Lorg/anddev/andengine/audio/sound/Sound;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    const/4 v6, 0x1

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    new-instance v1, Lorg/anddev/andengine/audio/sound/Sound;

    invoke-direct {v1, p0, v0}, Lorg/anddev/andengine/audio/sound/Sound;-><init>(Lorg/anddev/andengine/audio/sound/SoundManager;I)V

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/audio/sound/SoundManager;->add(Lorg/anddev/andengine/audio/IAudioEntity;)V

    return-object v1
.end method

.method public static createSoundFromPath(Lorg/anddev/andengine/audio/sound/SoundManager;Ljava/lang/String;)Lorg/anddev/andengine/audio/sound/Sound;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Lorg/anddev/andengine/audio/sound/Sound;

    invoke-direct {v1, p0, v0}, Lorg/anddev/andengine/audio/sound/Sound;-><init>(Lorg/anddev/andengine/audio/sound/SoundManager;I)V

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/audio/sound/SoundManager;->add(Lorg/anddev/andengine/audio/IAudioEntity;)V

    return-object v1
.end method

.method public static createSoundFromResource(Lorg/anddev/andengine/audio/sound/SoundManager;Landroid/content/Context;I)Lorg/anddev/andengine/audio/sound/Sound;
    .locals 2

    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/SoundManager;->getSoundPool()Landroid/media/SoundPool;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    new-instance v1, Lorg/anddev/andengine/audio/sound/Sound;

    invoke-direct {v1, p0, v0}, Lorg/anddev/andengine/audio/sound/Sound;-><init>(Lorg/anddev/andengine/audio/sound/SoundManager;I)V

    invoke-virtual {p0, v1}, Lorg/anddev/andengine/audio/sound/SoundManager;->add(Lorg/anddev/andengine/audio/IAudioEntity;)V

    return-object v1
.end method

.method public static reset()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lorg/anddev/andengine/audio/sound/SoundFactory;->setAssetBasePath(Ljava/lang/String;)V

    return-void
.end method

.method public static setAssetBasePath(Ljava/lang/String;)V
    .locals 2

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sput-object p0, Lorg/anddev/andengine/audio/sound/SoundFactory;->sAssetBasePath:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pAssetBasePath must end with \'/\' or be lenght zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
