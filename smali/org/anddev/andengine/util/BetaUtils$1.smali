.class Lorg/anddev/andengine/util/BetaUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic val$pActivity:Landroid/app/Activity;

.field private final synthetic val$pOkIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/util/BetaUtils$1;->val$pOkIntent:Landroid/content/Intent;

    iput-object p2, p0, Lorg/anddev/andengine/util/BetaUtils$1;->val$pActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/util/BetaUtils$1;->val$pOkIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/util/BetaUtils$1;->val$pActivity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/anddev/andengine/util/BetaUtils$1;->val$pOkIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lorg/anddev/andengine/util/BetaUtils$1;->val$pActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
