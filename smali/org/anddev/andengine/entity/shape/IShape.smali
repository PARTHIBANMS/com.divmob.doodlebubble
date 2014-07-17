.class public interface abstract Lorg/anddev/andengine/entity/shape/IShape;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/entity/IEntity;
.implements Lorg/anddev/andengine/entity/scene/Scene$ITouchArea;


# virtual methods
.method public abstract collidesWith(Lorg/anddev/andengine/entity/shape/IShape;)Z
.end method

.method public abstract getBaseHeight()F
.end method

.method public abstract getBaseWidth()F
.end method

.method public abstract getHeight()F
.end method

.method public abstract getHeightScaled()F
.end method

.method public abstract getWidth()F
.end method

.method public abstract getWidthScaled()F
.end method

.method public abstract isCullingEnabled()Z
.end method

.method public abstract setBlendFunction(II)V
.end method

.method public abstract setCullingEnabled(Z)V
.end method
