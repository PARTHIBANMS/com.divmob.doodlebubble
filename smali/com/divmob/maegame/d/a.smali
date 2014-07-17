.class public Lcom/divmob/maegame/d/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static b:Z


# instance fields
.field private c:Lorg/anddev/andengine/audio/music/Music;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/divmob/maegame/d/a;->a:Z

    sput-boolean v0, Lcom/divmob/maegame/d/a;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/anddev/andengine/audio/sound/Sound;)V
    .locals 1

    sget-boolean v0, Lcom/divmob/maegame/d/a;->a:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/anddev/andengine/audio/sound/Sound;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-boolean v0, Lcom/divmob/maegame/d/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/maegame/d/a;->c:Lorg/anddev/andengine/audio/music/Music;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/maegame/d/a;->c:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/music/Music;->play()V

    :cond_0
    return-void
.end method

.method public a(Lorg/anddev/andengine/audio/music/Music;)V
    .locals 2

    iput-object p1, p0, Lcom/divmob/maegame/d/a;->c:Lorg/anddev/andengine/audio/music/Music;

    iget-object v0, p0, Lcom/divmob/maegame/d/a;->c:Lorg/anddev/andengine/audio/music/Music;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/audio/music/Music;->setLooping(Z)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    sput-boolean p1, Lcom/divmob/maegame/d/a;->a:Z

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    sput-boolean p1, Lcom/divmob/maegame/d/a;->a:Z

    sput-boolean p2, Lcom/divmob/maegame/d/a;->b:Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/divmob/maegame/d/a;->c:Lorg/anddev/andengine/audio/music/Music;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/maegame/d/a;->c:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/music/Music;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/maegame/d/a;->c:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/music/Music;->pause()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/divmob/maegame/d/a;->b:Z

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    sput-boolean p1, Lcom/divmob/maegame/d/a;->b:Z

    sget-boolean v0, Lcom/divmob/maegame/d/a;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/divmob/maegame/d/a;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/divmob/maegame/d/a;->b()V

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/divmob/maegame/d/a;->c:Lorg/anddev/andengine/audio/music/Music;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/maegame/d/a;->c:Lorg/anddev/andengine/audio/music/Music;

    invoke-virtual {v0}, Lorg/anddev/andengine/audio/music/Music;->stop()V

    :cond_0
    return-void
.end method
