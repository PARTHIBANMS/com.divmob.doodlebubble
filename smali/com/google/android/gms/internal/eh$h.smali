.class public final Lcom/google/android/gms/internal/eh$h;
.super Lcom/google/android/gms/internal/eh$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/eh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/eh",
        "<TT;>.b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic BC:Lcom/google/android/gms/internal/eh;

.field public final BH:Landroid/os/Bundle;

.field public final BI:Landroid/os/IBinder;

.field public final statusCode:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/eh;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/eh$b;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;)V

    iput p2, p0, Lcom/google/android/gms/internal/eh$h;->statusCode:I

    iput-object p3, p0, Lcom/google/android/gms/internal/eh$h;->BI:Landroid/os/IBinder;

    iput-object p4, p0, Lcom/google/android/gms/internal/eh$h;->BH:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/eh$h;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/eh;->a(Lcom/google/android/gms/internal/eh;I)I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/eh$h;->statusCode:I

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/google/android/gms/internal/eh$h;->BH:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/eh$h;->BH:Landroid/os/Bundle;

    const-string v2, "pendingIntent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    invoke-static {v2}, Lcom/google/android/gms/internal/eh;->d(Lcom/google/android/gms/internal/eh;)Lcom/google/android/gms/internal/eh$f;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    invoke-static {v2}, Lcom/google/android/gms/internal/eh;->e(Lcom/google/android/gms/internal/eh;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ej;->y(Landroid/content/Context;)Lcom/google/android/gms/internal/ej;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/eh;->aF()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    invoke-static {v4}, Lcom/google/android/gms/internal/eh;->d(Lcom/google/android/gms/internal/eh;)Lcom/google/android/gms/internal/eh$f;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ej;->b(Ljava/lang/String;Lcom/google/android/gms/internal/eh$f;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/eh;->a(Lcom/google/android/gms/internal/eh;Lcom/google/android/gms/internal/eh$f;)Lcom/google/android/gms/internal/eh$f;

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/eh;->a(Lcom/google/android/gms/internal/eh;I)I

    iget-object v2, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/eh;->a(Lcom/google/android/gms/internal/eh;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v1, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    invoke-static {v1}, Lcom/google/android/gms/internal/eh;->a(Lcom/google/android/gms/internal/eh;)Lcom/google/android/gms/internal/ei;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    iget v3, p0, Lcom/google/android/gms/internal/eh$h;->statusCode:I

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ei;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :sswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/eh$h;->BI:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/eh;->aG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    iget-object v2, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    iget-object v3, p0, Lcom/google/android/gms/internal/eh$h;->BI:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/eh;->p(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/eh;->a(Lcom/google/android/gms/internal/eh;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    invoke-static {v0}, Lcom/google/android/gms/internal/eh;->c(Lcom/google/android/gms/internal/eh;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/eh;->a(Lcom/google/android/gms/internal/eh;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    invoke-static {v0}, Lcom/google/android/gms/internal/eh;->a(Lcom/google/android/gms/internal/eh;)Lcom/google/android/gms/internal/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ei;->bo()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    invoke-static {v0}, Lcom/google/android/gms/internal/eh;->e(Lcom/google/android/gms/internal/eh;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ej;->y(Landroid/content/Context;)Lcom/google/android/gms/internal/ej;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/eh;->aF()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    invoke-static {v3}, Lcom/google/android/gms/internal/eh;->d(Lcom/google/android/gms/internal/eh;)Lcom/google/android/gms/internal/eh$f;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ej;->b(Ljava/lang/String;Lcom/google/android/gms/internal/eh$f;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/eh;->a(Lcom/google/android/gms/internal/eh;Lcom/google/android/gms/internal/eh$f;)Lcom/google/android/gms/internal/eh$f;

    iget-object v0, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/eh;->a(Lcom/google/android/gms/internal/eh;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/eh;->a(Lcom/google/android/gms/internal/eh;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    invoke-static {v0}, Lcom/google/android/gms/internal/eh;->a(Lcom/google/android/gms/internal/eh;)Lcom/google/android/gms/internal/ei;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ei;->a(Lcom/google/android/gms/common/ConnectionResult;)V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/eh$h;->BC:Lcom/google/android/gms/internal/eh;

    invoke-static {v0, v5}, Lcom/google/android/gms/internal/eh;->a(Lcom/google/android/gms/internal/eh;I)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A fatal developer error has occurred. Check the logs for further information."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, v1

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method protected cP()V
    .locals 0

    return-void
.end method
