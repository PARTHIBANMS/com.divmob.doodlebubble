.class public Lcom/divmob/doodlebubble/c/d;
.super Lorg/anddev/andengine/util/pool/GenericPool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/pool/GenericPool",
        "<",
        "Lcom/divmob/doodlebubble/c/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

.field private b:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;


# direct methods
.method public varargs constructor <init>(Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/util/pool/GenericPool;-><init>()V

    iput-object p1, p0, Lcom/divmob/doodlebubble/c/d;->a:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    iput-object p2, p0, Lcom/divmob/doodlebubble/c/d;->b:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    return-void
.end method


# virtual methods
.method protected a()Lcom/divmob/doodlebubble/c/c;
    .locals 3

    new-instance v0, Lcom/divmob/doodlebubble/c/c;

    iget-object v1, p0, Lcom/divmob/doodlebubble/c/d;->a:Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;

    iget-object v2, p0, Lcom/divmob/doodlebubble/c/d;->b:[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, v1, v2}, Lcom/divmob/doodlebubble/c/c;-><init>(Lorg/anddev/andengine/opengl/texture/region/TiledTextureRegion;[Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    return-object v0
.end method

.method protected a(Lcom/divmob/doodlebubble/c/c;)V
    .locals 0

    invoke-virtual {p1}, Lcom/divmob/doodlebubble/c/c;->b()V

    return-void
.end method

.method protected b(Lcom/divmob/doodlebubble/c/c;)V
    .locals 0

    invoke-virtual {p1}, Lcom/divmob/doodlebubble/c/c;->a()V

    return-void
.end method

.method protected synthetic onAllocatePoolItem()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/divmob/doodlebubble/c/d;->a()Lcom/divmob/doodlebubble/c/c;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onHandleObtainItem(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/divmob/doodlebubble/c/c;

    invoke-virtual {p0, p1}, Lcom/divmob/doodlebubble/c/d;->a(Lcom/divmob/doodlebubble/c/c;)V

    return-void
.end method

.method protected synthetic onHandleRecycleItem(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/divmob/doodlebubble/c/c;

    invoke-virtual {p0, p1}, Lcom/divmob/doodlebubble/c/d;->b(Lcom/divmob/doodlebubble/c/c;)V

    return-void
.end method
