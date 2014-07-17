.class public abstract Lcom/divmob/a/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/divmob/a/h$a;,
        Lcom/divmob/a/h$b;,
        Lcom/divmob/a/h$c;,
        Lcom/divmob/a/h$d;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/divmob/a/h$a;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Z

.field protected d:Ljava/lang/Thread;

.field protected e:Lcom/divmob/a/h$a;

.field protected final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected g:Lcom/divmob/a/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/divmob/a/h;-><init>(Landroid/content/Context;Lcom/divmob/a/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/divmob/a/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/divmob/a/h;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/divmob/a/h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/a/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/divmob/a/h;->g:Lcom/divmob/a/c;

    invoke-direct {p0}, Lcom/divmob/a/h;->c()V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/divmob/a/h;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/divmob/a/h;->c:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/divmob/a/h$d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/divmob/a/h$d;-><init>(Lcom/divmob/a/h;Lcom/divmob/a/h$d;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/divmob/a/h;->d:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/divmob/a/h;->d:Ljava/lang/Thread;

    const-string v1, "Resource-Downloading"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/divmob/a/h;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/divmob/a/h;->g:Lcom/divmob/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/a/h;->g:Lcom/divmob/a/c;

    invoke-interface {v0, p0}, Lcom/divmob/a/c;->a(Lcom/divmob/a/h;)V

    goto :goto_0
.end method

.method private d(Lcom/divmob/a/h$a;)I
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/divmob/a/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    const/4 v1, -0x1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/divmob/a/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/a/h$a;

    invoke-virtual {v0, p1}, Lcom/divmob/a/h$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/divmob/a/c;
    .locals 1

    iget-object v0, p0, Lcom/divmob/a/h;->g:Lcom/divmob/a/c;

    return-object v0
.end method

.method public a(Lcom/divmob/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/a/h;->g:Lcom/divmob/a/c;

    return-void
.end method

.method public abstract a(Lcom/divmob/a/h$a;)Z
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/divmob/a/h;->b:Ljava/util/ArrayList;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/divmob/a/h;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/divmob/a/h;->e:Lcom/divmob/a/h$a;

    iget-object v0, p0, Lcom/divmob/a/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/divmob/a/h;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/a/h;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iput-object v2, p0, Lcom/divmob/a/h;->d:Ljava/lang/Thread;

    :cond_0
    iget-object v0, p0, Lcom/divmob/a/h;->g:Lcom/divmob/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/divmob/a/h;->g:Lcom/divmob/a/c;

    invoke-interface {v0, p0}, Lcom/divmob/a/c;->b(Lcom/divmob/a/h;)V

    iput-object v2, p0, Lcom/divmob/a/h;->g:Lcom/divmob/a/c;

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Lcom/divmob/a/h$a;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/divmob/a/h;->d:Ljava/lang/Thread;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/divmob/a/h;->c()V

    :cond_0
    iget-object v1, p0, Lcom/divmob/a/h;->e:Lcom/divmob/a/h$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/divmob/a/h;->e:Lcom/divmob/a/h$a;

    invoke-virtual {v1, p1}, Lcom/divmob/a/h$a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/divmob/a/h;->b:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/divmob/a/h;->d(Lcom/divmob/a/h$a;)I

    move-result v1

    if-lez v1, :cond_4

    iget-object v3, p0, Lcom/divmob/a/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/divmob/a/h;->b:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/divmob/a/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_5

    iget-object v0, p0, Lcom/divmob/a/h;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/divmob/a/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_3
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    if-gez v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/divmob/a/h;->b:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/divmob/a/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/a/h$a;

    invoke-virtual {v0}, Lcom/divmob/a/h$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public c(Lcom/divmob/a/h$a;)Z
    .locals 3

    iget-object v1, p0, Lcom/divmob/a/h;->b:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/divmob/a/h;->d(Lcom/divmob/a/h$a;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/divmob/a/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
