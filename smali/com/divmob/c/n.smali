.class Lcom/divmob/c/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/divmob/c/i;


# direct methods
.method constructor <init>(Lcom/divmob/c/i;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/c/n;->a:Lcom/divmob/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/divmob/c/n;->a:Lcom/divmob/c/i;

    invoke-virtual {v0}, Lcom/divmob/c/i;->c()V

    iget-object v0, p0, Lcom/divmob/c/n;->a:Lcom/divmob/c/i;

    iget-object v0, v0, Lcom/divmob/c/i;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
