.class public Lcom/divmob/listapp/MainActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Lcom/divmob/c/c;

.field b:Lcom/divmob/c/r;

.field c:Lcom/divmob/c/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/divmob/listapp/a$d;->activity_main:I

    invoke-virtual {p0, v0}, Lcom/divmob/listapp/MainActivity;->setContentView(I)V

    new-instance v0, Lcom/divmob/c/c;

    invoke-direct {v0, p0, v1, v2}, Lcom/divmob/c/c;-><init>(Landroid/app/Activity;ZZ)V

    iput-object v0, p0, Lcom/divmob/listapp/MainActivity;->a:Lcom/divmob/c/c;

    iget-object v0, p0, Lcom/divmob/listapp/MainActivity;->a:Lcom/divmob/c/c;

    invoke-virtual {v0}, Lcom/divmob/c/c;->b()V

    new-instance v0, Lcom/divmob/c/i;

    invoke-direct {v0, p0, v1, v2}, Lcom/divmob/c/i;-><init>(Landroid/app/Activity;ZI)V

    iput-object v0, p0, Lcom/divmob/listapp/MainActivity;->c:Lcom/divmob/c/i;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/divmob/listapp/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/divmob/listapp/a$e;->activity_main:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/divmob/listapp/MainActivity;->c:Lcom/divmob/c/i;

    invoke-virtual {v0}, Lcom/divmob/c/i;->d()V

    iget-object v0, p0, Lcom/divmob/listapp/MainActivity;->a:Lcom/divmob/c/c;

    invoke-virtual {v0}, Lcom/divmob/c/c;->e()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/divmob/listapp/MainActivity;->c:Lcom/divmob/c/i;

    invoke-virtual {v0}, Lcom/divmob/c/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/divmob/listapp/MainActivity;->c:Lcom/divmob/c/i;

    invoke-virtual {v0}, Lcom/divmob/c/i;->b()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
