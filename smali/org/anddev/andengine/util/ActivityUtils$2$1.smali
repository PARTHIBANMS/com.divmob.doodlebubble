.class Lorg/anddev/andengine/util/ActivityUtils$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/util/progress/IProgressListener;


# instance fields
.field final synthetic this$1:Lorg/anddev/andengine/util/ActivityUtils$2;


# direct methods
.method constructor <init>(Lorg/anddev/andengine/util/ActivityUtils$2;)V
    .locals 0

    iput-object p1, p0, Lorg/anddev/andengine/util/ActivityUtils$2$1;->this$1:Lorg/anddev/andengine/util/ActivityUtils$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(I)V
    .locals 4

    iget-object v0, p0, Lorg/anddev/andengine/util/ActivityUtils$2$1;->this$1:Lorg/anddev/andengine/util/ActivityUtils$2;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/anddev/andengine/util/ActivityUtils$2;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
