.class Lcom/divmob/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/divmob/c/c;


# direct methods
.method constructor <init>(Lcom/divmob/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/c/h;->a:Lcom/divmob/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/divmob/c/h;->a:Lcom/divmob/c/c;

    iget-object v2, v2, Lcom/divmob/c/c;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/divmob/c/h;->a:Lcom/divmob/c/c;

    iget-object v1, v1, Lcom/divmob/c/c;->d:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/divmob/c/h;->a:Lcom/divmob/c/c;

    invoke-virtual {v0}, Lcom/divmob/c/c;->d()V

    return-void
.end method
