.class public interface abstract Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder$TextureAtlasSourcePackingException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;",
        "A::",
        "Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract pack(Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback",
            "<TT;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder$TextureAtlasSourcePackingException;
        }
    .end annotation
.end method
