.class public Lcom/snapchat/android/database/table/FailedSendSnapbryoTable;
.super Lcom/snapchat/android/database/table/SnapbryoTable;
.source "SourceFile"


# static fields
.field private static a:Lcom/snapchat/android/database/table/FailedSendSnapbryoTable;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/snapchat/android/database/table/SnapbryoTable;-><init>()V

    return-void
.end method

.method public static declared-synchronized b()Lcom/snapchat/android/database/table/FailedSendSnapbryoTable;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/snapchat/android/database/table/FailedSendSnapbryoTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/snapchat/android/database/table/FailedSendSnapbryoTable;->a:Lcom/snapchat/android/database/table/FailedSendSnapbryoTable;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/snapchat/android/database/table/FailedSendSnapbryoTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/FailedSendSnapbryoTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/FailedSendSnapbryoTable;->a:Lcom/snapchat/android/database/table/FailedSendSnapbryoTable;

    .line 25
    :cond_0
    sget-object v0, Lcom/snapchat/android/database/table/FailedSendSnapbryoTable;->a:Lcom/snapchat/android/database/table/FailedSendSnapbryoTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "FailedSendSnapbryoTable"

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v0

    invoke-virtual {p0, v1, v1}, Lcom/snapchat/android/database/table/FailedSendSnapbryoTable;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/SnapWomb;->b(Ljava/util/List;)V

    .line 36
    return-void
.end method

.method protected b(Lcom/snapchat/android/model/User;)Ljava/util/Collection;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snapchat/android/model/User;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/snapchat/android/model/AnnotatedMediabryo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/SnapWomb;->h()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
