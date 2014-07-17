.class Lcom/divmob/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/divmob/a/h$b;


# instance fields
.field final synthetic a:Lcom/divmob/a/e;

.field private final synthetic b:Lcom/divmob/a/h$a;

.field private final synthetic c:J


# direct methods
.method constructor <init>(Lcom/divmob/a/e;Lcom/divmob/a/h$a;J)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/a/f;->a:Lcom/divmob/a/e;

    iput-object p2, p0, Lcom/divmob/a/f;->b:Lcom/divmob/a/h$a;

    iput-wide p3, p0, Lcom/divmob/a/f;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 7

    iget-object v0, p0, Lcom/divmob/a/f;->a:Lcom/divmob/a/e;

    iget-object v0, v0, Lcom/divmob/a/e;->g:Lcom/divmob/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/a/f;->a:Lcom/divmob/a/e;

    iget-object v0, v0, Lcom/divmob/a/e;->g:Lcom/divmob/a/c;

    iget-object v1, p0, Lcom/divmob/a/f;->a:Lcom/divmob/a/e;

    iget-object v2, p0, Lcom/divmob/a/f;->b:Lcom/divmob/a/h$a;

    iget-wide v3, p0, Lcom/divmob/a/f;->c:J

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/divmob/a/c;->a(Lcom/divmob/a/h;Lcom/divmob/a/h$a;JJ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/divmob/a/f;->a:Lcom/divmob/a/e;

    iget-object v0, v0, Lcom/divmob/a/e;->g:Lcom/divmob/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/a/f;->a:Lcom/divmob/a/e;

    iget-object v0, v0, Lcom/divmob/a/e;->g:Lcom/divmob/a/c;

    iget-object v1, p0, Lcom/divmob/a/f;->b:Lcom/divmob/a/h$a;

    invoke-interface {v0, v1, p1}, Lcom/divmob/a/c;->a(Lcom/divmob/a/h$a;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
