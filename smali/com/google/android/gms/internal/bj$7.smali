.class Lcom/google/android/gms/internal/bj$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic mU:Lcom/google/android/gms/internal/bj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/bj$7;->mU:Lcom/google/android/gms/internal/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bj$7;->mU:Lcom/google/android/gms/internal/bj;

    invoke-static {v0}, Lcom/google/android/gms/internal/bj;->a(Lcom/google/android/gms/internal/bj;)Lcom/google/android/gms/internal/bh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/bh;->onAdOpened()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not call onAdOpened."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/da;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
