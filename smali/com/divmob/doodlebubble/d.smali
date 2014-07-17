.class Lcom/divmob/doodlebubble/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/divmob/doodlebubble/GameActivity;


# direct methods
.method constructor <init>(Lcom/divmob/doodlebubble/GameActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/divmob/doodlebubble/d;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v3, 0x64

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/16 v1, 0x28

    if-gt v0, v1, :cond_0

    invoke-static {}, Lcom/divmob/doodlebubble/GameActivity;->k()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/divmob/doodlebubble/d;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-static {v0}, Lcom/divmob/doodlebubble/GameActivity;->k(Lcom/divmob/doodlebubble/GameActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/divmob/doodlebubble/d;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-static {v0}, Lcom/divmob/doodlebubble/GameActivity;->k(Lcom/divmob/doodlebubble/GameActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/divmob/doodlebubble/GameActivity;->k()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/divmob/doodlebubble/GameActivity;->a(I)V

    iget-object v0, p0, Lcom/divmob/doodlebubble/d;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-static {v0}, Lcom/divmob/doodlebubble/GameActivity;->k(Lcom/divmob/doodlebubble/GameActivity;)Lcom/google/android/gms/ads/InterstitialAd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/divmob/doodlebubble/d;->a:Lcom/divmob/doodlebubble/GameActivity;

    invoke-static {v0}, Lcom/divmob/doodlebubble/GameActivity;->l(Lcom/divmob/doodlebubble/GameActivity;)Lcom/divmob/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/divmob/c/c;->b()V

    goto :goto_0
.end method
