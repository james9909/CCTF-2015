.class public Lcom/snapchat/android/database/table/HasSeenPostToOurStoryDialogTable;
.super Lcom/snapchat/android/database/table/HasSeenDialogTable;
.source "SourceFile"


# static fields
.field private static a:Lcom/snapchat/android/database/table/HasSeenPostToOurStoryDialogTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/snapchat/android/database/table/HasSeenPostToOurStoryDialogTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/HasSeenPostToOurStoryDialogTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/HasSeenPostToOurStoryDialogTable;->a:Lcom/snapchat/android/database/table/HasSeenPostToOurStoryDialogTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 11
    const-string v1, "HasSeenPostToOurStoryDialog"

    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->e()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Ldagger/ObjectGraph;

    move-result-object v0

    const-class v2, Lcom/snapchat/android/database/HasSeenPostToOurStoryDialogLog;

    invoke-virtual {v0, v2}, Ldagger/ObjectGraph;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/database/HasSeenDialogLog;

    invoke-direct {p0, v1, v0}, Lcom/snapchat/android/database/table/HasSeenDialogTable;-><init>(Ljava/lang/String;Lcom/snapchat/android/database/HasSeenDialogLog;)V

    .line 12
    return-void
.end method

.method public static declared-synchronized b()Lcom/snapchat/android/database/table/HasSeenPostToOurStoryDialogTable;
    .locals 2

    .prologue
    .line 15
    const-class v0, Lcom/snapchat/android/database/table/HasSeenPostToOurStoryDialogTable;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/snapchat/android/database/table/HasSeenPostToOurStoryDialogTable;->a:Lcom/snapchat/android/database/table/HasSeenPostToOurStoryDialogTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
