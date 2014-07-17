.class public Lorg/anddev/andengine/util/SimplePreferences;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/constants/Constants;


# static fields
.field private static EDITORINSTANCE:Landroid/content/SharedPreferences$Editor;

.field private static INSTANCE:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAccessCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lorg/anddev/andengine/util/SimplePreferences;->getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getEditorInstance(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/util/SimplePreferences;->EDITORINSTANCE:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/anddev/andengine/util/SimplePreferences;->getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lorg/anddev/andengine/util/SimplePreferences;->EDITORINSTANCE:Landroid/content/SharedPreferences$Editor;

    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/SimplePreferences;->EDITORINSTANCE:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    sget-object v0, Lorg/anddev/andengine/util/SimplePreferences;->INSTANCE:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lorg/anddev/andengine/util/SimplePreferences;->INSTANCE:Landroid/content/SharedPreferences;

    :cond_0
    sget-object v0, Lorg/anddev/andengine/util/SimplePreferences;->INSTANCE:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static incrementAccessCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/anddev/andengine/util/SimplePreferences;->incrementAccessCount(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static incrementAccessCount(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2

    invoke-static {p0}, Lorg/anddev/andengine/util/SimplePreferences;->getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v1, p2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return v1
.end method
