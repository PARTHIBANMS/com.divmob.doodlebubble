.class Lcom/divmob/doodlebubble/c/h$a;
.super Lorg/anddev/andengine/entity/sprite/Sprite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/divmob/doodlebubble/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/divmob/doodlebubble/c/h;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/divmob/doodlebubble/c/h;FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 2

    iput-object p1, p0, Lcom/divmob/doodlebubble/c/h$a;->a:Lcom/divmob/doodlebubble/c/h;

    invoke-direct {p0, p2, p3, p4}, Lorg/anddev/andengine/entity/sprite/Sprite;-><init>(FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    const/16 v0, 0x302

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/divmob/doodlebubble/c/h$a;->setBlendFunction(II)V

    invoke-direct {p0}, Lcom/divmob/doodlebubble/c/h$a;->b()V

    invoke-static {p1}, Lcom/divmob/doodlebubble/c/h;->a(Lcom/divmob/doodlebubble/c/h;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/divmob/doodlebubble/c/h$a;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/divmob/doodlebubble/c/h$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/divmob/doodlebubble/c/h$a;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    const v0, 0x3e99999a

    iget-object v1, p0, Lcom/divmob/doodlebubble/c/h$a;->a:Lcom/divmob/doodlebubble/c/h;

    invoke-static {v1}, Lcom/divmob/doodlebubble/c/h;->b(Lcom/divmob/doodlebubble/c/h;)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3da3d70a

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/c/h$a;->setScale(F)V

    return-void
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/divmob/doodlebubble/c/h$a;->a:Lcom/divmob/doodlebubble/c/h;

    iget-object v1, p0, Lcom/divmob/doodlebubble/c/h$a;->a:Lcom/divmob/doodlebubble/c/h;

    invoke-static {v1}, Lcom/divmob/doodlebubble/c/h;->b(Lcom/divmob/doodlebubble/c/h;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/divmob/doodlebubble/c/h;->a(Lcom/divmob/doodlebubble/c/h;I)V

    iput-boolean v2, p0, Lcom/divmob/doodlebubble/c/h$a;->b:Z

    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/divmob/doodlebubble/c/h$a;->setAlpha(F)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/c/h$a;->a:Lcom/divmob/doodlebubble/c/h;

    invoke-static {v0}, Lcom/divmob/doodlebubble/c/h;->a(Lcom/divmob/doodlebubble/c/h;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/divmob/doodlebubble/c/h$a;->a:Lcom/divmob/doodlebubble/c/h;

    invoke-static {v0}, Lcom/divmob/doodlebubble/c/h;->c(Lcom/divmob/doodlebubble/c/h;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/divmob/maegame/g/e;->e(Lorg/anddev/andengine/entity/Entity;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/divmob/doodlebubble/c/h$a;->b:Z

    return-void
.end method

.method public onManagedUpdate(F)V
    .locals 2

    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/sprite/Sprite;->onManagedUpdate(F)V

    iget-boolean v0, p0, Lcom/divmob/doodlebubble/c/h$a;->b:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/divmob/doodlebubble/c/h$a;->mAlpha:F

    const v1, 0x3ca3d70a

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/divmob/doodlebubble/c/h$a;->mAlpha:F

    iget v0, p0, Lcom/divmob/doodlebubble/c/h$a;->mAlpha:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/divmob/doodlebubble/c/h$a;->c()V

    :cond_0
    return-void
.end method
