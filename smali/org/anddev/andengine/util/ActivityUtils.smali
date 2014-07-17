.class public Lorg/anddev/andengine/util/ActivityUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAsync(Landroid/content/Context;IILjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lorg/anddev/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;IILjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;Z)V

    return-void
.end method

.method public static doAsync(Landroid/content/Context;IILjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/anddev/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;IILjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;Z)V

    return-void
.end method

.method public static doAsync(Landroid/content/Context;IILjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lorg/anddev/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;Z)V

    return-void
.end method

.method public static doAsync(Landroid/content/Context;IILjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;Z)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lorg/anddev/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;IILjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;Z)V

    return-void
.end method

.method public static doAsync(Landroid/content/Context;IILorg/anddev/andengine/util/AsyncCallable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "II",
            "Lorg/anddev/andengine/util/AsyncCallable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lorg/anddev/andengine/util/ActivityUtils$3;

    invoke-direct {v1, v0, p4}, Lorg/anddev/andengine/util/ActivityUtils$3;-><init>(Landroid/app/ProgressDialog;Lorg/anddev/andengine/util/Callback;)V

    invoke-interface {p3, v1, p5}, Lorg/anddev/andengine/util/AsyncCallable;->call(Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V

    return-void
.end method

.method public static doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lorg/anddev/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;Z)V

    return-void
.end method

.method public static doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lorg/anddev/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;Z)V

    return-void
.end method

.method public static doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Lorg/anddev/andengine/util/ActivityUtils$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p6

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/util/ActivityUtils$1;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZLjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/util/ActivityUtils$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;Z)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lorg/anddev/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;Z)V

    return-void
.end method

.method public static doProgressAsync(Landroid/content/Context;ILorg/anddev/andengine/util/progress/ProgressCallable;Lorg/anddev/andengine/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "I",
            "Lorg/anddev/andengine/util/progress/ProgressCallable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/util/ActivityUtils;->doProgressAsync(Landroid/content/Context;ILorg/anddev/andengine/util/progress/ProgressCallable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V

    return-void
.end method

.method public static doProgressAsync(Landroid/content/Context;ILorg/anddev/andengine/util/progress/ProgressCallable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "I",
            "Lorg/anddev/andengine/util/progress/ProgressCallable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lorg/anddev/andengine/util/ActivityUtils$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/util/ActivityUtils$2;-><init>(Landroid/content/Context;ILorg/anddev/andengine/util/progress/ProgressCallable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/util/ActivityUtils$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static keepScreenOn(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public static requestFullscreen(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    return-void
.end method

.method public static setScreenBrightness(Landroid/app/Activity;F)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
