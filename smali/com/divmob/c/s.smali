.class Lcom/divmob/c/s;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/divmob/a/c;


# instance fields
.field final synthetic a:Lcom/divmob/c/r;


# direct methods
.method constructor <init>(Lcom/divmob/c/r;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/c/s;->a:Lcom/divmob/c/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/divmob/c/s;)Lcom/divmob/c/r;
    .locals 1

    iget-object v0, p0, Lcom/divmob/c/s;->a:Lcom/divmob/c/r;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/divmob/a/h$a;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/divmob/c/s;->a:Lcom/divmob/c/r;

    iget-object v0, v0, Lcom/divmob/c/r;->h:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/divmob/c/s;->a:Lcom/divmob/c/r;

    iget-object v0, v0, Lcom/divmob/c/r;->h:Landroid/app/Activity;

    new-instance v1, Lcom/divmob/c/t;

    invoke-direct {v1, p0, p2}, Lcom/divmob/c/t;-><init>(Lcom/divmob/c/s;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/divmob/a/h$a;Ljava/io/InputStream;)V
    .locals 4

    iget-object v0, p0, Lcom/divmob/c/s;->a:Lcom/divmob/c/r;

    iget-object v0, v0, Lcom/divmob/c/r;->h:Landroid/app/Activity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/divmob/c/s;->a:Lcom/divmob/c/r;

    invoke-virtual {v0, p2}, Lcom/divmob/c/r;->a(Ljava/io/InputStream;)V

    new-instance v0, Lcom/divmob/a/h$a;

    const/4 v1, 0x2

    const-string v2, "bannerImage"

    iget-object v3, p0, Lcom/divmob/c/s;->a:Lcom/divmob/c/r;

    iget-object v3, v3, Lcom/divmob/c/r;->m:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/divmob/a/h$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/divmob/c/s;->a:Lcom/divmob/c/r;

    iget-object v1, v1, Lcom/divmob/c/r;->h:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/divmob/c/s;->a:Lcom/divmob/c/r;

    iget-object v3, v3, Lcom/divmob/c/r;->m:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/divmob/a/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/divmob/c/s;->a:Lcom/divmob/c/r;

    iget-object v0, v0, Lcom/divmob/c/r;->h:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/divmob/c/s;->a:Lcom/divmob/c/r;

    iget-object v2, v2, Lcom/divmob/c/r;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/divmob/a/d;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/divmob/c/s;->a:Lcom/divmob/c/r;

    iget-object v1, v1, Lcom/divmob/c/r;->h:Landroid/app/Activity;

    new-instance v2, Lcom/divmob/c/u;

    invoke-direct {v2, p0, v0}, Lcom/divmob/c/u;-><init>(Lcom/divmob/c/s;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/divmob/c/s;->a:Lcom/divmob/c/r;

    iget-object v1, v1, Lcom/divmob/c/r;->i:Lcom/divmob/a/e;

    invoke-virtual {v1, v0}, Lcom/divmob/a/e;->b(Lcom/divmob/a/h$a;)V

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
