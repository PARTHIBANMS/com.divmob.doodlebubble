.class public interface abstract Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/modifier/IModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier$IBackgroundModifierListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/anddev/andengine/util/modifier/IModifier",
        "<",
        "Lorg/anddev/andengine/entity/scene/background/IBackground;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract deepCopy()Lorg/anddev/andengine/entity/scene/background/modifier/IBackgroundModifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation
.end method
