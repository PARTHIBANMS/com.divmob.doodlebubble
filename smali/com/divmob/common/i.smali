.class Lcom/divmob/common/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/divmob/common/ClassicMenu;


# direct methods
.method constructor <init>(Lcom/divmob/common/ClassicMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/common/i;->a:Lcom/divmob/common/ClassicMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/divmob/common/i;->a:Lcom/divmob/common/ClassicMenu;

    const v2, 0x7f060025

    invoke-virtual {v1, v2}, Lcom/divmob/common/ClassicMenu;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/divmob/common/i;->a:Lcom/divmob/common/ClassicMenu;

    invoke-virtual {v1, v0}, Lcom/divmob/common/ClassicMenu;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/divmob/common/i;->a:Lcom/divmob/common/ClassicMenu;

    invoke-virtual {v0}, Lcom/divmob/common/ClassicMenu;->finish()V

    return-void
.end method
