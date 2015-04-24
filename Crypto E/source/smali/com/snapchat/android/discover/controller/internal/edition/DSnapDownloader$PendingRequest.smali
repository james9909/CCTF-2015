.class final Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader$PendingRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PendingRequest"
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/networkmanager/DownloadPriority;

.field private final b:Lcom/snapchat/android/discover/model/DSnapPage;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/discover/model/DSnapPage;Lcom/snapchat/android/networkmanager/DownloadPriority;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader$PendingRequest;->b:Lcom/snapchat/android/discover/model/DSnapPage;

    .line 281
    iput-object p2, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader$PendingRequest;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    .line 282
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/discover/model/DSnapPage;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader$PendingRequest;->b:Lcom/snapchat/android/discover/model/DSnapPage;

    return-object v0
.end method

.method public b()Lcom/snapchat/android/networkmanager/DownloadPriority;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/snapchat/android/discover/controller/internal/edition/DSnapDownloader$PendingRequest;->a:Lcom/snapchat/android/networkmanager/DownloadPriority;

    return-object v0
.end method
