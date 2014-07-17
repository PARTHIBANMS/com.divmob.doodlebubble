.class Lcom/divmob/maegame/e/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/anddev/andengine/util/Callback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;I)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/maegame/e/c;->a:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    iput p2, p0, Lcom/divmob/maegame/e/c;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/divmob/maegame/e/c;->a:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getTexturePositionX()I

    move-result v1

    iget v2, p0, Lcom/divmob/maegame/e/c;->b:I

    add-int/2addr v1, v2

    invoke-interface {p1}, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;->getTexturePositionY()I

    move-result v2

    iget v3, p0, Lcom/divmob/maegame/e/c;->b:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;->setTexturePosition(II)V

    return-void
.end method

.method public synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;

    invoke-virtual {p0, p1}, Lcom/divmob/maegame/e/c;->a(Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;)V

    return-void
.end method
