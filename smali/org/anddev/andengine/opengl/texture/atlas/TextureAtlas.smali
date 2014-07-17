.class public abstract Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;
.super Lorg/anddev/andengine/opengl/texture/Texture;

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;",
        ">",
        "Lorg/anddev/andengine/opengl/texture/Texture;",
        "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected final mHeight:I

.field protected final mTextureAtlasSources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final mWidth:I


# direct methods
.method public constructor <init>(IILorg/anddev/andengine/opengl/texture/Texture$PixelFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;",
            "Lorg/anddev/andengine/opengl/texture/TextureOptions;",
            "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p3, p4, p5}, Lorg/anddev/andengine/opengl/texture/Texture;-><init>(Lorg/anddev/andengine/opengl/texture/Texture$PixelFormat;Lorg/anddev/andengine/opengl/texture/TextureOptions;Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->mTextureAtlasSources:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/anddev/andengine/util/MathUtils;->isPowerOfTwo(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/anddev/andengine/util/MathUtils;->isPowerOfTwo(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pWidth and pHeight must be a power of 2!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->mWidth:I

    iput p2, p0, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->mHeight:I

    return-void
.end method

.method private checkTextureAtlasSourcePosition(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal negative pTexturePositionX supplied: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal negative pTexturePositionY supplied: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_2

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getHeight()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Supplied pTextureAtlasSource must not exceed bounds of Texture."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->checkTextureAtlasSourcePosition(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V

    invoke-interface {p1, p2}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->setTexturePositionX(I)V

    invoke-interface {p1, p3}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->setTexturePositionY(I)V

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->mTextureAtlasSources:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->mUpdateOnHardwareNeeded:Z

    return-void
.end method

.method public clearTextureAtlasSources()V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->mTextureAtlasSources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->mUpdateOnHardwareNeeded:Z

    return-void
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->mHeight:I

    return v0
.end method

.method public bridge synthetic getTextureStateListener()Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->getTextureStateListener()Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;

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

    invoke-super {p0}, Lorg/anddev/andengine/opengl/texture/Texture;->getTextureStateListener()Lorg/anddev/andengine/opengl/texture/ITexture$ITextureStateListener;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas$ITextureAtlasStateListener;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->mWidth:I

    return v0
.end method

.method public removeTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    iget-object v2, p0, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->mTextureAtlasSources:Ljava/util/ArrayList;

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

    check-cast v0, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    if-ne v0, p1, :cond_1

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getTexturePositionX()I

    move-result v3

    if-ne v3, p2, :cond_1

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getTexturePositionY()I

    move-result v0

    if-ne v0, p3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/TextureAtlas;->mUpdateOnHardwareNeeded:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method
