.class public Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureAtlasSourceWithWithLocationCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCallback:Lorg/anddev/andengine/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;Lorg/anddev/andengine/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->mTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    iput-object p2, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->mCallback:Lorg/anddev/andengine/util/Callback;

    return-void
.end method

.method static synthetic access$0(Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;)Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->mTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    return-object v0
.end method


# virtual methods
.method public getCallback()Lorg/anddev/andengine/util/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->mCallback:Lorg/anddev/andengine/util/Callback;

    return-object v0
.end method

.method public getTextureAtlasSource()Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->mTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    return-object v0
.end method
