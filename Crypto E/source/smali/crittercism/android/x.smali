.class public final Lcrittercism/android/x;
.super Ljava/io/InputStream;

# interfaces
.implements Lcrittercism/android/al;


# instance fields
.field private a:Lcrittercism/android/ae;

.field private b:Lcrittercism/android/c;

.field private c:Ljava/io/InputStream;

.field private d:Lcrittercism/android/e;

.field private e:Lcrittercism/android/af;


# direct methods
.method public constructor <init>(Lcrittercism/android/ae;Ljava/io/InputStream;Lcrittercism/android/e;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socket was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    if-nez p2, :cond_1

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "delegate was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    if-nez p3, :cond_2

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dispatch was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_2
    iput-object p1, p0, Lcrittercism/android/x;->a:Lcrittercism/android/ae;

    .line 44
    iput-object p2, p0, Lcrittercism/android/x;->c:Ljava/io/InputStream;

    .line 45
    iput-object p3, p0, Lcrittercism/android/x;->d:Lcrittercism/android/e;

    .line 46
    invoke-virtual {p0}, Lcrittercism/android/x;->b()Lcrittercism/android/af;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    .line 48
    iget-object v0, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    if-nez v0, :cond_3

    .line 49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "parser was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_3
    return-void
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 3
    .parameter

    .prologue
    .line 85
    :try_start_0
    invoke-direct {p0}, Lcrittercism/android/x;->e()Lcrittercism/android/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcrittercism/android/bz;->a(Ljava/lang/Throwable;)Lcrittercism/android/bz;

    move-result-object v1

    iput-object v1, v0, Lcrittercism/android/c;->g:Lcrittercism/android/bz;

    iget-object v1, p0, Lcrittercism/android/x;->d:Lcrittercism/android/e;

    sget-object v2, Lcrittercism/android/c$a;->h:Lcrittercism/android/c$a;

    invoke-virtual {v1, v0, v2}, Lcrittercism/android/e;->a(Lcrittercism/android/c;Lcrittercism/android/c$a;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    throw v0

    .line 88
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dg;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a([BII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 171
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    invoke-virtual {v0, p1, p2, p3}, Lcrittercism/android/af;->a([BII)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 179
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    throw v0

    .line 174
    :catch_1
    move-exception v0

    .line 175
    sget-object v1, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    iput-object v1, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    .line 177
    invoke-static {v0}, Lcrittercism/android/dg;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private e()Lcrittercism/android/c;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcrittercism/android/x;->a:Lcrittercism/android/ae;

    invoke-interface {v0}, Lcrittercism/android/ae;->b()Lcrittercism/android/c;

    move-result-object v0

    iput-object v0, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    .line 258
    :cond_0
    iget-object v0, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    return-object v0
.end method


# virtual methods
.method public final a()Lcrittercism/android/af;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    return-object v0
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 204
    invoke-direct {p0}, Lcrittercism/android/x;->e()Lcrittercism/android/c;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcrittercism/android/c;->d()V

    .line 208
    iput p1, v0, Lcrittercism/android/c;->e:I

    .line 210
    :cond_0
    return-void
.end method

.method public final a(Lcrittercism/android/af;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    .line 216
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    return-void
.end method

.method public final a(Ljava/io/InputStream;)Z
    .locals 1
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcrittercism/android/x;->c:Ljava/io/InputStream;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final available()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcrittercism/android/x;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public final b()Lcrittercism/android/af;
    .locals 1

    .prologue
    .line 267
    new-instance v0, Lcrittercism/android/ap;

    invoke-direct {v0, p0}, Lcrittercism/android/ap;-><init>(Lcrittercism/android/al;)V

    return-object v0
.end method

.method public final b(I)V
    .locals 4
    .parameter

    .prologue
    .line 225
    const/4 v0, 0x0

    .line 226
    iget-object v1, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    .line 228
    iget-object v1, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    iget v1, v1, Lcrittercism/android/c;->e:I

    .line 231
    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_0

    .line 240
    new-instance v0, Lcrittercism/android/c;

    iget-object v1, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    invoke-virtual {v1}, Lcrittercism/android/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcrittercism/android/c;-><init>(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    iget-wide v2, v1, Lcrittercism/android/c;->a:J

    invoke-virtual {v0, v2, v3}, Lcrittercism/android/c;->e(J)V

    .line 242
    iget-object v1, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    iget-wide v2, v1, Lcrittercism/android/c;->d:J

    invoke-virtual {v0, v2, v3}, Lcrittercism/android/c;->d(J)V

    .line 243
    iget-object v1, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    iget-object v1, v1, Lcrittercism/android/c;->f:Ljava/lang/String;

    iput-object v1, v0, Lcrittercism/android/c;->f:Ljava/lang/String;

    .line 246
    :cond_0
    iget-object v1, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcrittercism/android/c;->b(J)V

    .line 247
    iget-object v1, p0, Lcrittercism/android/x;->d:Lcrittercism/android/e;

    iget-object v2, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    sget-object v3, Lcrittercism/android/c$a;->g:Lcrittercism/android/c$a;

    invoke-virtual {v1, v2, v3}, Lcrittercism/android/e;->a(Lcrittercism/android/c;Lcrittercism/android/c$a;)V

    .line 250
    :cond_1
    iput-object v0, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    .line 251
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 272
    invoke-direct {p0}, Lcrittercism/android/x;->e()Lcrittercism/android/c;

    move-result-object v1

    .line 273
    const/4 v0, 0x0

    .line 275
    if-eqz v1, :cond_0

    .line 278
    iget-object v0, v1, Lcrittercism/android/c;->f:Ljava/lang/String;

    .line 281
    :cond_0
    return-object v0
.end method

.method public final close()V
    .locals 1

    .prologue
    .line 61
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    invoke-virtual {v0}, Lcrittercism/android/af;->f()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 68
    :goto_0
    iget-object v0, p0, Lcrittercism/android/x;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 69
    return-void

    .line 62
    :catch_0
    move-exception v0

    throw v0

    .line 64
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcrittercism/android/dg;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrittercism/android/x;->b:Lcrittercism/android/c;

    iget-object v0, v0, Lcrittercism/android/c;->g:Lcrittercism/android/bz;

    sget-object v1, Lcrittercism/android/bz;->a:Lcrittercism/android/bz;

    if-ne v0, v1, :cond_0

    .line 303
    iget-object v0, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    invoke-virtual {v0}, Lcrittercism/android/af;->f()V

    .line 307
    :cond_0
    return-void
.end method

.method public final mark(I)V
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcrittercism/android/x;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 75
    return-void
.end method

.method public final markSupported()Z
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcrittercism/android/x;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public final read()I
    .locals 3

    .prologue
    .line 109
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/x;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 119
    :try_start_1
    iget-object v0, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    invoke-virtual {v0, v1}, Lcrittercism/android/af;->a(I)Z
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 128
    :goto_0
    return v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-direct {p0, v0}, Lcrittercism/android/x;->a(Ljava/lang/Exception;)V

    .line 115
    throw v0

    .line 120
    :catch_1
    move-exception v0

    throw v0

    .line 122
    :catch_2
    move-exception v0

    .line 123
    sget-object v2, Lcrittercism/android/as;->d:Lcrittercism/android/as;

    iput-object v2, p0, Lcrittercism/android/x;->e:Lcrittercism/android/af;

    .line 125
    invoke-static {v0}, Lcrittercism/android/dg;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final read([B)I
    .locals 2
    .parameter

    .prologue
    .line 137
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/x;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 146
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcrittercism/android/x;->a([BII)V

    .line 148
    return v0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    invoke-direct {p0, v0}, Lcrittercism/android/x;->a(Ljava/lang/Exception;)V

    .line 143
    throw v0
.end method

.method public final read([BII)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    :try_start_0
    iget-object v0, p0, Lcrittercism/android/x;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 164
    invoke-direct {p0, p1, p2, v0}, Lcrittercism/android/x;->a([BII)V

    .line 166
    return v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-direct {p0, v0}, Lcrittercism/android/x;->a(Ljava/lang/Exception;)V

    .line 161
    throw v0
.end method

.method public final declared-synchronized reset()V
    .locals 1

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcrittercism/android/x;->c:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 3
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcrittercism/android/x;->c:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
