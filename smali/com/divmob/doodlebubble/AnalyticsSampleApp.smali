.class public Lcom/divmob/doodlebubble/AnalyticsSampleApp;
.super Landroid/app/Application;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/divmob/doodlebubble/AnalyticsSampleApp$a;
    }
.end annotation


# static fields
.field public static a:I = 0x0

.field private static final c:Ljava/lang/String; = "UA-50652953-1"


# instance fields
.field b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/divmob/doodlebubble/AnalyticsSampleApp$a;",
            "Lcom/google/android/gms/analytics/Tracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/divmob/doodlebubble/AnalyticsSampleApp;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/divmob/doodlebubble/AnalyticsSampleApp;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method declared-synchronized a(Lcom/divmob/doodlebubble/AnalyticsSampleApp$a;)Lcom/google/android/gms/analytics/Tracker;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/AnalyticsSampleApp;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    const-string v1, "UA-50652953-1"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    iget-object v1, p0, Lcom/divmob/doodlebubble/AnalyticsSampleApp;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/divmob/doodlebubble/AnalyticsSampleApp;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/Tracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
