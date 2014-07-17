.class public Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;",
        "A::",
        "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final mTextureAtlasSourcesToPlace:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlasSourcesToPlace:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    return-void
.end method


# virtual methods
.method public addTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1, p2, p3}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->addTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V

    return-void
.end method

.method public addTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;Lorg/anddev/andengine/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlasSourcesToPlace:Ljava/util/ArrayList;

    new-instance v1, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;

    invoke-direct {v1, p1, p2}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;-><init>(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;Lorg/anddev/andengine/util/Callback;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bind(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->bind(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public build(Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder",
            "<TT;TA;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder$TextureAtlasSourcePackingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    iget-object v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlasSourcesToPlace:Ljava/util/ArrayList;

    invoke-interface {p1, v0, v1}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder;->pack(Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlasSourcesToPlace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->setUpdateOnHardwareNeeded(Z)V

    return-void
.end method

.method public clearTextureAtlasSources()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->clearTextureAtlasSources()V

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlasSourcesToPlace:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getHardwareTextureID()I
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->getHardwareTextureID()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->getHeight()I

    move-result v0

    return v0
.end method

.method public getTextureOptions()Lorg/anddev/andengine/opengl/texture/TextureOptions;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->getTextureOptions()Lorg/anddev/andengine/opengl/texture/TextureOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTextureStateListener()Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->getTextureStateListener()Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;

    move-result-object v0

    return-object v0
.end method

.method public getTextureStateListener()Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->getTextureStateListener()Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->getWidth()I

    move-result v0

    return v0
.end method

.method public hasTextureStateListener()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->hasTextureStateListener()Z

    move-result v0

    return v0
.end method

.method public isLoadedToHardware()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->isLoadedToHardware()Z

    move-result v0

    return v0
.end method

.method public isUpdateOnHardwareNeeded()Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->isUpdateOnHardwareNeeded()Z

    move-result v0

    return v0
.end method

.method public loadToHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->loadToHardware(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public reloadToHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->reloadToHardware(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public removeTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;)V
    .locals 3

    iget-object v2, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlasSourcesToPlace:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;

    #getter for: Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->mTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;
    invoke-static {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->access$0(Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;)Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    move-result-object v0

    if-ne v0, p1, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->setUpdateOnHardwareNeeded(Z)V

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public removeTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1, p2, p3}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->removeTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V

    return-void
.end method

.method public setLoadedToHardware(Z)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->setLoadedToHardware(Z)V

    return-void
.end method

.method public setUpdateOnHardwareNeeded(Z)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->setUpdateOnHardwareNeeded(Z)V

    return-void
.end method

.method public unloadFromHardware(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;->mTextureAtlas:Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->unloadFromHardware(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method
