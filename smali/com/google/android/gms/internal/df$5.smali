.class final Lcom/google/android/gms/internal/df$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic qp:Landroid/webkit/JsPromptResult;


# direct methods
.method constructor <init>(Landroid/webkit/JsPromptResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/df$5;->qp:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/df$5;->qp:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    return-void
.end method
