.class Lorg/anddev/andengine/entity/scene/popup/PopupScene$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/engine/handler/timer/ITimerCallback;


# instance fields
.field final synthetic this$0:Lorg/anddev/andengine/entity/scene/popup/PopupScene;

.field private final synthetic val$pParentScene:Lorg/anddev/andengine/entity/scene/Scene;

.field private final synthetic val$pRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/anddev/andengine/entity/scene/popup/PopupScene;Lorg/anddev/andengine/entity/scene/Scene;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/entity/scene/popup/PopupScene$1;->this$0:Lorg/anddev/andengine/entity/scene/popup/PopupScene;

    iput-object p2, p0, Lorg/anddev/andengine/entity/scene/popup/PopupScene$1;->val$pParentScene:Lorg/anddev/andengine/entity/scene/Scene;

    iput-object p3, p0, Lorg/anddev/andengine/entity/scene/popup/PopupScene$1;->val$pRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimePassed(Lorg/anddev/andengine/engine/handler/timer/TimerHandler;)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/popup/PopupScene$1;->this$0:Lorg/anddev/andengine/entity/scene/popup/PopupScene;

    invoke-virtual {v0, p1}, Lorg/anddev/andengine/entity/scene/popup/PopupScene;->unregisterUpdateHandler(Lorg/anddev/andengine/engine/handler/IUpdateHandler;)Z

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/popup/PopupScene$1;->val$pParentScene:Lorg/anddev/andengine/entity/scene/Scene;

    invoke-virtual {v0}, Lorg/anddev/andengine/entity/scene/Scene;->clearChildScene()V

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/popup/PopupScene$1;->val$pRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/anddev/andengine/entity/scene/popup/PopupScene$1;->val$pRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
