.class public abstract Lorg/anddev/andengine/entity/primitive/BaseRectangle;
.super Lorg/anddev/andengine/entity/shape/RectangularShape;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 6

    new-instance v5, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    const v0, 0x88e4

    const/4 v1, 0x1

    invoke-direct {v5, v0, v1}, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;-><init>(IZ)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/shape/RectangularShape;-><init>(FFFFLorg/anddev/andengine/opengl/vertex/VertexBuffer;)V

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/primitive/BaseRectangle;->updateVertexBuffer()V

    return-void
.end method

.method public constructor <init>(FFFFLorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/anddev/andengine/entity/shape/RectangularShape;-><init>(FFFFLorg/anddev/andengine/opengl/vertex/VertexBuffer;)V

    return-void
.end method


# virtual methods
.method public getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/primitive/BaseRectangle;->mVertexBuffer:Lorg/anddev/andengine/opengl/vertex/VertexBuffer;

    check-cast v0, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    return-object v0
.end method

.method public bridge synthetic getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/VertexBuffer;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/primitive/BaseRectangle;->getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected onUpdateVertexBuffer()V
    .locals 3

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/primitive/BaseRectangle;->getVertexBuffer()Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;

    move-result-object v0

    iget v1, p0, Lorg/anddev/andengine/entity/primitive/BaseRectangle;->mWidth:F

    iget v2, p0, Lorg/anddev/andengine/entity/primitive/BaseRectangle;->mHeight:F

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;->update(FF)V

    return-void
.end method
