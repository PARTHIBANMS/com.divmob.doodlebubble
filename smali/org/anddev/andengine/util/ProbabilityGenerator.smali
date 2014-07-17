.class public Lorg/anddev/andengine/util/ProbabilityGenerator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/util/ProbabilityGenerator$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/anddev/andengine/util/ProbabilityGenerator$Entry",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private mProbabilitySum:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/anddev/andengine/util/ProbabilityGenerator;->mEntries:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public varargs add(F[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F[TT;)V"
        }
    .end annotation

    iget v0, p0, Lorg/anddev/andengine/util/ProbabilityGenerator;->mProbabilitySum:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/anddev/andengine/util/ProbabilityGenerator;->mProbabilitySum:F

    iget-object v0, p0, Lorg/anddev/andengine/util/ProbabilityGenerator;->mEntries:Ljava/util/ArrayList;

    new-instance v1, Lorg/anddev/andengine/util/ProbabilityGenerator$Entry;

    invoke-direct {v1, p1, p2}, Lorg/anddev/andengine/util/ProbabilityGenerator$Entry;-><init>(F[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/anddev/andengine/util/ProbabilityGenerator;->mProbabilitySum:F

    iget-object v0, p0, Lorg/anddev/andengine/util/ProbabilityGenerator;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v5, 0x0

    iget v0, p0, Lorg/anddev/andengine/util/ProbabilityGenerator;->mProbabilitySum:F

    invoke-static {v5, v0}, Lorg/anddev/andengine/util/MathUtils;->random(FF)F

    move-result v1

    iget-object v3, p0, Lorg/anddev/andengine/util/ProbabilityGenerator;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/util/ProbabilityGenerator$Entry;

    invoke-virtual {v0}, Lorg/anddev/andengine/util/ProbabilityGenerator$Entry;->getReturnValue()Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/util/ProbabilityGenerator$Entry;

    iget v4, v0, Lorg/anddev/andengine/util/ProbabilityGenerator$Entry;->mFactor:F

    sub-float/2addr v2, v4

    cmpg-float v4, v2, v5

    if-gtz v4, :cond_1

    invoke-virtual {v0}, Lorg/anddev/andengine/util/ProbabilityGenerator$Entry;->getReturnValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method
