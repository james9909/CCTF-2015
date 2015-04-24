.class Lcom/snapchat/android/ui/ImageResource$LoadChatMediaTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/ImageResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadChatMediaTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final synthetic b:Lcom/snapchat/android/ui/ImageResource;

.field private final c:Lcom/snapchat/android/networkmanager/media/MediaDownloader;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/ui/ImageResource;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/snapchat/android/ui/ImageResource$LoadChatMediaTask;->b:Lcom/snapchat/android/ui/ImageResource;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 87
    invoke-static {}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->a()Lcom/snapchat/android/networkmanager/media/MediaDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/ImageResource$LoadChatMediaTask;->c:Lcom/snapchat/android/networkmanager/media/MediaDownloader;

    .line 91
    iput-object p2, p0, Lcom/snapchat/android/ui/ImageResource$LoadChatMediaTask;->a:Landroid/content/Context;

    .line 92
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResource$LoadChatMediaTask;->b:Lcom/snapchat/android/ui/ImageResource;

    invoke-static {v0}, Lcom/snapchat/android/ui/ImageResource;->a(Lcom/snapchat/android/ui/ImageResource;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->V()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResource$LoadChatMediaTask;->b:Lcom/snapchat/android/ui/ImageResource;

    invoke-static {v0}, Lcom/snapchat/android/ui/ImageResource;->a(Lcom/snapchat/android/ui/ImageResource;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/chat/ChatMedia;->W()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResource$LoadChatMediaTask;->c:Lcom/snapchat/android/networkmanager/media/MediaDownloader;

    iget-object v1, p0, Lcom/snapchat/android/ui/ImageResource$LoadChatMediaTask;->b:Lcom/snapchat/android/ui/ImageResource;

    invoke-static {v1}, Lcom/snapchat/android/ui/ImageResource;->a(Lcom/snapchat/android/ui/ImageResource;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/networkmanager/media/MediaDownloader;->a(Lcom/snapchat/android/model/chat/ChatMedia;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResource$LoadChatMediaTask;->b:Lcom/snapchat/android/ui/ImageResource;

    iget-object v1, p0, Lcom/snapchat/android/ui/ImageResource$LoadChatMediaTask;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/snapchat/android/ui/ImageResource$LoadChatMediaTask;->b:Lcom/snapchat/android/ui/ImageResource;

    invoke-static {v2}, Lcom/snapchat/android/ui/ImageResource;->a(Lcom/snapchat/android/ui/ImageResource;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v2

    invoke-virtual {v2}, Lcom/snapchat/android/model/chat/ChatMedia;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;

    iget-object v4, p0, Lcom/snapchat/android/ui/ImageResource$LoadChatMediaTask;->b:Lcom/snapchat/android/ui/ImageResource;

    invoke-static {v4}, Lcom/snapchat/android/ui/ImageResource;->a(Lcom/snapchat/android/ui/ImageResource;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/model/chat/ChatMedia;->E()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/snapchat/android/ui/ImageResource$LoadChatMediaTask;->b:Lcom/snapchat/android/ui/ImageResource;

    invoke-static {v5}, Lcom/snapchat/android/ui/ImageResource;->a(Lcom/snapchat/android/ui/ImageResource;)Lcom/snapchat/android/model/chat/ChatMedia;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/model/chat/ChatMedia;->F()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/ui/ImageResource;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/util/crypto/CbcEncryptionAlgorithm;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lcom/snapchat/android/util/cache/ExternalStorageUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string v1, "ImageResource"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load chat media image "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 115
    iget-object v1, p0, Lcom/snapchat/android/ui/ImageResource$LoadChatMediaTask;->b:Lcom/snapchat/android/ui/ImageResource;

    if-nez p1, :cond_0

    sget-object v0, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->d:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/ImageResource;->a(Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;)V

    .line 116
    return-void

    .line 115
    :cond_0
    sget-object v0, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->c:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 84
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/ImageResource$LoadChatMediaTask;->a([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/ImageResource$LoadChatMediaTask;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/snapchat/android/ui/ImageResource$LoadChatMediaTask;->b:Lcom/snapchat/android/ui/ImageResource;

    sget-object v1, Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;->b:Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ImageResource;->a(Lcom/snapchat/android/ui/SnapchatResource$ResourceStatus;)V

    .line 97
    return-void
.end method
