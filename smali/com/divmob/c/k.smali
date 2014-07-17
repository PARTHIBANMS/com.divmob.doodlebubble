.class Lcom/divmob/c/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/divmob/c/j;

.field private final synthetic b:Landroid/graphics/Bitmap;

.field private final synthetic c:Lcom/divmob/a/h$a;


# direct methods
.method constructor <init>(Lcom/divmob/c/j;Landroid/graphics/Bitmap;Lcom/divmob/a/h$a;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/c/k;->a:Lcom/divmob/c/j;

    iput-object p2, p0, Lcom/divmob/c/k;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/divmob/c/k;->c:Lcom/divmob/a/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/divmob/c/k;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/c/k;->a:Lcom/divmob/c/j;

    invoke-static {v0}, Lcom/divmob/c/j;->a(Lcom/divmob/c/j;)Lcom/divmob/c/i;

    move-result-object v0

    iget-object v0, v0, Lcom/divmob/c/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/divmob/c/k;->c:Lcom/divmob/a/h$a;

    iget-object v1, v0, Lcom/divmob/a/h$a;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/divmob/c/k;->a:Lcom/divmob/c/j;

    invoke-static {v0}, Lcom/divmob/c/j;->a(Lcom/divmob/c/j;)Lcom/divmob/c/i;

    move-result-object v0

    iget-object v0, v0, Lcom/divmob/c/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/c/a;

    iget-object v0, v0, Lcom/divmob/c/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/divmob/c/k;->a:Lcom/divmob/c/j;

    invoke-static {v0}, Lcom/divmob/c/j;->a(Lcom/divmob/c/j;)Lcom/divmob/c/i;

    move-result-object v0

    iget-object v0, v0, Lcom/divmob/c/i;->g:[Landroid/widget/ImageButton;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/divmob/c/k;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/divmob/c/k;->a:Lcom/divmob/c/j;

    invoke-static {v0}, Lcom/divmob/c/j;->a(Lcom/divmob/c/j;)Lcom/divmob/c/i;

    move-result-object v0

    iget-object v0, v0, Lcom/divmob/c/i;->g:[Landroid/widget/ImageButton;

    aget-object v0, v0, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/divmob/c/k;->a:Lcom/divmob/c/j;

    invoke-static {v0}, Lcom/divmob/c/j;->a(Lcom/divmob/c/j;)Lcom/divmob/c/i;

    move-result-object v0

    iget-object v1, v0, Lcom/divmob/c/i;->h:[Ljava/lang/String;

    iget-object v0, p0, Lcom/divmob/c/k;->a:Lcom/divmob/c/j;

    invoke-static {v0}, Lcom/divmob/c/j;->a(Lcom/divmob/c/j;)Lcom/divmob/c/i;

    move-result-object v0

    iget-object v0, v0, Lcom/divmob/c/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/c/a;

    iget-object v0, v0, Lcom/divmob/c/a;->a:Ljava/lang/String;

    aput-object v0, v1, v2

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/divmob/c/k;->a:Lcom/divmob/c/j;

    invoke-static {v0}, Lcom/divmob/c/j;->a(Lcom/divmob/c/j;)Lcom/divmob/c/i;

    move-result-object v0

    iget-object v0, v0, Lcom/divmob/c/i;->g:[Landroid/widget/ImageButton;

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/divmob/c/k;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/divmob/c/k;->a:Lcom/divmob/c/j;

    invoke-static {v0}, Lcom/divmob/c/j;->a(Lcom/divmob/c/j;)Lcom/divmob/c/i;

    move-result-object v0

    iget-object v0, v0, Lcom/divmob/c/i;->g:[Landroid/widget/ImageButton;

    aget-object v0, v0, v3

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/divmob/c/k;->a:Lcom/divmob/c/j;

    invoke-static {v0}, Lcom/divmob/c/j;->a(Lcom/divmob/c/j;)Lcom/divmob/c/i;

    move-result-object v0

    iget-object v1, v0, Lcom/divmob/c/i;->h:[Ljava/lang/String;

    iget-object v0, p0, Lcom/divmob/c/k;->a:Lcom/divmob/c/j;

    invoke-static {v0}, Lcom/divmob/c/j;->a(Lcom/divmob/c/j;)Lcom/divmob/c/i;

    move-result-object v0

    iget-object v0, v0, Lcom/divmob/c/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/c/a;

    iget-object v0, v0, Lcom/divmob/c/a;->a:Ljava/lang/String;

    aput-object v0, v1, v3

    goto :goto_0
.end method
