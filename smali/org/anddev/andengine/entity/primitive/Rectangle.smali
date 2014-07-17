.class public Lorg/anddev/andengine/entity/primitive/Rectangle;
.super Lorg/anddev/andengine/entity/primitive/BaseRectangle;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/entity/primitive/BaseRectangle;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFFLorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lorg/anddev/andengine/entity/primitive/BaseRectangle;-><init>(FFFFLorg/anddev/andengine/opengl/vertex/RectangleVertexBuffer;)V

    return-void
.end method


# virtual methods
.method protected onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/primitive/BaseRectangle;->onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableTextures(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->disableTexCoordArray(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method
