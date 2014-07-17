.class Lcom/divmob/c/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/divmob/c/r;


# direct methods
.method constructor <init>(Lcom/divmob/c/r;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/c/w;->a:Lcom/divmob/c/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/divmob/c/w;->a:Lcom/divmob/c/r;

    iget-object v2, v2, Lcom/divmob/c/r;->l:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/divmob/c/w;->a:Lcom/divmob/c/r;

    iget-object v1, v1, Lcom/divmob/c/r;->h:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
