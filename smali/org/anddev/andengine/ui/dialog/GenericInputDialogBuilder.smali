.class public abstract Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mDefaultText:Ljava/lang/String;

.field private final mErrorResID:I

.field protected final mIconResID:I

.field protected final mMessageResID:I

.field protected final mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field protected final mSuccessCallback:Lorg/anddev/andengine/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final mTitleResID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/String;Lorg/anddev/andengine/util/Callback;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII",
            "Ljava/lang/String;",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->mContext:Landroid/content/Context;

    iput p2, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->mTitleResID:I

    iput p3, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->mMessageResID:I

    iput p4, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->mErrorResID:I

    iput p5, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->mIconResID:I

    iput-object p6, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->mDefaultText:Ljava/lang/String;

    iput-object p7, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->mSuccessCallback:Lorg/anddev/andengine/util/Callback;

    iput-object p8, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIILorg/anddev/andengine/util/Callback;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII",
            "Lorg/anddev/andengine/util/Callback",
            "<TT;>;",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ")V"
        }
    .end annotation

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;-><init>(Landroid/content/Context;IIIILjava/lang/String;Lorg/anddev/andengine/util/Callback;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic access$0(Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;)I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->mErrorResID:I

    return v0
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 5

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->mDefaultText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->mTitleResID:I

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->mTitleResID:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :cond_0
    iget v2, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->mMessageResID:I

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->mMessageResID:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :cond_1
    iget v2, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->mIconResID:I

    if-eqz v2, :cond_2

    iget v2, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->mIconResID:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    :cond_2
    invoke-virtual {p0, v1, v0}, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->setView(Landroid/app/AlertDialog$Builder;Landroid/widget/EditText;)V

    iget-object v2, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder$1;

    invoke-direct {v4, p0, v0}, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder$1;-><init>(Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    new-instance v3, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder$2;

    invoke-direct {v3, p0}, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder$2;-><init>(Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method protected abstract generateResult(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected setView(Landroid/app/AlertDialog$Builder;Landroid/widget/EditText;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    return-void
.end method
