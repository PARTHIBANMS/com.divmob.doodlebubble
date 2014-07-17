.class public abstract Lcom/divmob/common/PortrailMenu;
.super Lcom/divmob/common/ClassicMenu;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/divmob/common/ClassicMenu;-><init>()V

    return-void
.end method


# virtual methods
.method public f()Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;->PORTRAIT:Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/divmob/common/PortrailMenu;->a(Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;I)Lorg/anddev/andengine/engine/options/EngineOptions$ScreenOrientation;

    move-result-object v0

    new-instance v1, Lorg/anddev/andengine/engine/camera/Camera;

    iget v2, p0, Lcom/divmob/common/PortrailMenu;->s:I

    int-to-float v2, v2

    iget v3, p0, Lcom/divmob/common/PortrailMenu;->t:I

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Lorg/anddev/andengine/engine/camera/Camera;-><init>(FFFF)V

    iput-object v1, p0, Lcom/divmob/common/PortrailMenu;->c:Lorg/anddev/andengine/engine/camera/Camera;

    return-object v0
.end method
