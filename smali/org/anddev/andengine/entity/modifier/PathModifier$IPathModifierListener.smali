.class public interface abstract Lorg/anddev/andengine/entity/modifier/PathModifier$IPathModifierListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/entity/modifier/PathModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPathModifierListener"
.end annotation


# virtual methods
.method public abstract onPathFinished(Lorg/anddev/andengine/entity/modifier/PathModifier;Lorg/anddev/andengine/entity/IEntity;)V
.end method

.method public abstract onPathStarted(Lorg/anddev/andengine/entity/modifier/PathModifier;Lorg/anddev/andengine/entity/IEntity;)V
.end method

.method public abstract onPathWaypointFinished(Lorg/anddev/andengine/entity/modifier/PathModifier;Lorg/anddev/andengine/entity/IEntity;I)V
.end method

.method public abstract onPathWaypointStarted(Lorg/anddev/andengine/entity/modifier/PathModifier;Lorg/anddev/andengine/entity/IEntity;I)V
.end method
