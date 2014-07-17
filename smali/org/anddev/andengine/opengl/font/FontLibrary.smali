.class public Lorg/anddev/andengine/opengl/font/FontLibrary;
.super Lorg/anddev/andengine/util/Library;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/Library",
        "<",
        "Lorg/anddev/andengine/opengl/font/Font;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/anddev/andengine/util/Library;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/anddev/andengine/util/Library;-><init>(I)V

    return-void
.end method


# virtual methods
.method loadFonts(Lorg/anddev/andengine/opengl/font/FontManager;)V
    .locals 3

    iget-object v2, p0, Lorg/anddev/andengine/opengl/font/FontLibrary;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/anddev/andengine/opengl/font/Font;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lorg/anddev/andengine/opengl/font/FontManager;->loadFont(Lorg/anddev/andengine/opengl/font/Font;)V

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method
