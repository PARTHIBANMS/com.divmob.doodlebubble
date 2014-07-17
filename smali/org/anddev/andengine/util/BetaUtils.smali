.class public Lorg/anddev/andengine/util/BetaUtils;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/constants/Constants;


# static fields
.field private static final PREFERENCES_BETAUTILS_ID:Ljava/lang/String; = "preferences.betautils.lastuse"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finishWhenExpired(Landroid/app/Activity;Ljava/util/GregorianCalendar;II)Z
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lorg/anddev/andengine/util/BetaUtils;->finishWhenExpired(Landroid/app/Activity;Ljava/util/GregorianCalendar;IILandroid/content/Intent;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static finishWhenExpired(Landroid/app/Activity;Ljava/util/GregorianCalendar;IILandroid/content/Intent;Landroid/content/Intent;)Z
    .locals 6

    invoke-static {p0}, Lorg/anddev/andengine/util/SimplePreferences;->getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "preferences.betautils.lastuse"

    const-wide/16 v4, -0x1

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "preferences.betautils.lastuse"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lorg/anddev/andengine/util/BetaUtils$1;

    invoke-direct {v2, p4, p0}, Lorg/anddev/andengine/util/BetaUtils$1;-><init>(Landroid/content/Intent;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 v1, 0x104

    new-instance v2, Lorg/anddev/andengine/util/BetaUtils$2;

    invoke-direct {v2, p5, p0}, Lorg/anddev/andengine/util/BetaUtils$2;-><init>(Landroid/content/Intent;Landroid/app/Activity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
