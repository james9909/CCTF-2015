.class public Lcom/snapchat/android/api/chat/UploadChatMediaTask;
.super Lcom/snapchat/android/api/UploadMediaTask;
.source "SourceFile"


# static fields
.field private static final TASK_NAME:Ljava/lang/String; = "UploadChatMediaTask"


# instance fields
.field private mChatConversation:Lcom/snapchat/android/model/chat/ChatConversation;

.field private mChatMedia:Lcom/snapchat/android/model/chat/ChatMedia;

.field private mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/AnnotatedMediabryo;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/snapchat/android/api/UploadMediaTask;-><init>(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    .line 30
    invoke-static {}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a()Lcom/snapchat/android/notification/AndroidNotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

    .line 31
    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string v0, "/bq/upload_chat_media"

    return-object v0
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->FAILED:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Lcom/snapchat/android/model/Mediabryo$UploadStatus;)V

    .line 77
    iget-object v0, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mChatMedia:Lcom/snapchat/android/model/chat/ChatMedia;

    sget-object v1, Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;->FAILED:Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatMedia;->a(Lcom/snapchat/android/model/chat/StatefulChatFeedItem$SendReceiveStatus;)V

    .line 78
    invoke-static {}, Lcom/snapchat/android/util/eventbus/BusProvider;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;

    iget-object v2, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mChatConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ChatUpdatedEvent;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    .line 81
    return-void
.end method

.method protected b()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 55
    invoke-super {p0}, Lcom/snapchat/android/api/UploadMediaTask;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 56
    const-string v1, "type"

    sget-object v2, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->IMAGE:Lcom/snapchat/android/model/chat/ChatMedia$MediaType;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia$MediaType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "conversation_id"

    iget-object v2, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mChatConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatConversation;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "id"

    iget-object v2, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v2}, Lcom/snapchat/android/model/AnnotatedMediabryo;->N()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "recipient"

    iget-object v2, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v2}, Lcom/snapchat/android/model/AnnotatedMediabryo;->E()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v1, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    iget-object v2, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mChatMedia:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia;->E()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mChatMedia:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v3}, Lcom/snapchat/android/model/chat/ChatMedia;->F()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mData:[B

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;->a([B)[B

    move-result-object v1

    .line 61
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 62
    return-object v0
.end method

.method protected b(Lcom/snapchat/android/model/server/ServerResponse;)V
    .locals 3
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mChatMedia:Lcom/snapchat/android/model/chat/ChatMedia;

    iget-object v1, p1, Lcom/snapchat/android/model/server/ServerResponse;->media_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatMedia;->e(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    sget-object v1, Lcom/snapchat/android/model/Mediabryo$UploadStatus;->UPLOADED:Lcom/snapchat/android/model/Mediabryo$UploadStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->a(Lcom/snapchat/android/model/Mediabryo$UploadStatus;)V

    .line 69
    invoke-static {}, Lcom/snapchat/android/chat/SendingMailman;->a()Lcom/snapchat/android/chat/SendingMailman;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mChatConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v2, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mChatMedia:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/chat/SendingMailman;->a(Lcom/snapchat/android/model/chat/ChatConversation;Lcom/snapchat/android/model/chat/ChatMedia;)V

    .line 71
    iget-object v0, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mNotificationManager:Lcom/snapchat/android/notification/AndroidNotificationManager;

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Z)V

    .line 72
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    const-string v0, "UploadChatMediaTask"

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 35
    invoke-super {p0}, Lcom/snapchat/android/api/UploadMediaTask;->onPreExecute()V

    .line 36
    new-instance v0, Lcom/snapchat/android/model/chat/ChatMedia;

    iget-object v1, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-direct {v0, v1}, Lcom/snapchat/android/model/chat/ChatMedia;-><init>(Lcom/snapchat/android/model/AnnotatedMediabryo;)V

    iput-object v0, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mChatMedia:Lcom/snapchat/android/model/chat/ChatMedia;

    .line 37
    invoke-static {}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a()Lcom/snapchat/android/model/chat/ChatConversationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mSnapbryo:Lcom/snapchat/android/model/AnnotatedMediabryo;

    invoke-virtual {v1}, Lcom/snapchat/android/model/AnnotatedMediabryo;->E()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversationManager;->a(Ljava/lang/String;)Lcom/snapchat/android/model/chat/ChatConversation;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mChatConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 39
    iget-object v0, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mChatConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    if-nez v0, :cond_0

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->cancel(Z)Z

    .line 46
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mChatConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v1, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mChatMedia:Lcom/snapchat/android/model/chat/ChatMedia;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/chat/ChatConversation;->a(Lcom/snapchat/android/model/chat/ChatMedia;)V

    .line 44
    invoke-static {}, Lcom/snapchat/android/chat/FeedIconManager;->a()Lcom/snapchat/android/chat/FeedIconManager;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/api/chat/UploadChatMediaTask;->mChatConversation:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/chat/FeedIconManager;->a(Lcom/snapchat/android/model/chat/ChatConversation;Z)V

    goto :goto_0
.end method
