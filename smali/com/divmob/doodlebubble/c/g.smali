.class public Lcom/divmob/doodlebubble/c/g;
.super Lorg/anddev/andengine/util/pool/GenericPool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/pool/GenericPool",
        "<",
        "Lcom/divmob/doodlebubble/c/e;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/divmob/maegame/g/d;


# direct methods
.method public constructor <init>(Lcom/divmob/maegame/g/d;)V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/util/pool/GenericPool;-><init>()V

    iput-object p1, p0, Lcom/divmob/doodlebubble/c/g;->a:Lcom/divmob/maegame/g/d;

    return-void
.end method


# virtual methods
.method protected a()Lcom/divmob/doodlebubble/c/e;
    .locals 3

    new-instance v0, Lcom/divmob/doodlebubble/c/e;

    const-string v1, ""

    iget-object v2, p0, Lcom/divmob/doodlebubble/c/g;->a:Lcom/divmob/maegame/g/d;

    invoke-direct {v0, v1, v2}, Lcom/divmob/doodlebubble/c/e;-><init>(Ljava/lang/String;Lcom/divmob/maegame/g/d;)V

    return-object v0
.end method

.method protected a(Lcom/divmob/doodlebubble/c/e;)V
    .locals 0

    invoke-virtual {p1}, Lcom/divmob/doodlebubble/c/e;->reset()V

    invoke-static {p1}, Lcom/divmob/maegame/g/e;->d(Lorg/anddev/andengine/entity/Entity;)V

    return-void
.end method

.method protected b(Lcom/divmob/doodlebubble/c/e;)V
    .locals 0

    return-void
.end method

.method protected synthetic onAllocatePoolItem()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/divmob/doodlebubble/c/g;->a()Lcom/divmob/doodlebubble/c/e;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onHandleObtainItem(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/divmob/doodlebubble/c/e;

    invoke-virtual {p0, p1}, Lcom/divmob/doodlebubble/c/g;->a(Lcom/divmob/doodlebubble/c/e;)V

    return-void
.end method

.method protected synthetic onHandleRecycleItem(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/divmob/doodlebubble/c/e;

    invoke-virtual {p0, p1}, Lcom/divmob/doodlebubble/c/g;->b(Lcom/divmob/doodlebubble/c/e;)V

    return-void
.end method
