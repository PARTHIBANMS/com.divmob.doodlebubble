.class Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/engine/handler/timer/ITimerCallback;


# instance fields
.field final synthetic this$0:Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;


# direct methods
.method constructor <init>(Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$2;->this$0:Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimePassed(Lorg/anddev/andengine/engine/handler/timer/TimerHandler;)V
    .locals 4

    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$2;->this$0:Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;

    #getter for: Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mOnScreenControlListener:Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;
    invoke-static {v0}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->access$0(Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;)Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;

    move-result-object v0

    iget-object v1, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$2;->this$0:Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;

    iget-object v2, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$2;->this$0:Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;

    #getter for: Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlValueX:F
    invoke-static {v2}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->access$1(Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;)F

    move-result v2

    iget-object v3, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$2;->this$0:Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;

    #getter for: Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlValueY:F
    invoke-static {v3}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->access$2(Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;)F

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;->onControlChange(Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;FF)V

    return-void
.end method
