.class public Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Node"
.end annotation


# instance fields
.field private mChildA:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

.field private mChildB:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

.field private final mRect:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

.field private mTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;


# direct methods
.method public constructor <init>(IIII)V
    .locals 1

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;-><init>(IIII)V

    invoke-direct {p0, v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;-><init>(Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;)V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mRect:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    return-void
.end method

.method static synthetic access$0(Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mRect:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    return-object v0
.end method

.method private createChildren(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;IIIII)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;
    .locals 6

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mRect:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    if-lt p5, p6, :cond_0

    new-instance v1, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getTop()I

    move-result v3

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getWidth()I

    move-result v4

    add-int/2addr v4, p4

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getHeight()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;-><init>(IIII)V

    iput-object v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mChildA:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    new-instance v1, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getLeft()I

    move-result v2

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getWidth()I

    move-result v3

    add-int/2addr v3, p4

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getTop()I

    move-result v3

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getWidth()I

    move-result v4

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getWidth()I

    move-result v5

    add-int/2addr v5, p4

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;-><init>(IIII)V

    iput-object v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mChildB:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    :goto_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mChildA:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->insert(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;III)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getTop()I

    move-result v3

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getWidth()I

    move-result v4

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getHeight()I

    move-result v5

    add-int/2addr v5, p4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;-><init>(IIII)V

    iput-object v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mChildA:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    new-instance v1, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getTop()I

    move-result v3

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getHeight()I

    move-result v4

    add-int/2addr v4, p4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getHeight()I

    move-result v0

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getHeight()I

    move-result v5

    add-int/2addr v5, p4

    sub-int/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;-><init>(IIII)V

    iput-object v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mChildB:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    goto :goto_0
.end method


# virtual methods
.method public getChildA()Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mChildA:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    return-object v0
.end method

.method public getChildB()Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mChildB:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    return-object v0
.end method

.method public getRect()Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mRect:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    return-object v0
.end method

.method public insert(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;III)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mChildA:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mChildB:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mChildA:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->insert(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;III)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mChildB:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->insert(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;III)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    if-eqz v3, :cond_2

    move-object p0, v0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getWidth()I

    move-result v4

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getHeight()I

    move-result v6

    iget-object v3, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mRect:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    invoke-virtual {v3}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getWidth()I

    move-result v5

    iget-object v3, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mRect:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    invoke-virtual {v3}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getHeight()I

    move-result v7

    if-gt v4, v5, :cond_3

    if-le v6, v7, :cond_4

    :cond_3
    move-object p0, v0

    goto :goto_0

    :cond_4
    add-int v8, v4, p4

    add-int v9, v6, p4

    iget-object v3, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mRect:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    invoke-virtual {v3}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getLeft()I

    move-result v10

    iget-object v3, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mRect:Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;

    invoke-virtual {v3}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Rect;->getTop()I

    move-result v3

    if-ne v6, v7, :cond_5

    add-int/2addr v3, v6

    if-ne v3, p3, :cond_5

    move v3, v1

    :goto_1
    if-ne v4, v5, :cond_6

    add-int/2addr v10, v4

    if-ne v10, p2, :cond_6

    :goto_2
    if-ne v8, v5, :cond_8

    if-ne v9, v7, :cond_7

    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    goto :goto_0

    :cond_5
    move v3, v2

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_8

    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    goto :goto_0

    :cond_8
    if-eqz v1, :cond_c

    if-ne v9, v7, :cond_9

    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    goto :goto_0

    :cond_9
    if-eqz v3, :cond_a

    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    goto :goto_0

    :cond_a
    if-le v9, v7, :cond_b

    move-object p0, v0

    goto :goto_0

    :cond_b
    sub-int/2addr v5, v4

    sub-int v6, v7, v9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->createChildren(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;IIIII)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    move-result-object p0

    goto :goto_0

    :cond_c
    if-eqz v3, :cond_f

    if-ne v8, v5, :cond_d

    iput-object p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->mTextureAtlasSource:Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    goto :goto_0

    :cond_d
    if-le v8, v5, :cond_e

    move-object p0, v0

    goto :goto_0

    :cond_e
    sub-int/2addr v5, v8

    sub-int v6, v7, v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->createChildren(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;IIIII)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    move-result-object p0

    goto/16 :goto_0

    :cond_f
    if-gt v8, v5, :cond_10

    if-le v9, v7, :cond_11

    :cond_10
    move-object p0, v0

    goto/16 :goto_0

    :cond_11
    sub-int/2addr v5, v8

    sub-int v6, v7, v9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;->createChildren(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;IIIII)Lorg/anddev/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureBuilder$Node;

    move-result-object p0

    goto/16 :goto_0
.end method
