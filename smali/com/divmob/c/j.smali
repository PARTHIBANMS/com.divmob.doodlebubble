.class Lcom/divmob/c/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/divmob/a/c;


# instance fields
.field final synthetic a:Lcom/divmob/c/i;


# direct methods
.method constructor <init>(Lcom/divmob/c/i;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/c/j;->a:Lcom/divmob/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/divmob/c/j;)Lcom/divmob/c/i;
    .locals 1

    iget-object v0, p0, Lcom/divmob/c/j;->a:Lcom/divmob/c/i;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/divmob/a/h$a;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/divmob/c/j;->a:Lcom/divmob/c/i;

    iget-object v0, v0, Lcom/divmob/c/i;->e:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/divmob/c/j;->a:Lcom/divmob/c/i;

    iget-object v0, v0, Lcom/divmob/c/i;->e:Landroid/app/Activity;

    new-instance v1, Lcom/divmob/c/k;

    invoke-direct {v1, p0, p2, p1}, Lcom/divmob/c/k;-><init>(Lcom/divmob/c/j;Landroid/graphics/Bitmap;Lcom/divmob/a/h$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/divmob/a/h$a;Ljava/io/InputStream;)V
    .locals 7

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/divmob/c/j;->a:Lcom/divmob/c/i;

    iget-object v0, v0, Lcom/divmob/c/i;->e:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/divmob/c/j;->a:Lcom/divmob/c/i;

    invoke-virtual {v0, p2}, Lcom/divmob/c/i;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/divmob/c/j;->a:Lcom/divmob/c/i;

    iget-object v0, v0, Lcom/divmob/c/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v2, v0, :cond_3

    iget-object v0, p0, Lcom/divmob/c/j;->a:Lcom/divmob/c/i;

    iget-object v0, v0, Lcom/divmob/c/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    :goto_0
    const/4 v0, 0x0

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_0

    new-instance v4, Lcom/divmob/a/h$a;

    const-string v5, "bannerImage"

    iget-object v0, p0, Lcom/divmob/c/j;->a:Lcom/divmob/c/i;

    iget-object v0, v0, Lcom/divmob/c/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/c/a;

    iget-object v0, v0, Lcom/divmob/c/a;->b:Ljava/lang/String;

    invoke-direct {v4, v2, v5, v0}, Lcom/divmob/a/h$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/divmob/c/j;->a:Lcom/divmob/c/i;

    iget-object v5, v0, Lcom/divmob/c/i;->e:Landroid/app/Activity;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/divmob/c/j;->a:Lcom/divmob/c/i;

    iget-object v0, v0, Lcom/divmob/c/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/c/a;

    iget-object v0, v0, Lcom/divmob/c/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/divmob/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/divmob/c/j;->a:Lcom/divmob/c/i;

    iget-object v4, v0, Lcom/divmob/c/i;->e:Landroid/app/Activity;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/divmob/c/j;->a:Lcom/divmob/c/i;

    iget-object v0, v0, Lcom/divmob/c/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/c/a;

    iget-object v0, v0, Lcom/divmob/c/a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/divmob/a/d;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v4, p0, Lcom/divmob/c/j;->a:Lcom/divmob/c/i;

    iget-object v4, v4, Lcom/divmob/c/i;->e:Landroid/app/Activity;

    new-instance v5, Lcom/divmob/c/l;

    invoke-direct {v5, p0, v0, v3}, Lcom/divmob/c/l;-><init>(Lcom/divmob/c/j;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/divmob/c/j;->a:Lcom/divmob/c/i;

    iget-object v0, v0, Lcom/divmob/c/i;->f:Lcom/divmob/a/e;

    invoke-virtual {v0, v4}, Lcom/divmob/a/e;->b(Lcom/divmob/a/h$a;)V

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public a(Lcom/divmob/a/h;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/divmob/a/h;Lcom/divmob/a/h$a;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/divmob/a/h;Lcom/divmob/a/h$a;JJ)V
    .locals 0

    return-void
.end method

.method public b(Lcom/divmob/a/h;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/divmob/a/h;Lcom/divmob/a/h$a;)V
    .locals 0

    return-void
.end method
