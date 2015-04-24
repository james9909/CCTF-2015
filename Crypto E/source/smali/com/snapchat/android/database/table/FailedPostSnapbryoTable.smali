.class public Lcom/snapchat/android/database/table/FailedPostSnapbryoTable;
.super Lcom/snapchat/android/database/table/SnapbryoTable;
.source "SourceFile"


# static fields
.field private static a:Lcom/snapchat/android/database/table/FailedPostSnapbryoTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/snapchat/android/database/table/FailedPostSnapbryoTable;

    invoke-direct {v0}, Lcom/snapchat/android/database/table/FailedPostSnapbryoTable;-><init>()V

    sput-object v0, Lcom/snapchat/android/database/table/FailedPostSnapbryoTable;->a:Lcom/snapchat/android/database/table/FailedPostSnapbryoTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/snapchat/android/database/table/SnapbryoTable;-><init>()V

    return-void
.end method

.method public static b()Lcom/snapchat/android/database/table/FailedPostSnapbryoTable;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/snapchat/android/database/table/FailedPostSnapbryoTable;->a:Lcom/snapchat/android/database/table/FailedPostSnapbryoTable;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const-string v0, "FailedPostSnapbryoTable"

    return-object v0
.end method

.method public a(Lcom/snapchat/android/model/User;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v0

    invoke-virtual {p0, v1, v1}, Lcom/snapchat/android/database/table/FailedPostSnapbryoTable;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/model/SnapWomb;->a(Ljava/util/List;)V

    .line 31
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
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/snapchat/android/model/SnapWomb;->a()Lcom/snapchat/android/model/SnapWomb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/SnapWomb;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
