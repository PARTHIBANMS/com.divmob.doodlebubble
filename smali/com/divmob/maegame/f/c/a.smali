.class public Lcom/divmob/maegame/f/c/a;
.super Ljava/util/ArrayList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/divmob/maegame/f/c/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/divmob/maegame/f/c/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/divmob/maegame/f/c/a;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/maegame/f/c/b;

    invoke-virtual {v0}, Lcom/divmob/maegame/f/c/b;->c()V

    return-void
.end method
