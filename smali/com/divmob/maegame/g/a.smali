.class public Lcom/divmob/maegame/g/a;
.super Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;


# instance fields
.field private a:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/anddev/andengine/opengl/texture/atlas/bitmap/source/EmptyBitmapTextureAtlasSource;-><init>(II)V

    iput-object p1, p0, Lcom/divmob/maegame/g/a;->a:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/divmob/maegame/g/a;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method
