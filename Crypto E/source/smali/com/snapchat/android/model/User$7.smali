.class Lcom/snapchat/android/model/User$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/model/User;->a([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/model/User;

.field final synthetic val$tablesToUpdate:[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;


# direct methods
.method constructor <init>(Lcom/snapchat/android/model/User;[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/snapchat/android/model/User$7;->this$0:Lcom/snapchat/android/model/User;

    iput-object p2, p0, Lcom/snapchat/android/model/User$7;->val$tablesToUpdate:[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/snapchat/android/model/User$7;->this$0:Lcom/snapchat/android/model/User;

    iget-object v1, p0, Lcom/snapchat/android/model/User$7;->val$tablesToUpdate:[Lcom/snapchat/android/database/table/DbTable$DatabaseTable;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/User;->b([Lcom/snapchat/android/database/table/DbTable$DatabaseTable;)V

    .line 1193
    return-void
.end method
