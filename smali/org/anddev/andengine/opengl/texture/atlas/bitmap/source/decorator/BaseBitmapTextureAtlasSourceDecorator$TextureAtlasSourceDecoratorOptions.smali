.class public Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureAtlasSourceDecoratorOptions"
.end annotation


# static fields
.field public static final DEFAULT:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;


# instance fields
.field private mAntiAliasing:Z

.field private mInsetBottom:F

.field private mInsetLeft:F

.field private mInsetRight:F

.field private mInsetTop:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    invoke-direct {v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;-><init>()V

    sput-object v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->DEFAULT:Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x3e80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetLeft:F

    iput v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetRight:F

    iput v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetTop:F

    iput v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetBottom:F

    return-void
.end method


# virtual methods
.method protected deepCopy()Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;
    .locals 5

    new-instance v0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    invoke-direct {v0}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;-><init>()V

    iget v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetLeft:F

    iget v2, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetTop:F

    iget v3, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetRight:F

    iget v4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetBottom:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->setInsets(FFFF)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    iget-boolean v1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mAntiAliasing:Z

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->setAntiAliasing(Z)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    return-object v0
.end method

.method public getAntiAliasing()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mAntiAliasing:Z

    return v0
.end method

.method public getInsetBottom()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetBottom:F

    return v0
.end method

.method public getInsetLeft()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetLeft:F

    return v0
.end method

.method public getInsetRight()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetRight:F

    return v0
.end method

.method public getInsetTop()F
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetTop:F

    return v0
.end method

.method public setAntiAliasing(Z)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mAntiAliasing:Z

    return-object p0
.end method

.method public setInsetBottom(F)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetBottom:F

    return-object p0
.end method

.method public setInsetLeft(F)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetLeft:F

    return-object p0
.end method

.method public setInsetRight(F)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetRight:F

    return-object p0
.end method

.method public setInsetTop(F)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetTop:F

    return-object p0
.end method

.method public setInsets(F)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;
    .locals 1

    invoke-virtual {p0, p1, p1, p1, p1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->setInsets(FFFF)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    move-result-object v0

    return-object v0
.end method

.method public setInsets(FFFF)Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;
    .locals 0

    iput p1, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetLeft:F

    iput p2, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetTop:F

    iput p3, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetRight:F

    iput p4, p0, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetBottom:F

    return-object p0
.end method
