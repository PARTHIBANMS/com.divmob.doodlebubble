.class Lcom/divmob/splashscreen/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/anddev/andengine/engine/handler/IUpdateHandler;


# instance fields
.field final synthetic a:Lcom/divmob/splashscreen/Splash;


# direct methods
.method constructor <init>(Lcom/divmob/splashscreen/Splash;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/splashscreen/a;->a:Lcom/divmob/splashscreen/Splash;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(F)V
    .locals 4

    iget-object v0, p0, Lcom/divmob/splashscreen/a;->a:Lcom/divmob/splashscreen/Splash;

    invoke-static {v0}, Lcom/divmob/splashscreen/Splash;->a(Lcom/divmob/splashscreen/Splash;)I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/divmob/splashscreen/a;->a:Lcom/divmob/splashscreen/Splash;

    invoke-static {v0}, Lcom/divmob/splashscreen/Splash;->a(Lcom/divmob/splashscreen/Splash;)I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/divmob/splashscreen/a;->a:Lcom/divmob/splashscreen/Splash;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/divmob/splashscreen/Splash;->a(Lcom/divmob/splashscreen/Splash;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/divmob/splashscreen/a;->a:Lcom/divmob/splashscreen/Splash;

    invoke-static {v2}, Lcom/divmob/splashscreen/Splash;->b(Lcom/divmob/splashscreen/Splash;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/divmob/splashscreen/a;->a:Lcom/divmob/splashscreen/Splash;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/divmob/splashscreen/Splash;->a(Lcom/divmob/splashscreen/Splash;I)V

    iget-object v0, p0, Lcom/divmob/splashscreen/a;->a:Lcom/divmob/splashscreen/Splash;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/divmob/splashscreen/a;->a:Lcom/divmob/splashscreen/Splash;

    const-class v3, Lcom/divmob/doodlebubble/MenuActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/divmob/splashscreen/Splash;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/divmob/splashscreen/a;->a:Lcom/divmob/splashscreen/Splash;

    invoke-virtual {v0}, Lcom/divmob/splashscreen/Splash;->finish()V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
