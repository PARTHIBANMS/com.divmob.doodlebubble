.class Lorg/anddev/andengine/input/touch/detector/HoldDetector$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/engine/handler/timer/ITimerCallback;


# instance fields
.field final synthetic this$0:Lorg/anddev/andengine/input/touch/detector/HoldDetector;


# direct methods
.method constructor <init>(Lorg/anddev/andengine/input/touch/detector/HoldDetector;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector$1;->this$0:Lorg/anddev/andengine/input/touch/detector/HoldDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimePassed(Lorg/anddev/andengine/engine/handler/timer/TimerHandler;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/input/touch/detector/HoldDetector$1;->this$0:Lorg/anddev/andengine/input/touch/detector/HoldDetector;

    invoke-virtual {v0}, Lorg/anddev/andengine/input/touch/detector/HoldDetector;->fireListener()V

    return-void
.end method
