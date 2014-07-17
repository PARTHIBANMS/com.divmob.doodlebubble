.class Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$1;
.super Lorg/anddev/andengine/entity/sprite/Sprite;


# instance fields
.field final synthetic this$0:Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;


# direct methods
.method constructor <init>(Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$1;->this$0:Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;

    invoke-direct {p0, p2, p3, p4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    return-void
.end method


# virtual methods
.method public onAreaTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl$1;->this$0:Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/anddev/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onHandleControlBaseTouched(Lorg/anddev/andengine/input/touch/TouchEvent;FF)Z

    move-result v0

    return v0
.end method
