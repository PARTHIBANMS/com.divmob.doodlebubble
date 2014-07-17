.class public Lcom/divmob/c/x;
.super Landroid/view/View;


# instance fields
.field a:F

.field b:F

.field c:F

.field d:F

.field e:Landroid/graphics/Bitmap;

.field f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/divmob/c/x;->c:F

    iput v0, p0, Lcom/divmob/c/x;->d:F

    return-void
.end method


# virtual methods
.method public a(FF)V
    .locals 0

    iput p1, p0, Lcom/divmob/c/x;->c:F

    iput p2, p0, Lcom/divmob/c/x;->d:F

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/c/x;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/divmob/c/x;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/divmob/c/x;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/divmob/c/x;->e:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/divmob/c/x;->c:F

    iget v2, p0, Lcom/divmob/c/x;->d:F

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/divmob/c/x;->a:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/divmob/c/x;->b:F

    iget-object v1, p0, Lcom/divmob/c/x;->e:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/divmob/c/x;->a:F

    iget v2, p0, Lcom/divmob/c/x;->c:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/divmob/c/x;->a:F

    iget v2, p0, Lcom/divmob/c/x;->c:F

    iget-object v3, p0, Lcom/divmob/c/x;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/divmob/c/x;->b:F

    iget v2, p0, Lcom/divmob/c/x;->d:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/divmob/c/x;->b:F

    iget v2, p0, Lcom/divmob/c/x;->d:F

    iget-object v3, p0, Lcom/divmob/c/x;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
