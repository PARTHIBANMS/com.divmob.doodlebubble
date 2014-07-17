.class Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;

.field private final synthetic val$etInput:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder$1;->this$0:Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;

    iput-object p2, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder$1;->val$etInput:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder$1;->this$0:Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;

    iget-object v1, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder$1;->val$etInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->generateResult(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder$1;->this$0:Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;

    iget-object v1, v1, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->mSuccessCallback:Lorg/anddev/andengine/util/Callback;

    invoke-interface {v1, v0}, Lorg/anddev/andengine/util/Callback;->onCallback(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error in GenericInputDialogBuilder.generateResult()"

    invoke-static {v1, v0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder$1;->this$0:Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;

    iget-object v0, v0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder$1;->this$0:Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;

    #getter for: Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->mErrorResID:I
    invoke-static {v1}, Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;->access$0(Lorg/anddev/andengine/ui/dialog/GenericInputDialogBuilder;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
