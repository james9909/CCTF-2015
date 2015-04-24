.class Lcom/snapchat/android/networkmanager/internal/DownloadRequestComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/snapchat/android/networkmanager/DownloadRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/networkmanager/DownloadRequest;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->a()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v0

    invoke-virtual {p2}, Lcom/snapchat/android/networkmanager/DownloadRequest;->a()Lcom/snapchat/android/networkmanager/DownloadPriority;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/networkmanager/DownloadPriority;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 34
    :goto_0
    return v0

    .line 29
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->f()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/snapchat/android/networkmanager/DownloadRequest;->f()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 30
    const/4 v0, 0x1

    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/snapchat/android/networkmanager/DownloadRequest;->f()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/snapchat/android/networkmanager/DownloadRequest;->f()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 32
    const/4 v0, -0x1

    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 17
    check-cast p1, Lcom/snapchat/android/networkmanager/DownloadRequest;

    check-cast p2, Lcom/snapchat/android/networkmanager/DownloadRequest;

    invoke-virtual {p0, p1, p2}, Lcom/snapchat/android/networkmanager/internal/DownloadRequestComparator;->a(Lcom/snapchat/android/networkmanager/DownloadRequest;Lcom/snapchat/android/networkmanager/DownloadRequest;)I

    move-result v0

    return v0
.end method
