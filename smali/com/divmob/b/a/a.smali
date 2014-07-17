.class public Lcom/divmob/b/a/a;
.super Landroid/app/AlertDialog;


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/divmob/b/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/b/a/a;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/divmob/b/a/a;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/divmob/b/a/a;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/divmob/b/a/a;->setView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/divmob/b/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060022

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/divmob/b/a/a;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
