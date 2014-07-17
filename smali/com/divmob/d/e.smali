.class Lcom/divmob/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/divmob/d/a;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/divmob/d/a;I)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/d/e;->a:Lcom/divmob/d/a;

    iput p2, p0, Lcom/divmob/d/e;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/divmob/d/a;->c()[[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/divmob/d/e;->b:I

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/divmob/d/e;->a:Lcom/divmob/d/a;

    invoke-static {v1}, Lcom/divmob/d/a;->b(Lcom/divmob/d/a;)Lorg/anddev/andengine/ui/activity/BaseGameActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/anddev/andengine/ui/activity/BaseGameActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
