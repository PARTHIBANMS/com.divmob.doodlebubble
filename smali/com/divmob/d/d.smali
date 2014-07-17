.class Lcom/divmob/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/entity/scene/Scene$IOnSceneTouchListener;


# instance fields
.field final synthetic a:Lcom/divmob/d/a;

.field private final synthetic b:Lcom/divmob/d/a$a;


# direct methods
.method constructor <init>(Lcom/divmob/d/a;Lcom/divmob/d/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/d/d;->a:Lcom/divmob/d/a;

    iput-object p2, p0, Lcom/divmob/d/d;->b:Lcom/divmob/d/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSceneTouchEvent(Lorg/anddev/andengine/entity/scene/Scene;Lorg/anddev/andengine/input/touch/TouchEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/divmob/d/d;->b:Lcom/divmob/d/a$a;

    invoke-virtual {v0, p2}, Lcom/divmob/d/a$a;->a(Lorg/anddev/andengine/input/touch/TouchEvent;)V

    const/4 v0, 0x1

    return v0
.end method
