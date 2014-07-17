.class public Lcom/divmob/a/e;
.super Lcom/divmob/a/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/divmob/a/h;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/divmob/a/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/divmob/a/h;-><init>(Landroid/content/Context;Lcom/divmob/a/c;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lorg/apache/http/HttpEntity;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/divmob/a/h$a;)Z
    .locals 10

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/divmob/a/e;->g:Lcom/divmob/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/a/e;->g:Lcom/divmob/a/c;

    invoke-interface {v0, p0, p1}, Lcom/divmob/a/c;->a(Lcom/divmob/a/h;Lcom/divmob/a/h$a;)V

    :cond_0
    iget-object v0, p1, Lcom/divmob/a/h$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/divmob/a/e;->a(Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    iget v0, p1, Lcom/divmob/a/h$a;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/divmob/a/e;->g:Lcom/divmob/a/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/divmob/a/e;->g:Lcom/divmob/a/c;

    invoke-interface {v0, p1, v4}, Lcom/divmob/a/c;->a(Lcom/divmob/a/h$a;Ljava/io/InputStream;)V

    :cond_1
    iget v0, p1, Lcom/divmob/a/h$a;->c:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/divmob/a/e;->a:Landroid/content/Context;

    iget v1, p1, Lcom/divmob/a/h$a;->c:I

    iget v2, p1, Lcom/divmob/a/h$a;->d:I

    iget v3, p1, Lcom/divmob/a/h$a;->e:I

    iget-object v5, p1, Lcom/divmob/a/h$a;->b:Ljava/lang/String;

    new-instance v6, Lcom/divmob/a/f;

    invoke-direct {v6, p0, p1, v8, v9}, Lcom/divmob/a/f;-><init>(Lcom/divmob/a/e;Lcom/divmob/a/h$a;J)V

    invoke-static/range {v0 .. v6}, Lcom/divmob/a/d;->a(Landroid/content/Context;IIILjava/io/InputStream;Ljava/lang/String;Lcom/divmob/a/h$b;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/divmob/a/e;->g:Lcom/divmob/a/c;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/divmob/a/e;->g:Lcom/divmob/a/c;

    invoke-interface {v0, p0, p1}, Lcom/divmob/a/c;->b(Lcom/divmob/a/h;Lcom/divmob/a/h$a;)V

    :cond_3
    iget-object v0, p0, Lcom/divmob/a/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/divmob/a/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/divmob/a/e;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
