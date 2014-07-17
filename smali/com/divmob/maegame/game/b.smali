.class Lcom/divmob/maegame/game/b;
.super Lorg/anddev/andengine/entity/sprite/Sprite;


# instance fields
.field final synthetic a:Lcom/divmob/maegame/game/MBaseGameActivity;


# direct methods
.method constructor <init>(Lcom/divmob/maegame/game/MBaseGameActivity;FFFFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 6

    iput-object p1, p0, Lcom/divmob/maegame/game/b;->a:Lcom/divmob/maegame/game/MBaseGameActivity;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFFFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    return-void
.end method


# virtual methods
.method protected onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/sprite/Sprite;->onInitDraw(Ljavax/microedition/khronos/opengles/GL10;)V

    invoke-static {p1}, Lorg/anddev/andengine/opengl/util/GLHelper;->enableDither(Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method
