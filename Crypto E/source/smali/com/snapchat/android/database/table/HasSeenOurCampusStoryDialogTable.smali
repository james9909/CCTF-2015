.class public Lcom/snapchat/android/database/table/HasSeenOurCampusStoryDialogTable;
.super Lcom/snapchat/android/database/table/HasSeenDialogTable;
.source "SourceFile"


# static fields
.field private static a:Lcom/snapchat/android/database/table/HasSeenOurCampusStoryDialogTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/snapchat/android/database/table/HasSeenOurCampusStoryDialogTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/HasSeenOurCampusStoryDialogTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/HasSeenOurCampusStoryDialogTable;->a:Lcom/snapchat/android/database/table/HasSeenOurCampusStoryDialogTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 11
    const-string v1, "HasSeenOurCampusStoryDialog"

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Ldagger/ObjectGraph;

    move-result-object v0

    const-class v2, Lcom/snapchat/android/database/HasSeenOurCampusStoryDialogLog;

    invoke-virtual {v0, v2}, Ldagger/ObjectGraph;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/HasSeenDialogLog;

    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/database/table/HasSeenDialogTable;-><init>(Ljava/lang/String;Lcom/snapchat/android/database/HasSeenDialogLog;)V

    .line 13
    return-void
.end method

.method public static declared-synchronized b()Lcom/snapchat/android/database/table/HasSeenOurCampusStoryDialogTable;
    .locals 2

    .prologue
    .line 16
    const-class v0, Lcom/snapchat/android/database/table/HasSeenOurCampusStoryDialogTable;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/snapchat/android/database/table/HasSeenOurCampusStoryDialogTable;->a:Lcom/snapchat/android/database/table/HasSeenOurCampusStoryDialogTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
