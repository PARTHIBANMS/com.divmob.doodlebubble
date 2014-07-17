.class public Lorg/anddev/andengine/util/SocketUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSocket(Ljava/net/DatagramSocket;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    return-void
.end method

.method public static closeSocket(Ljava/net/ServerSocket;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static closeSocket(Ljava/net/Socket;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/anddev/andengine/util/Debug;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
