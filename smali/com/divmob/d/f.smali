.class Lcom/divmob/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;


# instance fields
.field final synthetic a:Lcom/divmob/d/a;


# direct methods
.method constructor <init>(Lcom/divmob/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/d/f;->a:Lcom/divmob/d/a;

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
    .locals 2
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

    iget-object v0, p0, Lcom/divmob/d/f;->a:Lcom/divmob/d/a;

    invoke-static {v0}, Lcom/divmob/d/a;->c(Lcom/divmob/d/a;)Lorg/anddev/andengine/entity/sprite/Sprite;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setVisible(Z)V

    iget-object v0, p0, Lcom/divmob/d/f;->a:Lcom/divmob/d/a;

    invoke-static {v0}, Lcom/divmob/d/a;->c(Lcom/divmob/d/a;)Lorg/anddev/andengine/entity/sprite/Sprite;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/entity/sprite/Sprite;->setIgnoreUpdate(Z)V

    iget-object v0, p0, Lcom/divmob/d/f;->a:Lcom/divmob/d/a;

    invoke-virtual {v0}, Lcom/divmob/d/a;->a()V

    return-void
.end method

.method public synthetic onModifierFinished(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/anddev/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/divmob/d/f;->b(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method public synthetic onModifierStarted(Lorg/anddev/andengine/util/modifier/IModifier;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/anddev/andengine/util/modifier/IModifier;

    check-cast p2, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1, p2}, Lcom/divmob/d/f;->a(Lorg/anddev/andengine/util/modifier/IModifier;Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method
