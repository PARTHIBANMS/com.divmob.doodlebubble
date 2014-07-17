.class public abstract Lorg/anddev/andengine/entity/modifier/EntityModifier;
.super Lorg/anddev/andengine/util/modifier/BaseModifier;

# interfaces
.implements Lorg/anddev/andengine/entity/modifier/IEntityModifier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/modifier/BaseModifier",
        "<",
        "Lorg/anddev/andengine/entity/IEntity;",
        ">;",
        "Lorg/anddev/andengine/entity/modifier/IEntityModifier;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/util/modifier/BaseModifier;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/modifier/BaseModifier;-><init>(Lorg/anddev/andengine/util/modifier/IModifier$IModifierListener;)V

    return-void
.end method
