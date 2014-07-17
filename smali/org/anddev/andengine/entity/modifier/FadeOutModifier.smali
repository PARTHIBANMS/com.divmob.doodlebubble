.class public Lorg/anddev/andengine/entity/modifier/FadeOutModifier;
.super Lorg/anddev/andengine/entity/modifier/AlphaModifier;


# direct methods
.method public constructor <init>(F)V
    .locals 3

    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    sget-object v2, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 6

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    sget-object v5, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 6

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 2

    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(FFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/FadeOutModifier;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/modifier/AlphaModifier;-><init>(Lorg/anddev/andengine/entity/modifier/AlphaModifier;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/anddev/andengine/entity/modifier/AlphaModifier;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/FadeOutModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/FadeOutModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/entity/modifier/FadeOutModifier;
    .locals 1

    new-instance v0, Lorg/anddev/andengine/entity/modifier/FadeOutModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/modifier/FadeOutModifier;-><init>(Lorg/anddev/andengine/entity/modifier/FadeOutModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/FadeOutModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/FadeOutModifier;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/util/modifier/IModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/FadeOutModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/FadeOutModifier;

    move-result-object v0

    return-object v0
.end method
