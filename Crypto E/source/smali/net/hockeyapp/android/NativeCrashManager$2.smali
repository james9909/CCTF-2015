.class final Lnet/hockeyapp/android/NativeCrashManager$2;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/hockeyapp/android/NativeCrashManager;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/app/Activity;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lnet/hockeyapp/android/NativeCrashManager$2;->a:Ljava/lang/String;

    iput-object p2, p0, Lnet/hockeyapp/android/NativeCrashManager$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lnet/hockeyapp/android/NativeCrashManager$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lnet/hockeyapp/android/NativeCrashManager$2;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 145
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 146
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://rink.hockeyapp.net/api/2/apps/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lnet/hockeyapp/android/NativeCrashManager$2;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/crashes/upload"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 149
    new-instance v2, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v2}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 151
    new-instance v3, Ljava/io/File;

    sget-object v4, Lnet/hockeyapp/android/Constants;->a:Ljava/lang/String;

    iget-object v5, p0, Lnet/hockeyapp/android/NativeCrashManager$2;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v4, "log"

    new-instance v5, Lorg/apache/http/entity/mime/content/FileBody;

    invoke-direct {v5, v3}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 154
    new-instance v3, Ljava/io/File;

    sget-object v4, Lnet/hockeyapp/android/Constants;->a:Ljava/lang/String;

    iget-object v5, p0, Lnet/hockeyapp/android/NativeCrashManager$2;->c:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    new-instance v4, Lorg/apache/http/entity/mime/content/FileBody;

    invoke-direct {v4, v3}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;)V

    .line 156
    invoke-virtual {v4}, Lorg/apache/http/entity/mime/content/FileBody;->getContentLength()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_0

    .line 173
    iget-object v0, p0, Lnet/hockeyapp/android/NativeCrashManager$2;->d:Landroid/app/Activity;

    iget-object v1, p0, Lnet/hockeyapp/android/NativeCrashManager$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    .line 174
    iget-object v0, p0, Lnet/hockeyapp/android/NativeCrashManager$2;->d:Landroid/app/Activity;

    iget-object v1, p0, Lnet/hockeyapp/android/NativeCrashManager$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    .line 176
    :goto_0
    return-void

    .line 160
    :cond_0
    :try_start_1
    const-string v3, "attachment0"

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 162
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    const-string v3, "userId"

    new-instance v4, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 164
    const-string v3, "contact"

    new-instance v4, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->v()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    invoke-virtual {v2, v3, v4}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 167
    :cond_1
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 169
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 173
    iget-object v0, p0, Lnet/hockeyapp/android/NativeCrashManager$2;->d:Landroid/app/Activity;

    iget-object v1, p0, Lnet/hockeyapp/android/NativeCrashManager$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    .line 174
    iget-object v0, p0, Lnet/hockeyapp/android/NativeCrashManager$2;->d:Landroid/app/Activity;

    iget-object v1, p0, Lnet/hockeyapp/android/NativeCrashManager$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    :try_start_2
    const-string v1, "NativeCrashManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to upload crashes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/snapchat/android/Timber;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    iget-object v0, p0, Lnet/hockeyapp/android/NativeCrashManager$2;->d:Landroid/app/Activity;

    iget-object v1, p0, Lnet/hockeyapp/android/NativeCrashManager$2;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    .line 174
    iget-object v0, p0, Lnet/hockeyapp/android/NativeCrashManager$2;->d:Landroid/app/Activity;

    iget-object v1, p0, Lnet/hockeyapp/android/NativeCrashManager$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lnet/hockeyapp/android/NativeCrashManager$2;->d:Landroid/app/Activity;

    iget-object v2, p0, Lnet/hockeyapp/android/NativeCrashManager$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    .line 174
    iget-object v1, p0, Lnet/hockeyapp/android/NativeCrashManager$2;->d:Landroid/app/Activity;

    iget-object v2, p0, Lnet/hockeyapp/android/NativeCrashManager$2;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->deleteFile(Ljava/lang/String;)Z

    throw v0
.end method
