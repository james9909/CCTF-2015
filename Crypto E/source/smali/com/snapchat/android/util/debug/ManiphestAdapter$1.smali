.class Lcom/snapchat/android/util/debug/ManiphestAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/debug/ManiphestAdapter;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/io/File;

.field final synthetic g:[Ljava/io/File;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lcom/snapchat/android/util/debug/ManiphestAdapter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/debug/ManiphestAdapter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/snapchat/android/util/debug/ManiphestAdapter$1;->i:Lcom/snapchat/android/util/debug/ManiphestAdapter;

    iput-object p2, p0, Lcom/snapchat/android/util/debug/ManiphestAdapter$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/snapchat/android/util/debug/ManiphestAdapter$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/snapchat/android/util/debug/ManiphestAdapter$1;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/snapchat/android/util/debug/ManiphestAdapter$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/snapchat/android/util/debug/ManiphestAdapter$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/snapchat/android/util/debug/ManiphestAdapter$1;->f:Ljava/io/File;

    iput-object p8, p0, Lcom/snapchat/android/util/debug/ManiphestAdapter$1;->g:[Ljava/io/File;

    iput-object p9, p0, Lcom/snapchat/android/util/debug/ManiphestAdapter$1;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->v()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "android"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/util/debug/ManiphestAdapter$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/snapchat/android/util/debug/ManiphestAdapter$1;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/snapchat/android/util/debug/ManiphestAdapter$1;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "**BUG_DESCRIPTION**"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/util/debug/ManiphestAdapter$1;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "**STEPS_TO_REPRO**"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/util/debug/ManiphestAdapter$1;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "**ATTACHMENTS**"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v0, p0, Lcom/snapchat/android/util/debug/ManiphestAdapter$1;->f:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lcom/snapchat/android/api2/FileUploadTask;

    const-string v3, "https://basic-strata-577.appspot.com/maniphest/uploadImageFile?token=T2hTbmFwY2hhdFBsZWFzZUxldE1lQmVQYXJ0T2ZZb3VySVBPU3RvY2tTZWxsaW5n"

    iget-object v4, p0, Lcom/snapchat/android/util/debug/ManiphestAdapter$1;->f:Ljava/io/File;

    invoke-direct {v0, v3, v4}, Lcom/snapchat/android/api2/FileUploadTask;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/snapchat/android/api2/FileUploadTask;->k()Lcom/snapchat/android/api2/framework/NetworkResult;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Lcom/snapchat/android/api2/framework/NetworkResult;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/snapchat/android/util/debug/ManiphestAdapter$1;->g:[Ljava/io/File;

    array-length v4, v3

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_3

    aget-object v5, v3, v0

    .line 58
    new-instance v6, Lcom/snapchat/android/api2/FileUploadTask;

    const-string v7, "https://basic-strata-577.appspot.com/maniphest/uploadTextFile?token=T2hTbmFwY2hhdFBsZWFzZUxldE1lQmVQYXJ0T2ZZb3VySVBPU3RvY2tTZWxsaW5n"

    invoke-direct {v6, v7, v5}, Lcom/snapchat/android/api2/FileUploadTask;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v6}, Lcom/snapchat/android/api2/FileUploadTask;->k()Lcom/snapchat/android/api2/framework/NetworkResult;

    move-result-object v5

    .line 59
    if-eqz v5, :cond_2

    .line 60
    invoke-virtual {v5}, Lcom/snapchat/android/api2/framework/NetworkResult;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    :cond_1
    const-string v0, "ManiphestAdapter"

    const-string v3, "Oops. couldn\'t upload image to GCS for S2R"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_2
    const-string v5, "ManiphestAdapter"

    const-string v6, "Oops. couldn\'t upload a file to GCS for S2R"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 66
    :cond_3
    new-instance v0, Lcom/snapchat/android/util/debug/ManiphestAdapter$ManiphestCreationTask;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/snapchat/android/util/debug/ManiphestAdapter$ManiphestCreationTask;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/util/debug/ManiphestAdapter$ManiphestCreationTask;->k()Lcom/snapchat/android/api2/framework/NetworkResult;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_5

    .line 68
    const-string v2, "ManiphestAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Maniphest Ticket Creation Response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/snapchat/android/api2/framework/NetworkResult;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v1, p0, Lcom/snapchat/android/util/debug/ManiphestAdapter$1;->h:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 72
    new-instance v1, Lcom/snapchat/android/util/debug/ManiphestAdapter$RemoteLogRequestTask;

    iget-object v2, p0, Lcom/snapchat/android/util/debug/ManiphestAdapter$1;->h:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/framework/NetworkResult;->k()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/snapchat/android/util/debug/ManiphestAdapter$RemoteLogRequestTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/snapchat/android/util/debug/ManiphestAdapter$RemoteLogRequestTask;->k()Lcom/snapchat/android/api2/framework/NetworkResult;

    .line 78
    :cond_4
    :goto_3
    return-void

    .line 76
    :cond_5
    const-string v0, "ManiphestAdapter"

    const-string v2, "Oops. couldn\'t create maniphest ticket. maybe endpoint is down?"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/snapchat/android/Timber;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3
.end method
