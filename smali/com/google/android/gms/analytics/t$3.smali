.class Lcom/google/android/gms/analytics/t$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic sg:Lcom/google/android/gms/analytics/t;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/t;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/t$3;->sg:Lcom/google/android/gms/analytics/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/t$3;->sg:Lcom/google/android/gms/analytics/t;

    invoke-static {v0}, Lcom/google/android/gms/analytics/t;->e(Lcom/google/android/gms/analytics/t;)Lcom/google/android/gms/analytics/ag;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/analytics/ag;->bk()V

    return-void
.end method
