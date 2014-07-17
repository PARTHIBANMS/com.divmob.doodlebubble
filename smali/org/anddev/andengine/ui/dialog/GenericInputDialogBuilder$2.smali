.class Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;


# direct methods
.method constructor <init>(Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder$2;->this$0:Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder$2;->this$0:Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;

    iget-object v0, v0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
