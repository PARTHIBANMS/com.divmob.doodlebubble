.class Lcom/divmob/maegame/f/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;


# instance fields
.field final synthetic a:Lcom/divmob/maegame/f/b/c;


# direct methods
.method constructor <init>(Lcom/divmob/maegame/f/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/maegame/f/b/e;->a:Lcom/divmob/maegame/f/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;",
            "Lorg/anddev/andengine/entity/IEntity;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public b(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/modifier/IModifier",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;",
            "Lorg/anddev/andengine/entity/IEntity;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/divmob/maegame/f/b/e;->a:Lcom/divmob/maegame/f/b/c;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/divmob/maegame/f/b/e;->a:Lcom/divmob/maegame/f/b/c;

    invoke-static {v2}, Lcom/divmob/maegame/f/b/c;->b(Lcom/divmob/maegame/f/b/c;)Lorg/anddev/andengine/entity/modifier/MoveXModifier;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/divmob/maegame/f/b/c;->a(Lcom/divmob/maegame/f/b/c;ILorg/anddev/andengine/entity/modifier/IEntityModifier;)V

    return-void
.end method

.method public synthetic onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/anddev/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/divmob/maegame/f/b/e;->b(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public synthetic onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/anddev/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/divmob/maegame/f/b/e;->a(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method
