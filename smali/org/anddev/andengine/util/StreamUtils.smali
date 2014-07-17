.class public Lorg/anddev/andengine/util/StreamUtils;
.super Ljava/lang/Object;


# static fields
.field public static final IO_BUFFER_SIZE:I = 0x2000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-static {p0, p1, v0, v1}, Lorg/anddev/andengine/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    return-void
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, -0x1

    const/16 v2, 0x2000

    const/4 v5, 0x0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_2

    new-array v0, v2, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ne v1, v6, :cond_1

    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :cond_1
    invoke-virtual {p1, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    new-array v0, v2, [B

    long-to-int v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_2
    invoke-virtual {p0, v0, v5, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-eq v2, v6, :cond_0

    int-to-long v3, v2

    cmp-long v3, p2, v3

    if-lez v3, :cond_3

    invoke-virtual {p1, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v2

    sub-long/2addr p2, v2

    goto :goto_2

    :cond_3
    long-to-int v1, p2

    invoke-virtual {p1, v0, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1
.end method

.method public static copy(Ljava/io/InputStream;Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;[B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v0, 0x2000

    new-array v2, v0, [B

    move v0, v1

    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    invoke-static {v2, v1, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    goto :goto_0
.end method

.method public static copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 2

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-static {p0, p1, v0, v1}, Lorg/anddev/andengine/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    invoke-static {p1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {p0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    invoke-static {p1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    invoke-static {p1}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static flushCloseStream(Ljava/io/OutputStream;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static flushCloseWriter(Ljava/io/Writer;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lorg/anddev/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static final readFully(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static streamToBytes(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/anddev/andengine/util/StreamUtils;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static streamToBytes(Ljava/io/InputStream;I)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/16 v0, 0x2000

    :goto_0
    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    int-to-long v2, p1

    invoke-static {p0, v1, v2, v3}, Lorg/anddev/andengine/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method
