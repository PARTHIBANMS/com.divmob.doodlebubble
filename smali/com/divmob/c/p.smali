.class Lcom/divmob/c/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/divmob/c/i;


# direct methods
.method constructor <init>(Lcom/divmob/c/i;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/c/p;->a:Lcom/divmob/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/divmob/c/p;->a:Lcom/divmob/c/i;

    iget-object v0, v0, Lcom/divmob/c/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/divmob/c/p;->a:Lcom/divmob/c/i;

    iget-object v2, v2, Lcom/divmob/c/i;->h:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/divmob/c/p;->a:Lcom/divmob/c/i;

    iget-object v1, v1, Lcom/divmob/c/i;->e:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
