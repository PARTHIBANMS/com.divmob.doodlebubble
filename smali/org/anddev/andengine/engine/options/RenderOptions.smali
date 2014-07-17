.class public Lorg/anddev/andengine/engine/options/RenderOptions;
.super Ljava/lang/Object;


# instance fields
.field private mDisableExtensionDrawTexture:Z

.field private mDisableExtensionVertexBufferObjects:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lorg/anddev/andengine/engine/options/RenderOptions;->mDisableExtensionVertexBufferObjects:Z

    iput-boolean v0, p0, Lorg/anddev/andengine/engine/options/RenderOptions;->mDisableExtensionDrawTexture:Z

    return-void
.end method


# virtual methods
.method public disableExtensionDrawTexture()Lorg/anddev/andengine/engine/options/RenderOptions;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/options/RenderOptions;->setDisableExtensionDrawTexture(Z)Lorg/anddev/andengine/engine/options/RenderOptions;

    move-result-object v0

    return-object v0
.end method

.method public disableExtensionVertexBufferObjects()Lorg/anddev/andengine/engine/options/RenderOptions;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/options/RenderOptions;->setDisableExtensionVertexBufferObjects(Z)Lorg/anddev/andengine/engine/options/RenderOptions;

    move-result-object v0

    return-object v0
.end method

.method public enableExtensionDrawTexture()Lorg/anddev/andengine/engine/options/RenderOptions;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/options/RenderOptions;->setDisableExtensionDrawTexture(Z)Lorg/anddev/andengine/engine/options/RenderOptions;

    move-result-object v0

    return-object v0
.end method

.method public enableExtensionVertexBufferObjects()Lorg/anddev/andengine/engine/options/RenderOptions;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/engine/options/RenderOptions;->setDisableExtensionVertexBufferObjects(Z)Lorg/anddev/andengine/engine/options/RenderOptions;

    move-result-object v0

    return-object v0
.end method

.method public isDisableExtensionDrawTexture()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/engine/options/RenderOptions;->mDisableExtensionDrawTexture:Z

    return v0
.end method

.method public isDisableExtensionVertexBufferObjects()Z
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/engine/options/RenderOptions;->mDisableExtensionVertexBufferObjects:Z

    return v0
.end method

.method public setDisableExtensionDrawTexture(Z)Lorg/anddev/andengine/engine/options/RenderOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/engine/options/RenderOptions;->mDisableExtensionDrawTexture:Z

    return-object p0
.end method

.method public setDisableExtensionVertexBufferObjects(Z)Lorg/anddev/andengine/engine/options/RenderOptions;
    .locals 0

    iput-boolean p1, p0, Lorg/anddev/andengine/engine/options/RenderOptions;->mDisableExtensionVertexBufferObjects:Z

    return-object p0
.end method
