.class Lorg/anddev/andengine/ui/activity/BaseSplashActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/engine/handler/timer/ITimerCallback;


# instance fields
.field final synthetic this$0:Lorg/anddev/andengine/ui/activity/BaseSplashActivity;


# direct methods
.method constructor <init>(Lorg/anddev/andengine/ui/activity/BaseSplashActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/ui/activity/BaseSplashActivity$1;->this$0:Lorg/anddev/andengine/ui/activity/BaseSplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimePassed(Lorg/anddev/andengine/engine/handler/timer/TimerHandler;)V
    .locals 4

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseSplashActivity$1;->this$0:Lorg/anddev/andengine/ui/activity/BaseSplashActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/anddev/andengine/ui/activity/BaseSplashActivity$1;->this$0:Lorg/anddev/andengine/ui/activity/BaseSplashActivity;

    iget-object v3, p0, Lorg/anddev/andengine/ui/activity/BaseSplashActivity$1;->this$0:Lorg/anddev/andengine/ui/activity/BaseSplashActivity;

    invoke-virtual {v3}, Lorg/anddev/andengine/ui/activity/BaseSplashActivity;->getFollowUpActivity()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/ui/activity/BaseSplashActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/anddev/andengine/ui/activity/BaseSplashActivity$1;->this$0:Lorg/anddev/andengine/ui/activity/BaseSplashActivity;

    invoke-virtual {v0}, Lorg/anddev/andengine/ui/activity/BaseSplashActivity;->finish()V

    return-void
.end method
