.class Lorg/anddev/andengine/util/ActivityUtils$1;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mException:Ljava/lang/Exception;

.field private mPD:Landroid/app/ProgressDialog;

.field private final synthetic val$pCallable:Ljava/util/concurrent/Callable;

.field private final synthetic val$pCallback:Lorg/anddev/andengine/util/Callback;

.field private final synthetic val$pCancelable:Z

.field private final synthetic val$pContext:Landroid/content/Context;

.field private final synthetic val$pExceptionCallback:Lorg/anddev/andengine/util/Callback;

.field private final synthetic val$pMessage:Ljava/lang/CharSequence;

.field private final synthetic val$pTitle:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V
    .locals 1

    iput-object p1, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->val$pContext:Landroid/content/Context;

    iput-object p2, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->val$pTitle:Ljava/lang/CharSequence;

    iput-object p3, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->val$pMessage:Ljava/lang/CharSequence;

    iput-boolean p4, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->val$pCancelable:Z

    iput-object p5, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->val$pCallable:Ljava/util/concurrent/Callable;

    iput-object p6, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->val$pCallback:Lorg/anddev/andengine/util/Callback;

    iput-object p7, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->val$pExceptionCallback:Lorg/anddev/andengine/util/Callback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->mException:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/ActivityUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->val$pCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->mException:Ljava/lang/Exception;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->mPD:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lorg/anddev/andengine/util/ActivityUtils$1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/anddev/andengine/ui/activity/BaseActivity$CancelledException;

    invoke-direct {v0}, Lorg/anddev/andengine/ui/activity/BaseActivity$CancelledException;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->mException:Ljava/lang/Exception;

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->mException:Ljava/lang/Exception;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->val$pCallback:Lorg/anddev/andengine/util/Callback;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/util/Callback;->onCallback(Ljava/lang/Object;)V

    :goto_1
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error"

    invoke-static {v1, v0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->val$pExceptionCallback:Lorg/anddev/andengine/util/Callback;

    if-nez v0, :cond_2

    const-string v0, "Error"

    iget-object v1, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->mException:Ljava/lang/Exception;

    invoke-static {v0, v1}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->val$pExceptionCallback:Lorg/anddev/andengine/util/Callback;

    iget-object v1, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->mException:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lorg/anddev/andengine/util/Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onPreExecute()V
    .locals 5

    iget-object v0, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->val$pContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->val$pTitle:Ljava/lang/CharSequence;

    iget-object v2, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->val$pMessage:Ljava/lang/CharSequence;

    const/4 v3, 0x1

    iget-boolean v4, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->val$pCancelable:Z

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->mPD:Landroid/app/ProgressDialog;

    iget-boolean v0, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->val$pCancelable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->mPD:Landroid/app/ProgressDialog;

    new-instance v1, Lorg/anddev/andengine/util/ActivityUtils$1$1;

    iget-object v2, p0, Lorg/anddev/andengine/util/ActivityUtils$1;->val$pExceptionCallback:Lorg/anddev/andengine/util/Callback;

    invoke-direct {v1, p0, v2}, Lorg/anddev/andengine/util/ActivityUtils$1$1;-><init>(Lorg/anddev/andengine/util/ActivityUtils$1;Lorg/anddev/andengine/util/Callback;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
