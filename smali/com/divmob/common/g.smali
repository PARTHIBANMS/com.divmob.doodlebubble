.class Lcom/divmob/common/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/divmob/common/ClassicMenu;


# direct methods
.method constructor <init>(Lcom/divmob/common/ClassicMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/common/g;->a:Lcom/divmob/common/ClassicMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/divmob/common/g;->a:Lcom/divmob/common/ClassicMenu;

    invoke-virtual {v0}, Lcom/divmob/common/ClassicMenu;->finish()V

    return-void
.end method
