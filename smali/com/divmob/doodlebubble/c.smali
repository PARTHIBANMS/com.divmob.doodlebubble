.class Lcom/divmob/doodlebubble/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/engine/handler/IUpdateHandler;


# instance fields
.field final synthetic a:Lcom/divmob/doodlebubble/GameActivity;


# direct methods
.method constructor <init>(Lcom/divmob/doodlebubble/GameActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/doodlebubble/c;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 4

    iget-object v0, p0, Lcom/divmob/doodlebubble/c;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-static {v0}, Lcom/divmob/doodlebubble/GameActivity;->a(Lcom/divmob/doodlebubble/GameActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/divmob/doodlebubble/c;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-static {v0}, Lcom/divmob/doodlebubble/GameActivity;->b(Lcom/divmob/doodlebubble/GameActivity;)Lcom/divmob/doodlebubble/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/divmob/doodlebubble/c;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-static {v0}, Lcom/divmob/doodlebubble/GameActivity;->b(Lcom/divmob/doodlebubble/GameActivity;)Lcom/divmob/doodlebubble/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/a/b;->h()V

    iget-object v0, p0, Lcom/divmob/doodlebubble/c;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-static {v0}, Lcom/divmob/doodlebubble/GameActivity;->b(Lcom/divmob/doodlebubble/GameActivity;)Lcom/divmob/doodlebubble/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/doodlebubble/c;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-static {v0}, Lcom/divmob/doodlebubble/GameActivity;->b(Lcom/divmob/doodlebubble/GameActivity;)Lcom/divmob/doodlebubble/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/divmob/doodlebubble/c;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-static {v1}, Lcom/divmob/doodlebubble/GameActivity;->c(Lcom/divmob/doodlebubble/GameActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/divmob/doodlebubble/a/b;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/c;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-static {v0}, Lcom/divmob/doodlebubble/GameActivity;->d(Lcom/divmob/doodlebubble/GameActivity;)V

    :cond_1
    iget-object v0, p0, Lcom/divmob/doodlebubble/c;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-static {v0}, Lcom/divmob/doodlebubble/GameActivity;->e(Lcom/divmob/doodlebubble/GameActivity;)Lcom/divmob/doodlebubble/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/e/a;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/divmob/doodlebubble/c;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-static {v0}, Lcom/divmob/doodlebubble/GameActivity;->c(Lcom/divmob/doodlebubble/GameActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/divmob/doodlebubble/c;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-static {v0}, Lcom/divmob/doodlebubble/GameActivity;->f(Lcom/divmob/doodlebubble/GameActivity;)Lcom/divmob/doodlebubble/x;

    move-result-object v0

    iget-object v1, p0, Lcom/divmob/doodlebubble/c;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-static {v1}, Lcom/divmob/doodlebubble/GameActivity;->e(Lcom/divmob/doodlebubble/GameActivity;)Lcom/divmob/doodlebubble/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/divmob/doodlebubble/e/a;->b()I

    move-result v1

    iget-object v2, p0, Lcom/divmob/doodlebubble/c;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-static {v2}, Lcom/divmob/doodlebubble/GameActivity;->e(Lcom/divmob/doodlebubble/GameActivity;)Lcom/divmob/doodlebubble/e/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/divmob/doodlebubble/e/a;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/divmob/doodlebubble/x;->a(II)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/c;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-static {v0}, Lcom/divmob/doodlebubble/GameActivity;->g(Lcom/divmob/doodlebubble/GameActivity;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/divmob/doodlebubble/c;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-static {v2}, Lcom/divmob/doodlebubble/GameActivity;->h(Lcom/divmob/doodlebubble/GameActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x42a0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/divmob/doodlebubble/c;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-static {v0}, Lcom/divmob/doodlebubble/GameActivity;->e(Lcom/divmob/doodlebubble/GameActivity;)Lcom/divmob/doodlebubble/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/e/a;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/divmob/doodlebubble/c;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-static {v0}, Lcom/divmob/doodlebubble/GameActivity;->i(Lcom/divmob/doodlebubble/GameActivity;)V

    :goto_1
    iget-object v0, p0, Lcom/divmob/doodlebubble/c;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/divmob/doodlebubble/GameActivity;->a(Lcom/divmob/doodlebubble/GameActivity;J)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/divmob/doodlebubble/c;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-static {v0}, Lcom/divmob/doodlebubble/GameActivity;->j(Lcom/divmob/doodlebubble/GameActivity;)V

    goto :goto_1
.end method

.method public reset()V
    .locals 0

    return-void
.end method
