.class public Lorg/anddev/andengine/opengl/font/Letter;
.super Ljava/lang/Object;


# instance fields
.field public final mAdvance:I

.field public final mCharacter:C

.field public final mHeight:I

.field public final mTextureHeight:F

.field public final mTextureWidth:F

.field public final mTextureX:F

.field public final mTextureY:F

.field public final mWidth:I


# direct methods
.method constructor <init>(CIIIFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lorg/anddev/andengine/opengl/font/Letter;->mCharacter:C

    iput p2, p0, Lorg/anddev/andengine/opengl/font/Letter;->mAdvance:I

    iput p3, p0, Lorg/anddev/andengine/opengl/font/Letter;->mWidth:I

    iput p4, p0, Lorg/anddev/andengine/opengl/font/Letter;->mHeight:I

    iput p5, p0, Lorg/anddev/andengine/opengl/font/Letter;->mTextureX:F

    iput p6, p0, Lorg/anddev/andengine/opengl/font/Letter;->mTextureY:F

    iput p7, p0, Lorg/anddev/andengine/opengl/font/Letter;->mTextureWidth:F

    iput p8, p0, Lorg/anddev/andengine/opengl/font/Letter;->mTextureHeight:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lorg/anddev/andengine/opengl/font/Letter;

    iget-char v2, p0, Lorg/anddev/andengine/opengl/font/Letter;->mCharacter:C

    iget-char v3, p1, Lorg/anddev/andengine/opengl/font/Letter;->mCharacter:C

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-char v0, p0, Lorg/anddev/andengine/opengl/font/Letter;->mCharacter:C

    add-int/lit8 v0, v0, 0x1f

    return v0
.end method
