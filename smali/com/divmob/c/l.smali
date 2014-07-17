.class Lcom/divmob/c/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/divmob/c/j;

.field private final synthetic b:Landroid/graphics/Bitmap;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/divmob/c/j;Landroid/graphics/Bitmap;I)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/c/l;->a:Lcom/divmob/c/j;

    iput-object p2, p0, Lcom/divmob/c/l;->b:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/divmob/c/l;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/divmob/c/l;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/c/l;->a:Lcom/divmob/c/j;

    invoke-static {v0}, Lcom/divmob/c/j;->a(Lcom/divmob/c/j;)Lcom/divmob/c/i;

    move-result-object v0

    iget-object v0, v0, Lcom/divmob/c/i;->g:[Landroid/widget/ImageButton;

    iget v1, p0, Lcom/divmob/c/l;->c:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/divmob/c/l;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/divmob/c/l;->a:Lcom/divmob/c/j;

    invoke-static {v0}, Lcom/divmob/c/j;->a(Lcom/divmob/c/j;)Lcom/divmob/c/i;

    move-result-object v0

    iget-object v0, v0, Lcom/divmob/c/i;->g:[Landroid/widget/ImageButton;

    iget v1, p0, Lcom/divmob/c/l;->c:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/divmob/c/l;->a:Lcom/divmob/c/j;

    invoke-static {v0}, Lcom/divmob/c/j;->a(Lcom/divmob/c/j;)Lcom/divmob/c/i;

    move-result-object v0

    iget-object v1, v0, Lcom/divmob/c/i;->h:[Ljava/lang/String;

    iget v2, p0, Lcom/divmob/c/l;->c:I

    iget-object v0, p0, Lcom/divmob/c/l;->a:Lcom/divmob/c/j;

    invoke-static {v0}, Lcom/divmob/c/j;->a(Lcom/divmob/c/j;)Lcom/divmob/c/i;

    move-result-object v0

    iget-object v0, v0, Lcom/divmob/c/i;->i:Ljava/util/ArrayList;

    iget v3, p0, Lcom/divmob/c/l;->c:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/c/a;

    iget-object v0, v0, Lcom/divmob/c/a;->a:Ljava/lang/String;

    aput-object v0, v1, v2

    :cond_0
    return-void
.end method
