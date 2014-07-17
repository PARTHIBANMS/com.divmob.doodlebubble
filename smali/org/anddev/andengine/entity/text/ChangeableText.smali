.class public Lorg/anddev/andengine/entity/text/ChangeableText;
.super Lorg/anddev/andengine/entity/text/Text;


# static fields
.field private static final ELLIPSIS:Ljava/lang/String; = "..."

.field private static final ELLIPSIS_CHARACTER_COUNT:I


# instance fields
.field private mCharacterCountCurrentText:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "..."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/anddev/andengine/entity/text/ChangeableText;->ELLIPSIS_CHARACTER_COUNT:I

    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {p4, v1}, Lorg/anddev/andengine/util/StringUtils;->countOccurrences(Ljava/lang/String;C)I

    move-result v1

    sub-int v5, v0, v1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;I)V
    .locals 7

    sget-object v5, Lorg/anddev/andengine/util/HorizontalAlign;->LEFT:Lorg/anddev/andengine/util/HorizontalAlign;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/anddev/andengine/entity/text/ChangeableText;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;Lorg/anddev/andengine/util/HorizontalAlign;I)V

    return-void
.end method

.method public constructor <init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;Lorg/anddev/andengine/util/HorizontalAlign;I)V
    .locals 2

    invoke-direct/range {p0 .. p6}, Lorg/anddev/andengine/entity/text/Text;-><init>(FFLorg/anddev/andengine/opengl/font/Font;Ljava/lang/String;Lorg/anddev/andengine/util/HorizontalAlign;I)V

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {p4, v1}, Lorg/anddev/andengine/util/StringUtils;->countOccurrences(Ljava/lang/String;C)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/anddev/andengine/entity/text/ChangeableText;->mCharacterCountCurrentText:I

    return-void
.end method


# virtual methods
.method protected drawVertices(Ljavax/microedition/khronos/opengles/GL10;Lorg/anddev/andengine/engine/camera/Camera;)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    iget v2, p0, Lorg/anddev/andengine/entity/text/ChangeableText;->mCharacterCountCurrentText:I

    mul-int/lit8 v2, v2, 0x6

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/anddev/andengine/entity/text/ChangeableText;->setText(Ljava/lang/String;Z)V

    return-void
.end method

.method public setText(Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lorg/anddev/andengine/util/StringUtils;->countOccurrences(Ljava/lang/String;C)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/anddev/andengine/entity/text/ChangeableText;->mCharactersMaximum:I

    if-le v0, v1, :cond_1

    if-eqz p2, :cond_0

    iget v0, p0, Lorg/anddev/andengine/entity/text/ChangeableText;->mCharactersMaximum:I

    sget v1, Lorg/anddev/andengine/entity/text/ChangeableText;->ELLIPSIS_CHARACTER_COUNT:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lorg/anddev/andengine/entity/text/ChangeableText;->mCharactersMaximum:I

    sget v1, Lorg/anddev/andengine/entity/text/ChangeableText;->ELLIPSIS_CHARACTER_COUNT:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/text/ChangeableText;->updateText(Ljava/lang/String;)V

    :goto_0
    iget v0, p0, Lorg/anddev/andengine/entity/text/ChangeableText;->mCharactersMaximum:I

    iput v0, p0, Lorg/anddev/andengine/entity/text/ChangeableText;->mCharacterCountCurrentText:I

    :goto_1
    return-void

    :cond_0
    iget v0, p0, Lorg/anddev/andengine/entity/text/ChangeableText;->mCharactersMaximum:I

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/anddev/andengine/entity/text/ChangeableText;->updateText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/entity/text/ChangeableText;->updateText(Ljava/lang/String;)V

    iput v0, p0, Lorg/anddev/andengine/entity/text/ChangeableText;->mCharacterCountCurrentText:I

    goto :goto_1
.end method
