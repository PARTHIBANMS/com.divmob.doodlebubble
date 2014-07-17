.class Lcom/divmob/a/h$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/divmob/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/divmob/a/h;


# direct methods
.method private constructor <init>(Lcom/divmob/a/h;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/a/h$d;->a:Lcom/divmob/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/divmob/a/h;Lcom/divmob/a/h$d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/divmob/a/h$d;-><init>(Lcom/divmob/a/h;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/divmob/a/h$d;->a:Lcom/divmob/a/h;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/divmob/a/h;->e:Lcom/divmob/a/h$a;

    iget-object v0, p0, Lcom/divmob/a/h$d;->a:Lcom/divmob/a/h;

    iget-object v1, v0, Lcom/divmob/a/h;->b:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/divmob/a/h$d;->a:Lcom/divmob/a/h;

    iget-boolean v0, v0, Lcom/divmob/a/h;->c:Z

    if-eqz v0, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/divmob/a/h$d;->a:Lcom/divmob/a/h;

    iget-object v0, v0, Lcom/divmob/a/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/divmob/a/h$d;->a:Lcom/divmob/a/h;

    iget-object v0, p0, Lcom/divmob/a/h$d;->a:Lcom/divmob/a/h;

    iget-object v0, v0, Lcom/divmob/a/h;->b:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/a/h$a;

    iput-object v0, v2, Lcom/divmob/a/h;->e:Lcom/divmob/a/h$a;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/divmob/a/h$d;->a:Lcom/divmob/a/h;

    iget-object v0, v0, Lcom/divmob/a/h;->e:Lcom/divmob/a/h$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/a/h$d;->a:Lcom/divmob/a/h;

    iget-object v0, v0, Lcom/divmob/a/h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/divmob/a/h$d;->a:Lcom/divmob/a/h;

    iget-object v1, p0, Lcom/divmob/a/h$d;->a:Lcom/divmob/a/h;

    iget-object v1, v1, Lcom/divmob/a/h;->e:Lcom/divmob/a/h$a;

    invoke-virtual {v0, v1}, Lcom/divmob/a/h;->a(Lcom/divmob/a/h$a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/divmob/a/h$d;->a:Lcom/divmob/a/h;

    iget-object v1, v0, Lcom/divmob/a/h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/divmob/a/h$d;->a:Lcom/divmob/a/h;

    iget-object v0, v0, Lcom/divmob/a/h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/divmob/a/h$d;->a:Lcom/divmob/a/h;

    iget-object v0, v0, Lcom/divmob/a/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    :try_start_4
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method
