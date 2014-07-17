.class public Lorg/anddev/andengine/entity/modifier/PathModifier$Path;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/anddev/andengine/entity/modifier/PathModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Path"
.end annotation


# instance fields
.field private final mCoordinatesX:[F

.field private final mCoordinatesY:[F

.field private mIndex:I

.field private mLength:F

.field private mLengthChanged:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    new-array v0, p1, [F

    iput-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesX:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesY:[F

    iput v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    iput-boolean v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    return-void
.end method

.method public constructor <init>(Lorg/anddev/andengine/entity/modifier/PathModifier$Path;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    invoke-virtual {p1}, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->getSize()I

    move-result v0

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesX:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesY:[F

    iget-object v1, p1, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesX:[F

    iget-object v2, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesX:[F

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesY:[F

    iget-object v2, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesY:[F

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    iput v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    iget-boolean v0, p1, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    iget v0, p1, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLength:F

    iput v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLength:F

    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Coordinate-Arrays must have the same length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesX:[F

    iput-object p2, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesY:[F

    array-length v0, p1

    iput v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    return-void
.end method

.method private updateLength()V
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-gez v0, :cond_0

    iput v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLength:F

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->getSegmentLength(I)F

    move-result v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public deepCopy()Lorg/anddev/andengine/entity/modifier/PathModifier$Path;
    .locals 1

    new-instance v0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;-><init>(Lorg/anddev/andengine/entity/modifier/PathModifier$Path;)V

    return-object v0
.end method

.method public getCoordinatesX()[F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesX:[F

    return-object v0
.end method

.method public getCoordinatesY()[F
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesY:[F

    return-object v0
.end method

.method public getLength()F
    .locals 1

    iget-boolean v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->updateLength()V

    :cond_0
    iget v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLength:F

    return v0
.end method

.method public getSegmentLength(I)F
    .locals 4

    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesX:[F

    iget-object v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesY:[F

    add-int/lit8 v2, p1, 0x1

    aget v3, v0, p1

    aget v0, v0, v2

    sub-float v0, v3, v0

    aget v3, v1, p1

    aget v1, v1, v2

    sub-float v1, v3, v1

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesX:[F

    array-length v0, v0

    return v0
.end method

.method public to(FF)Lorg/anddev/andengine/entity/modifier/PathModifier$Path;
    .locals 2

    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesX:[F

    iget v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    aput p1, v0, v1

    iget-object v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mCoordinatesY:[F

    iget v1, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    aput p2, v0, v1

    iget v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/anddev/andengine/entity/modifier/PathModifier$Path;->mLengthChanged:Z

    return-object p0
.end method
