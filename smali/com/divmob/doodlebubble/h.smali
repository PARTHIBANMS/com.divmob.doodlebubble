.class Lcom/divmob/doodlebubble/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/divmob/doodlebubble/GameActivity;


# direct methods
.method constructor <init>(Lcom/divmob/doodlebubble/GameActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/doodlebubble/h;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    :try_start_0
    const-string v0, "http://m.divmob.com/"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/divmob/doodlebubble/h;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-virtual {v0, v1}, Lcom/divmob/doodlebubble/GameActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v0, "http://www.amazon.com/gp/mas/dl/android?p=com.divmob.spacewar.gamelite&showAll=1"

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/divmob/doodlebubble/h;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-virtual {v0, v1}, Lcom/divmob/doodlebubble/GameActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
