.class public interface abstract Lorg/anddev/andengine/entity/modifier/IEntityModifier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/modifier/IModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;,
        Lorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierMatcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/anddev/andengine/util/modifier/IModifier",
        "<",
        "Lorg/anddev/andengine/entity/IEntity;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation
.end method
