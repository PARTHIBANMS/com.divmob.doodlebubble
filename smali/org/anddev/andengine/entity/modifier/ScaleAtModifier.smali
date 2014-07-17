.class public Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;
.super Lorg/anddev/andengine/entity/modifier/ScaleModifier;


# instance fields
.field private final mScaleCenterX:F

.field private final mScaleCenterY:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 7

    sget-object v6, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;-><init>(FFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FFFFFFF)V
    .locals 9

    sget-object v8, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;-><init>(FFFFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FFFFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 10

    sget-object v9, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;-><init>(FFFFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FFFFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    iput p6, p0, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;->mScaleCenterX:F

    iput p7, p0, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;->mScaleCenterY:F

    return-void
.end method

.method public constructor <init>(FFFFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 10

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;-><init>(FFFFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;)V
    .locals 8

    sget-object v7, Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;->DEFAULT:Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;-><init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 10

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;-><init>(FFFFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method public constructor <init>(FFFFFLorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;-><init>(FFFFFLorg/anddev/andengine/entity/modifier/IEntityModifier$IEntityModifierListener;Lorg/anddev/andengine/util/modifier/ease/IEaseFunction;)V

    return-void
.end method

.method protected constructor <init>(Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;-><init>(Lorg/anddev/andengine/entity/modifier/ScaleModifier;)V

    iget v0, p1, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;->mScaleCenterX:F

    iput v0, p0, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;->mScaleCenterX:F

    iget v0, p1, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;->mScaleCenterY:F

    iput v0, p0, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;->mScaleCenterY:F

    return-void
.end method


# virtual methods
.method public bridge synthetic deepCopy()Lorg/anddev/andengine/entity/modifier/IEntityModifier;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

    move-result-object v0

    return-object v0
.end method

.method public deepCopy()Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;
    .locals 1

    new-instance v0, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;-><init>(Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;)V

    return-object v0
.end method

.method public bridge synthetic deepCopy()Lorg/anddev/andengine/entity/modifier/ScaleModifier;
    .locals 1

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

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

    invoke-virtual {p0}, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;->deepCopy()Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onManagedInitialize(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/anddev/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;->onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V

    return-void
.end method

.method protected onManagedInitialize(Lorg/anddev/andengine/entity/IEntity;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/anddev/andengine/entity/modifier/ScaleModifier;->onManagedInitialize(Ljava/lang/Object;)V

    iget v0, p0, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;->mScaleCenterX:F

    iget v1, p0, Lorg/anddev/andengine/entity/modifier/ScaleAtModifier;->mScaleCenterY:F

    invoke-interface {p1, v0, v1}, Lorg/anddev/andengine/entity/IEntity;->setScaleCenter(FF)V

    return-void
.end method
