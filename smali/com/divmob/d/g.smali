.class Lcom/divmob/d/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/divmob/d/a$a;


# direct methods
.method constructor <init>(Lcom/divmob/d/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/d/g;->a:Lcom/divmob/d/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/divmob/d/g;->a:Lcom/divmob/d/a$a;

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/divmob/d/g;->a:Lcom/divmob/d/a$a;

    invoke-direct {v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-static {v0, v1}, Lcom/divmob/d/a$a;->a(Lcom/divmob/d/a$a;Landroid/view/GestureDetector;)V

    return-void
.end method
