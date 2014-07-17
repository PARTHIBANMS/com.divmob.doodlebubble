.class public Lcom/divmob/doodlebubble/d/a;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I


# instance fields
.field private c:Landroid/content/SharedPreferences;

.field private d:[I

.field private e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xf

    sput v0, Lcom/divmob/doodlebubble/d/a;->a:I

    const/4 v0, 0x3

    sput v0, Lcom/divmob/doodlebubble/d/a;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Highscore"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/divmob/doodlebubble/d/a;->c:Landroid/content/SharedPreferences;

    sget v0, Lcom/divmob/doodlebubble/d/a;->a:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/divmob/doodlebubble/d/a;->d:[I

    sget v0, Lcom/divmob/doodlebubble/d/a;->a:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/divmob/doodlebubble/d/a;->e:[I

    move v0, v1

    :goto_0
    sget v2, Lcom/divmob/doodlebubble/d/a;->a:I

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/divmob/doodlebubble/d/a;->d:[I

    iget-object v3, p0, Lcom/divmob/doodlebubble/d/a;->c:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "diff"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/divmob/doodlebubble/d/a;->a:I

    sget v6, Lcom/divmob/doodlebubble/d/a;->b:I

    div-int/2addr v5, v6

    div-int v5, v0, v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0

    iget-object v2, p0, Lcom/divmob/doodlebubble/d/a;->e:[I

    iget-object v3, p0, Lcom/divmob/doodlebubble/d/a;->c:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "score"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(II)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, -0x1

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/divmob/doodlebubble/d/a;->d:[I

    array-length v3, v3

    if-lt v0, v3, :cond_0

    if-gez v2, :cond_3

    :goto_1
    return v1

    :cond_0
    iget-object v3, p0, Lcom/divmob/doodlebubble/d/a;->d:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lcom/divmob/doodlebubble/d/a;->e:[I

    aget v3, v3, v0

    if-le p2, v3, :cond_1

    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/divmob/doodlebubble/d/a;->e:[I

    aget v3, v3, v2

    iget-object v4, p0, Lcom/divmob/doodlebubble/d/a;->e:[I

    aget v4, v4, v0

    if-le v3, v4, :cond_1

    move v2, v0

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/divmob/doodlebubble/d/a;->e:[I

    aput p2, v0, v2

    iget-object v0, p0, Lcom/divmob/doodlebubble/d/a;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    :goto_3
    sget v2, Lcom/divmob/doodlebubble/d/a;->a:I

    if-lt v1, v2, :cond_4

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "name"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/divmob/doodlebubble/d/a;->d:[I

    aget v3, v3, v1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "score"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/divmob/doodlebubble/d/a;->e:[I

    aget v3, v3, v1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public a(I)[I
    .locals 4

    const/4 v0, 0x0

    sget v1, Lcom/divmob/doodlebubble/d/a;->a:I

    sget v2, Lcom/divmob/doodlebubble/d/a;->b:I

    div-int/2addr v1, v2

    new-array v2, v1, [I

    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/divmob/doodlebubble/d/a;->d:[I

    array-length v3, v3

    if-lt v0, v3, :cond_0

    invoke-static {v2}, Ljava/util/Arrays;->sort([I)V

    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/divmob/doodlebubble/d/a;->d:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lcom/divmob/doodlebubble/d/a;->e:[I

    aget v3, v3, v0

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
