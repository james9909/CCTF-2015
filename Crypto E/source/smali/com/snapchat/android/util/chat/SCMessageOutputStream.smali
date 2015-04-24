.class public Lcom/snapchat/android/util/chat/SCMessageOutputStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Ljava/io/DataOutputStream;

.field private final b:Lcom/snapchat/android/util/GsonWrapper;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/snapchat/android/util/GsonWrapper;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SCMessageOutputStream;->a:Ljava/io/DataOutputStream;

    .line 24
    iput-object p2, p0, Lcom/snapchat/android/util/chat/SCMessageOutputStream;->b:Lcom/snapchat/android/util/GsonWrapper;

    .line 25
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/server/chat/SCMessage;)V
    .locals 3
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SCMessageOutputStream;->b:Lcom/snapchat/android/util/GsonWrapper;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29
    sget-object v1, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SCMessageOutputStream;->a:Ljava/io/DataOutputStream;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 31
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SCMessageOutputStream;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 32
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SCMessageOutputStream;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 33
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SCMessageOutputStream;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 38
    return-void
.end method
