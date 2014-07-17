.class public Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;
.super Ljava/lang/Object;


# static fields
.field private static final PREFERENCES_LEVELSTATSDBCONNECTOR_PLAYERID_ID:Ljava/lang/String; = "preferences.levelstatsdbconnector.playerid"


# instance fields
.field private final mPlayerID:I

.field private final mSecret:Ljava/lang/String;

.field private final mSubmitURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->mSecret:Ljava/lang/String;

    iput-object p3, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->mSubmitURL:Ljava/lang/String;

    invoke-static {p1}, Lorg/anddev/andengine/util/SimplePreferences;->getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preferences.levelstatsdbconnector.playerid"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    iput v0, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->mPlayerID:I

    :goto_0
    return-void

    :cond_0
    const v0, 0x3b9aca00

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v0

    iput v0, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->mPlayerID:I

    invoke-static {p1}, Lorg/anddev/andengine/util/SimplePreferences;->getEditorInstance(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "preferences.levelstatsdbconnector.playerid"

    iget v2, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->mPlayerID:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static synthetic access$0(Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->mSubmitURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;)I
    .locals 1

    iget v0, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->mPlayerID:I

    return v0
.end method

.method static synthetic access$2(Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->mSecret:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public submitAsync(IZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;->submitAsync(IZILorg/anddev/andengine/util/Callback;)V

    return-void
.end method

.method public submitAsync(IZILorg/anddev/andengine/util/Callback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZI",
            "Lorg/anddev/andengine/util/Callback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector$1;-><init>(Lorg/anddev/andengine/util/levelstats/LevelStatsDBConnector;IZILorg/anddev/andengine/util/Callback;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method
