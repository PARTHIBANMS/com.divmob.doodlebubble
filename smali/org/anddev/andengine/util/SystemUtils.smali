.class public Lorg/anddev/andengine/util/SystemUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;
    }
.end annotation


# static fields
.field private static final BOGOMIPS_PATTERN:Ljava/lang/String; = "BogoMIPS[\\s]*:[\\s]*(\\d+\\.\\d+)[\\s]*\n"

.field private static final MEMFREE_PATTERN:Ljava/lang/String; = "MemFree[\\s]*:[\\s]*(\\d+)[\\s]*kB\n"

.field private static final MEMTOTAL_PATTERN:Ljava/lang/String; = "MemTotal[\\s]*:[\\s]*(\\d+)[\\s]*kB\n"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCPUBogoMips()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;
        }
    .end annotation

    const-string v0, "/proc/cpuinfo"

    const-string v1, "BogoMIPS[\\s]*:[\\s]*(\\d+\\.\\d+)[\\s]*\n"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/anddev/andengine/util/SystemUtils;->matchSystemFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;

    invoke-direct {v0}, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;

    invoke-direct {v1, v0}, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getCPUFrequencyCurrent()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;
        }
    .end annotation

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-static {v0}, Lorg/anddev/andengine/util/SystemUtils;->readSystemFileAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCPUFrequencyMax()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;
        }
    .end annotation

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v0}, Lorg/anddev/andengine/util/SystemUtils;->readSystemFileAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCPUFrequencyMaxScaling()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;
        }
    .end annotation

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-static {v0}, Lorg/anddev/andengine/util/SystemUtils;->readSystemFileAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCPUFrequencyMin()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;
        }
    .end annotation

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    invoke-static {v0}, Lorg/anddev/andengine/util/SystemUtils;->readSystemFileAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCPUFrequencyMinScaling()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;
        }
    .end annotation

    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-static {v0}, Lorg/anddev/andengine/util/SystemUtils;->readSystemFileAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getMemoryFree()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;
        }
    .end annotation

    const-string v0, "/proc/meminfo"

    const-string v1, "MemFree[\\s]*:[\\s]*(\\d+)[\\s]*kB\n"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/anddev/andengine/util/SystemUtils;->matchSystemFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;

    invoke-direct {v0}, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;

    invoke-direct {v1, v0}, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getMemoryTotal()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;
        }
    .end annotation

    const-string v0, "/proc/meminfo"

    const-string v1, "MemTotal[\\s]*:[\\s]*(\\d+)[\\s]*kB\n"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lorg/anddev/andengine/util/SystemUtils;->matchSystemFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;

    invoke-direct {v0}, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;

    invoke-direct {v1, v0}, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPackageVersionCode(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lorg/anddev/andengine/util/SystemUtils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0
.end method

.method public static getPackageVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/anddev/andengine/util/SystemUtils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public static hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-class v0, Landroid/content/pm/PackageManager;

    const-string v2, "hasSystemFeature"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static isAndroidVersionOrHigher(I)Z
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static matchSystemFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/MatchResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/ProcessBuilder;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "/system/bin/cat"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p0, v4, v5

    invoke-direct {v3, v4}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v3, Ljava/util/Scanner;

    invoke-direct {v3, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, p1, p2}, Ljava/util/Scanner;->findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v3}, Ljava/util/Scanner;->match()Ljava/util/regex/MatchResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;

    invoke-direct {v0}, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v2, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;

    invoke-direct {v2, v0}, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static readSystemFileAsInt(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/system/bin/cat"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-direct {v0, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->readFully(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    return v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;

    invoke-direct {v2, v0}, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v2, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;

    invoke-direct {v2, v0}, Lorg/anddev/andengine/util/SystemUtils$SystemUtilsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
