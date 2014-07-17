.class public Lorg/anddev/andengine/util/cache/RectangleVertexBufferCache;
.super Ljava/lang/Object;


# instance fields
.field private final mDrawType:I

.field private final mRectangleVertexBufferCache:Lorg/anddev/andengine/util/MultiKeyHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/MultiKeyHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x88e4

    invoke-direct {p0, v0}, Lorg/anddev/andengine/util/cache/RectangleVertexBufferCache;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/anddev/andengine/util/MultiKeyHashMap;

    invoke-direct {v0}, Lorg/anddev/andengine/util/MultiKeyHashMap;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/util/cache/RectangleVertexBufferCache;->mRectangleVertexBufferCache:Lorg/anddev/andengine/util/MultiKeyHashMap;

    iput p1, p0, Lorg/anddev/andengine/util/cache/RectangleVertexBufferCache;->mDrawType:I

    return-void
.end method


# virtual methods
.method public get(II)Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/anddev/andengine/util/cache/RectangleVertexBufferCache;->mRectangleVertexBufferCache:Lorg/anddev/andengine/util/MultiKeyHashMap;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/util/MultiKeyHashMap;->get([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    iget v1, p0, Lorg/anddev/andengine/util/cache/RectangleVertexBufferCache;->mDrawType:I

    invoke-direct {v0, v1, v4}, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;-><init>(IZ)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/anddev/andengine/util/cache/RectangleVertexBufferCache;->put(IILorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public put(IILorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;
    .locals 5

    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;->update(FF)V

    invoke-static {}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->getActiveInstance()Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/anddev/andengine/opengl/buffer/BufferObjectManager;->loadBufferObject(Lorg/anddev/andengine/opengl/buffer/BufferObject;)V

    iget-object v0, p0, Lorg/anddev/andengine/util/cache/RectangleVertexBufferCache;->mRectangleVertexBufferCache:Lorg/anddev/andengine/util/MultiKeyHashMap;

    new-instance v1, Lorg/anddev/andengine/util/MultiKey;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lorg/anddev/andengine/util/MultiKey;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p3}, Lorg/anddev/andengine/util/MultiKeyHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3
.end method
