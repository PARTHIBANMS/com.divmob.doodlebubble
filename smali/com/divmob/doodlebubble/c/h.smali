.class public Lcom/divmob/doodlebubble/c/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/divmob/doodlebubble/c/h$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x28

.field private static g:[I


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/divmob/doodlebubble/c/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/divmob/doodlebubble/c/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/divmob/doodlebubble/c/h;->g:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0xc7t 0xd2t 0xfft
        0xfbt 0xa2t 0xf2t 0xfft
        0x0t 0x90t 0xfct 0xfft
        0x0t 0xd8t 0x86t 0xfft
        0xc1t 0xc1t 0xc1t 0xfft
        0xfft 0xc2t 0x0t 0xfft
    .end array-data
.end method

.method public constructor <init>(Lorg/anddev/andengine/opengl/texture/region/TextureRegion;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/divmob/doodlebubble/c/h;->e:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/divmob/doodlebubble/c/h;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/divmob/doodlebubble/c/h;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/divmob/doodlebubble/c/h;->d:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    return-void
.end method

.method static synthetic a(Lcom/divmob/doodlebubble/c/h;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/divmob/doodlebubble/c/h;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private a(Lcom/divmob/doodlebubble/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/divmob/doodlebubble/c/h;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/divmob/doodlebubble/c/h$a;

    iget-object v1, p0, Lcom/divmob/doodlebubble/c/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/divmob/maegame/g/e;->d(Lorg/anddev/andengine/entity/Entity;)V

    invoke-virtual {v0, p1}, Lcom/divmob/doodlebubble/c/h$a;->setPosition(Lorg/anddev/andengine/entity/IEntity;)V

    invoke-static {v0}, Lcom/divmob/doodlebubble/c/h$a;->a(Lcom/divmob/doodlebubble/c/h$a;)V

    iget v1, p0, Lcom/divmob/doodlebubble/c/h;->f:I

    invoke-static {v0, v1}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/Entity;I)V

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/c/h$a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/divmob/doodlebubble/c/h;I)V
    .locals 0

    iput p1, p0, Lcom/divmob/doodlebubble/c/h;->e:I

    return-void
.end method

.method static synthetic b(Lcom/divmob/doodlebubble/c/h;)I
    .locals 1

    iget v0, p0, Lcom/divmob/doodlebubble/c/h;->e:I

    return v0
.end method

.method static synthetic c(Lcom/divmob/doodlebubble/c/h;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/divmob/doodlebubble/c/h;->c:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    sget-object v0, Lcom/divmob/doodlebubble/c/h;->g:[I

    aget v0, v0, p1

    iput v0, p0, Lcom/divmob/doodlebubble/c/h;->f:I

    return-void
.end method

.method public a(Lcom/divmob/doodlebubble/a/a;Lorg/anddev/andengine/entity/scene/Scene;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/divmob/doodlebubble/c/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x28

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/divmob/doodlebubble/c/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/divmob/doodlebubble/c/h$a;

    iget-object v1, p0, Lcom/divmob/doodlebubble/c/h;->d:Lorg/anddev/andengine/opengl/texture/region/TextureRegion;

    invoke-direct {v0, p0, v2, v2, v1}, Lcom/divmob/doodlebubble/c/h$a;-><init>(Lcom/divmob/doodlebubble/c/h;FFLorg/anddev/andengine/opengl/texture/region/TextureRegion;)V

    invoke-virtual {v0, p1}, Lcom/divmob/doodlebubble/c/h$a;->setPosition(Lorg/anddev/andengine/entity/IEntity;)V

    iget v1, p0, Lcom/divmob/doodlebubble/c/h;->f:I

    invoke-static {v0, v1}, Lcom/divmob/maegame/g/e;->a(Lorg/anddev/andengine/entity/Entity;I)V

    invoke-virtual {v0}, Lcom/divmob/doodlebubble/c/h$a;->a()V

    invoke-virtual {p2, p3}, Lorg/anddev/andengine/entity/scene/Scene;->getChild(I)Lorg/anddev/andengine/entity/IEntity;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/anddev/andengine/entity/IEntity;->attachChild(Lorg/anddev/andengine/entity/IEntity;)V

    :goto_0
    const/16 v0, 0xa

    iget v1, p0, Lcom/divmob/doodlebubble/c/h;->e:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/divmob/doodlebubble/c/h;->e:I

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/divmob/doodlebubble/c/h;->a(Lcom/divmob/doodlebubble/a/a;)V

    goto :goto_0
.end method
