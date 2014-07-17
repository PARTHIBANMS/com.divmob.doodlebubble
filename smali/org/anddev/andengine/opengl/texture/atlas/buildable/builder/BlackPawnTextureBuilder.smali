.class public Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;,
        Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;
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
        "Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder",
        "<TT;TA;>;"
    }
.end annotation


# static fields
.field private static final TEXTURESOURCE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mTextureAtlasSourceSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$1;

    invoke-direct {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$1;-><init>()V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder;->TEXTURESOURCE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder;->mTextureAtlasSourceSpacing:I

    return-void
.end method


# virtual methods
.method public pack(Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;Ljava/util/ArrayList;)V
    .locals 8
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

    const/4 v0, 0x0

    sget-object v1, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder;->TEXTURESOURCE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    new-instance v1, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->getWidth()I

    move-result v3

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->getHeight()I

    move-result v4

    invoke-direct {v1, v0, v0, v3, v4}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;-><init>(IIII)V

    invoke-direct {v2, v1}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;-><init>(Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->getTextureAtlasSource()Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    move-result-object v4

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->getWidth()I

    move-result v5

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->getHeight()I

    move-result v6

    iget v7, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder;->mTextureAtlasSourceSpacing:I

    invoke-virtual {v2, v4, v5, v6, v7}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->insert(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;III)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder$TextureAtlasSourcePackingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not pack: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/ITextureBuilder$TextureAtlasSourcePackingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    #getter for: Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mRect:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;
    invoke-static {v5}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->access$0(Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    move-result-object v6

    #getter for: Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->mLeft:I
    invoke-static {v6}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->access$0(Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;)I

    move-result v6

    #getter for: Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mRect:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;
    invoke-static {v5}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->access$0(Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    move-result-object v5

    #getter for: Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->mTop:I
    invoke-static {v5}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->access$1(Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;)I

    move-result v5

    invoke-interface {p1, v4, v6, v5}, Lorg/anddev/andengine/opengl/texture/atlas/ITextureAtlas;->addTextureAtlasSource(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;II)V

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->getCallback()Lorg/anddev/andengine/util/Callback;

    move-result-object v0

    invoke-interface {v0, v4}, Lorg/anddev/andengine/util/Callback;->onCallback(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
