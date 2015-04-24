.class public Lcom/snapchat/android/util/chat/SCMessageInputStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field a:[B

.field private final b:Ljava/io/DataInputStream;

.field private final c:Lcom/snapchat/android/util/GsonWrapper;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/snapchat/android/util/GsonWrapper;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->a:[B

    .line 48
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->b:Ljava/io/DataInputStream;

    .line 49
    iput-object p2, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->c:Lcom/snapchat/android/util/GsonWrapper;

    .line 50
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/SCMessage;
    .locals 4
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->c:Lcom/snapchat/android/util/GsonWrapper;

    const-class v1, Lcom/snapchat/android/model/server/chat/SCMessage;

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/SCMessage;

    .line 82
    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected message contents which parsed as null: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/SCMessage;->getType()Ljava/lang/String;

    move-result-object v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 111
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected message type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/snapchat/android/model/server/chat/SCMessage;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from contents: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :sswitch_0
    const-string v3, "presence"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "message_state"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "message_release"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "chat_message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "protocol_error"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "conversation_message_response"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v3, "connect_response"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string v3, "snap_state"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_9
    const-string v3, "ping_response"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v3, "cash_rain"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_b
    const-string v3, "cash_state"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xb

    goto/16 :goto_0

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->c:Lcom/snapchat/android/util/GsonWrapper;

    const-class v1, Lcom/snapchat/android/model/server/chat/PresenceMessage;

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/SCMessage;

    .line 109
    :goto_1
    return-object v0

    .line 89
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->c:Lcom/snapchat/android/util/GsonWrapper;

    const-class v1, Lcom/snapchat/android/model/server/chat/MessageStateMessage;

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/SCMessage;

    goto :goto_1

    .line 91
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->c:Lcom/snapchat/android/util/GsonWrapper;

    const-class v1, Lcom/snapchat/android/model/server/chat/ReleaseMessage;

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/SCMessage;

    goto :goto_1

    .line 93
    :pswitch_3
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->c:Lcom/snapchat/android/util/GsonWrapper;

    const-class v1, Lcom/snapchat/android/model/server/chat/ChatMessage;

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/SCMessage;

    goto :goto_1

    .line 95
    :pswitch_4
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->c:Lcom/snapchat/android/util/GsonWrapper;

    const-class v1, Lcom/snapchat/android/model/server/chat/ErrorMessage;

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/SCMessage;

    goto :goto_1

    .line 97
    :pswitch_5
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->c:Lcom/snapchat/android/util/GsonWrapper;

    const-class v1, Lcom/snapchat/android/model/server/chat/ProtocolErrorMessage;

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/SCMessage;

    goto :goto_1

    .line 99
    :pswitch_6
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->c:Lcom/snapchat/android/util/GsonWrapper;

    const-class v1, Lcom/snapchat/android/model/server/chat/ConversationMessageResponse;

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/SCMessage;

    goto :goto_1

    .line 101
    :pswitch_7
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->c:Lcom/snapchat/android/util/GsonWrapper;

    const-class v1, Lcom/snapchat/android/model/server/chat/ConnectResponse;

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/SCMessage;

    goto :goto_1

    .line 103
    :pswitch_8
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->c:Lcom/snapchat/android/util/GsonWrapper;

    const-class v1, Lcom/snapchat/android/model/server/chat/SnapStateMessage;

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/SCMessage;

    goto :goto_1

    .line 105
    :pswitch_9
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->c:Lcom/snapchat/android/util/GsonWrapper;

    const-class v1, Lcom/snapchat/android/model/server/chat/PingResponse;

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/SCMessage;

    goto :goto_1

    .line 107
    :pswitch_a
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->c:Lcom/snapchat/android/util/GsonWrapper;

    const-class v1, Lcom/snapchat/android/model/server/cash/CashRainMessage;

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/SCMessage;

    goto :goto_1

    .line 109
    :pswitch_b
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->c:Lcom/snapchat/android/util/GsonWrapper;

    const-class v1, Lcom/snapchat/android/model/server/cash/CashStateMessage;

    invoke-virtual {v0, p1, v1}, Lcom/snapchat/android/util/GsonWrapper;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/chat/SCMessage;

    goto :goto_1

    .line 85
    nop

    :sswitch_data_0
    .sparse-switch
        -0x63e76824 -> :sswitch_8
        -0x4c186305 -> :sswitch_0
        -0x49e2bb92 -> :sswitch_9
        -0x486239a7 -> :sswitch_1
        -0x6a52831 -> :sswitch_2
        -0x5139de0 -> :sswitch_3
        -0x4efcc0a -> :sswitch_7
        0x5c4d208 -> :sswitch_4
        0x141919b5 -> :sswitch_6
        0x1afc71a1 -> :sswitch_5
        0x2d1d9120 -> :sswitch_a
        0x76ab3085 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public a()Lcom/snapchat/android/model/server/chat/SCMessage;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 54
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 56
    if-lez v0, :cond_0

    const v1, 0xdbba0

    if-le v0, v1, :cond_1

    .line 57
    :cond_0
    const-string v1, "SCMessageInputStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CHAT-LOG: SCMessageInputStream RECEIVED INVALID SSL PACKET LENGTH "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    new-instance v1, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v2, "INVALID_SSL_PACKET_RECEIVED"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "PACKET_LENGTH"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 59
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Server sent a message with a bad length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->a:[B

    array-length v1, v1

    if-ge v1, v0, :cond_2

    .line 67
    :try_start_0
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->a:[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->b:Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->a:[B

    invoke-virtual {v1, v2, v4, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 76
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->a:[B

    sget-object v3, Lorg/apache/commons/io/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v4, v0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 77
    invoke-direct {p0, v1}, Lcom/snapchat/android/util/chat/SCMessageInputStream;->a(Ljava/lang/String;)Lcom/snapchat/android/model/server/chat/SCMessage;

    move-result-object v0

    return-object v0

    .line 68
    :catch_0
    move-exception v1

    .line 69
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 72
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->a:[B

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/snapchat/android/util/chat/SCMessageInputStream;->b:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 118
    return-void
.end method
