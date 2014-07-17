.class Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;

    check-cast p2, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;

    invoke-virtual {p0, p1, p2}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$1;->compare(Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback",
            "<*>;",
            "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback",
            "<*>;)I"
        }
    .end annotation

    invoke-virtual {p2}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->getTextureAtlasSource()Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->getTextureAtlasSource()Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getWidth()I

    move-result v0

    sub-int v0, v1, v0

    if-eqz v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->getTextureAtlasSource()Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->getTextureAtlasSource()Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    invoke-interface {v0}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getHeight()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method
