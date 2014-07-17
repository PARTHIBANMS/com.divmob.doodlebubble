.class public interface abstract Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;
.super Ljava/lang/Object;


# virtual methods
.method public abstract deepCopy()Lorg/anddev/andengine/opengl/texture/source/ITextureAtlasSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation
.end method

.method public abstract getHeight()I
.end method

.method public abstract getTexturePositionX()I
.end method

.method public abstract getTexturePositionY()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract setTexturePositionX(I)V
.end method

.method public abstract setTexturePositionY(I)V
.end method
