.class Lorg/anddev/andengine/util/ActivityUtils$3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/anddev/andengine/util/Callback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic val$pCallback:Lorg/anddev/andengine/util/Callback;

.field private final synthetic val$pd:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Landroid/app/ProgressDialog;Lorg/anddev/andengine/util/Callback;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/util/ActivityUtils$3;->val$pd:Landroid/app/ProgressDialog;

    iput-object p2, p0, Lorg/anddev/andengine/util/ActivityUtils$3;->val$pCallback:Lorg/anddev/andengine/util/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/util/ActivityUtils$3;->val$pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/anddev/andengine/util/ActivityUtils$3;->val$pCallback:Lorg/anddev/andengine/util/Callback;

    invoke-interface {v0, p1}, Lorg/anddev/andengine/util/Callback;->onCallback(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error"

    invoke-static {v1, v0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
