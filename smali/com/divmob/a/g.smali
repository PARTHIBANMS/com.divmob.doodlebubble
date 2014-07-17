.class public Lcom/divmob/a/g;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/divmob/a/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/divmob/a/e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/divmob/a/e;-><init>(Landroid/content/Context;Lcom/divmob/a/c;)V

    iput-object v0, p0, Lcom/divmob/a/g;->a:Lcom/divmob/a/e;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "A"

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://divmob.com/api/more/index.php?package="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/divmob/a/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&idPartner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/divmob/a/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&deviceID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/divmob/a/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/divmob/a/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/divmob/a/h$a;

    const/4 v2, 0x0

    const-string v3, "clientinfo"

    invoke-direct {v1, v2, v3, v0}, Lcom/divmob/a/h$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/divmob/a/g;->a:Lcom/divmob/a/e;

    invoke-virtual {v0, v1}, Lcom/divmob/a/e;->b(Lcom/divmob/a/h$a;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/divmob/a/g;->a:Lcom/divmob/a/e;

    invoke-virtual {v0}, Lcom/divmob/a/e;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/divmob/a/g;->a:Lcom/divmob/a/e;

    return-void
.end method
