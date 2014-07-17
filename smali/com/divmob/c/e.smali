.class Lcom/divmob/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/divmob/c/d;

.field private final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/divmob/c/d;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/c/e;->a:Lcom/divmob/c/d;

    iput-object p2, p0, Lcom/divmob/c/e;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/divmob/c/e;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/divmob/c/e;->a:Lcom/divmob/c/d;

    invoke-static {v0}, Lcom/divmob/c/d;->a(Lcom/divmob/c/d;)Lcom/divmob/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/divmob/c/e;->b:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/divmob/c/c;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/divmob/c/e;->a:Lcom/divmob/c/d;

    invoke-static {v0}, Lcom/divmob/c/d;->a(Lcom/divmob/c/d;)Lcom/divmob/c/c;

    move-result-object v0

    iget-object v0, v0, Lcom/divmob/c/c;->b:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/divmob/a/b;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/divmob/c/e;->a:Lcom/divmob/c/d;

    invoke-static {v1}, Lcom/divmob/c/d;->a(Lcom/divmob/c/d;)Lcom/divmob/c/c;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/divmob/c/c;->a(Lcom/divmob/c/c;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/divmob/c/e;->a:Lcom/divmob/c/d;

    invoke-static {v1}, Lcom/divmob/c/d;->a(Lcom/divmob/c/d;)Lcom/divmob/c/c;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/divmob/c/c;->b(Lcom/divmob/c/c;Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget-object v2, p0, Lcom/divmob/c/e;->a:Lcom/divmob/c/d;

    invoke-static {v2}, Lcom/divmob/c/d;->a(Lcom/divmob/c/d;)Lcom/divmob/c/c;

    move-result-object v2

    iget v2, v2, Lcom/divmob/c/c;->l:I

    iget-object v3, p0, Lcom/divmob/c/e;->a:Lcom/divmob/c/d;

    invoke-static {v3}, Lcom/divmob/c/d;->a(Lcom/divmob/c/d;)Lcom/divmob/c/c;

    move-result-object v3

    iget v3, v3, Lcom/divmob/c/c;->m:I

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/divmob/a/b;->a(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/divmob/c/e;->a:Lcom/divmob/c/d;

    invoke-static {v1}, Lcom/divmob/c/d;->a(Lcom/divmob/c/d;)Lcom/divmob/c/c;

    move-result-object v1

    iget-object v1, v1, Lcom/divmob/c/c;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/divmob/c/e;->a:Lcom/divmob/c/d;

    invoke-static {v0}, Lcom/divmob/c/d;->a(Lcom/divmob/c/d;)Lcom/divmob/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/divmob/c/e;->a:Lcom/divmob/c/d;

    invoke-static {v1}, Lcom/divmob/c/d;->a(Lcom/divmob/c/d;)Lcom/divmob/c/c;

    move-result-object v1

    iget-object v1, v1, Lcom/divmob/c/c;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/divmob/c/c;->g:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/divmob/c/e;->a:Lcom/divmob/c/d;

    invoke-static {v0}, Lcom/divmob/c/d;->a(Lcom/divmob/c/d;)Lcom/divmob/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/divmob/c/c;->a(Lcom/divmob/c/c;)V

    goto :goto_0
.end method
