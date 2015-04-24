.class Lcom/snapchat/android/model/User$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/model/User;->P()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/model/User;


# direct methods
.method constructor <init>(Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/snapchat/android/model/User$6;->this$0:Lcom/snapchat/android/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1170
    invoke-static {}, Lcom/snapchat/android/model/User;->K()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1171
    :try_start_0
    invoke-static {}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->values()[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 1172
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->a()Lcom/snapchat/android/database/table/DbTable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/snapchat/android/database/table/DbTable;->m()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1173
    invoke-virtual {v4}, Lcom/snapchat/android/database/table/DbTable$DatabaseTable;->a()Lcom/snapchat/android/database/table/DbTable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/snapchat/android/database/table/DbTable;->l()V

    .line 1171
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1176
    :cond_1
    monitor-exit v1

    .line 1177
    return-void

    .line 1176
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
