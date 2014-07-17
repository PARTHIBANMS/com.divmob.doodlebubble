.class public abstract Lorg/anddev/andengine/ui/activity/BaseActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/ui/activity/BaseActivity$CancelledException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected doAsync(IILjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/anddev/andengine/ui/activity/BaseActivity;->doAsync(IILjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V

    return-void
.end method

.method protected doAsync(IILjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
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

    invoke-static/range {p0 .. p5}, Lorg/anddev/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;IILjava/util/concurrent/Callable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V

    return-void
.end method

.method protected doAsync(IILorg/anddev/andengine/util/AsyncCallable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
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

    invoke-static/range {p0 .. p5}, Lorg/anddev/andengine/util/ActivityUtils;->doAsync(Landroid/content/Context;IILorg/anddev/andengine/util/AsyncCallable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V

    return-void
.end method

.method protected doProgressAsync(ILorg/anddev/andengine/util/progress/ProgressCallable;Lorg/anddev/andengine/util/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lorg/anddev/andengine/util/progress/ProgressCallable",
            "<TT;>;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/ui/activity/BaseActivity;->doProgressAsync(ILorg/anddev/andengine/util/progress/ProgressCallable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V

    return-void
.end method

.method protected doProgressAsync(ILorg/anddev/andengine/util/progress/ProgressCallable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
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

    invoke-static {p0, p1, p2, p3, p4}, Lorg/anddev/andengine/util/ActivityUtils;->doProgressAsync(Landroid/content/Context;ILorg/anddev/andengine/util/progress/ProgressCallable;Lorg/anddev/andengine/util/Callback;Lorg/anddev/andengine/util/Callback;)V

    return-void
.end method
