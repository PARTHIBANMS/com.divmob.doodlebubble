.class public final Lcom/divmob/a/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x2000

.field private static final b:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [C

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/Reader;->read([C)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-static {p0}, Lcom/divmob/a/i;->a(Ljava/io/Closeable;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v4, v3}, Ljava/io/StringWriter;->write([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/divmob/a/i;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static final a(Ljava/io/Closeable;)V
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

.method public static final a(Ljava/io/InputStream;I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/divmob/a/i;->a(Ljava/io/InputStream;I[BI)V

    return-void
.end method

.method public static final a(Ljava/io/InputStream;I[BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p2

    sub-int/2addr v0, p3

    if-le p1, v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "pData is not big enough."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    move v1, p1

    :goto_0
    add-int v2, p3, v0

    invoke-virtual {p0, p2, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    :cond_1
    if-eq v0, p1, :cond_3

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ReadLimit: \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', Read: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    add-int/2addr v0, v2

    if-le v1, v2, :cond_1

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static final a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lcom/divmob/a/i;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    return-void
.end method

.method public static final a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    const/4 v8, -0x1

    const/4 v7, 0x0

    if-ne p2, v8, :cond_2

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ne v1, v8, :cond_1

    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :cond_1
    invoke-virtual {p1, v0, v7, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    new-array v2, v0, [B

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v0, p2

    :goto_2
    invoke-virtual {p0, v2, v7, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v4, v8, :cond_0

    int-to-long v5, v4

    cmp-long v5, v0, v5

    if-lez v5, :cond_3

    invoke-virtual {p1, v2, v7, v4}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, v4

    sub-long/2addr v0, v4

    goto :goto_2

    :cond_3
    long-to-int v0, v0

    invoke-virtual {p1, v2, v7, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1
.end method

.method public static final a(Ljava/io/InputStream;Ljava/io/OutputStream;ILcom/divmob/a/h$b;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v5, v1

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_3

    const/16 v3, 0x2000

    new-array v3, v3, [B

    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_2

    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :cond_2
    const/4 v7, 0x0

    invoke-virtual {p1, v3, v7, v4}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v7, v4

    add-long/2addr v1, v7

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    invoke-interface {v0, v5, v6, v1, v2}, Lcom/divmob/a/h$b;->a(JJ)V

    goto :goto_0

    :cond_3
    const/16 v3, 0x2000

    new-array v7, v3, [B

    const/16 v3, 0x2000

    move/from16 v0, p2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    move/from16 v0, p2

    int-to-long v3, v0

    move-wide v12, v3

    move-wide v3, v1

    move-wide v1, v12

    :cond_4
    :goto_2
    const/4 v9, 0x0

    invoke-virtual {p0, v7, v9, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    int-to-long v10, v9

    cmp-long v10, v1, v10

    if-lez v10, :cond_5

    const/4 v10, 0x0

    invoke-virtual {p1, v7, v10, v9}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v10, v9

    sub-long/2addr v1, v10

    int-to-long v9, v9

    add-long/2addr v3, v9

    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    invoke-interface {v0, v5, v6, v3, v4}, Lcom/divmob/a/h$b;->a(JJ)V

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    long-to-int v9, v1

    invoke-virtual {p1, v7, v8, v9}, Ljava/io/OutputStream;->write([BII)V

    add-long/2addr v1, v3

    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    invoke-interface {v0, v5, v6, v1, v2}, Lcom/divmob/a/h$b;->a(JJ)V

    goto :goto_1
.end method

.method public static final a(Ljava/io/InputStream;Ljava/nio/ByteBuffer;)V
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

.method public static final a(Ljava/io/InputStream;[B)V
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

.method public static final a(Ljava/io/OutputStream;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lcom/divmob/a/i;->a(Ljava/io/Closeable;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lcom/divmob/a/i;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/divmob/a/i;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static final a(Ljava/io/Writer;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lcom/divmob/a/i;->a(Ljava/io/Closeable;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p0}, Lcom/divmob/a/i;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/divmob/a/i;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static final a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/divmob/a/h$b;)Z
    .locals 1

    const/4 v0, -0x1

    :try_start_0
    invoke-static {p0, p1, v0, p2}, Lcom/divmob/a/i;->a(Ljava/io/InputStream;Ljava/io/OutputStream;ILcom/divmob/a/h$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lcom/divmob/a/i;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/divmob/a/i;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {p0}, Lcom/divmob/a/i;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/divmob/a/i;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/divmob/a/i;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/divmob/a/i;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static final a(Ljava/io/InputStream;I)[B
    .locals 2
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

    invoke-static {p0, v1, p1}, Lcom/divmob/a/i;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public static final b(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 1

    const/4 v0, -0x1

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/divmob/a/i;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lcom/divmob/a/i;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/divmob/a/i;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {p0}, Lcom/divmob/a/i;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/divmob/a/i;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/divmob/a/i;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/divmob/a/i;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static final b(Ljava/io/InputStream;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lcom/divmob/a/i;->a(Ljava/io/InputStream;I)[B

    move-result-object v0

    return-object v0
.end method
