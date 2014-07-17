.class Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;

.field private final synthetic val$pCallback:Lorg/anddev/andengine/util/Callback;

.field private final synthetic val$pLevelID:I

.field private final synthetic val$pSecondsElapsed:I

.field private final synthetic val$pSolved:Z


# direct methods
.method constructor <init>(Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;IZILorg/anddev/andengine/util/Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;->this$0:Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;

    iput p2, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pLevelID:I

    iput-boolean p3, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pSolved:Z

    iput p4, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pSecondsElapsed:I

    iput-object p5, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pCallback:Lorg/anddev/andengine/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v0, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;->this$0:Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;

    #getter for: Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->mSubmitURL:Ljava/lang/String;
    invoke-static {v0}, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->access$0(Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "level_id"

    iget v5, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pLevelID:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "solved"

    iget-boolean v0, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pSolved:Z

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-direct {v4, v5, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "secondsplayed"

    iget v5, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pSecondsElapsed:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "player_id"

    iget-object v5, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;->this$0:Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;

    #getter for: Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->mPlayerID:I
    invoke-static {v5}, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->access$1(Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "secret"

    iget-object v5, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;->this$0:Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;

    #getter for: Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->mSecret:Ljava/lang/String;
    invoke-static {v5}, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->access$2(Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v0, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lorg/anddev/andengine/util/StreamUtils;->readFully(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<success/>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pCallback:Lorg/anddev/andengine/util/Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pCallback:Lorg/anddev/andengine/util/Callback;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/anddev/andengine/util/Callback;->onCallback(Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "0"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pCallback:Lorg/anddev/andengine/util/Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pCallback:Lorg/anddev/andengine/util/Callback;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/anddev/andengine/util/Callback;->onCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pCallback:Lorg/anddev/andengine/util/Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pCallback:Lorg/anddev/andengine/util/Callback;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/anddev/andengine/util/Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v0, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pCallback:Lorg/anddev/andengine/util/Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pCallback:Lorg/anddev/andengine/util/Callback;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/anddev/andengine/util/Callback;->onCallback(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
