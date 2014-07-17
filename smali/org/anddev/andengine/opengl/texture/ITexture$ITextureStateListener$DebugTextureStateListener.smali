.class public Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener$DebugTextureStateListener;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DebugTextureStateListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadedToHardware(Lorg/anddev/andengine/opengl/texture/ITexture;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Texture loaded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/anddev/andengine/util/Debug;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onUnloadedFromHardware(Lorg/anddev/andengine/opengl/texture/ITexture;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Texture unloaded: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/anddev/andengine/util/Debug;->d(Ljava/lang/String;)V

    return-void
.end method
