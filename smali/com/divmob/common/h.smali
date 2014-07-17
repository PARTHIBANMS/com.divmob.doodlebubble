.class Lcom/divmob/common/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/divmob/common/ClassicMenu;


# direct methods
.method constructor <init>(Lcom/divmob/common/ClassicMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/common/h;->a:Lcom/divmob/common/ClassicMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
